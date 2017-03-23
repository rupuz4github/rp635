<?php

class SSNAccess
{
private $db;

public function __construct($database)
{
	$this->db = new mysqli("localhost","rpeter","12345",$database);
	if ($this->db->connect_errno != 0)
	{
		echo "error connecting to databse: ".$this->db->connect_error.PHP_EOL;
		exit();
	}
}

public function __destruct()
{
	if (isset($this->db))
	{
		$this->db->close();
	}
}

public function getCitizensRecords()
{
	$query = "select * from CITIZENS;";

	$queryResponse = $this->db->query($query);
	$response = array();
	while($row = $queryResponse->fetch_assoc())
	{
		$response[] = $row;
	}
	return $response;
}

public function reportCitizens($sx)
{
	$query = "select * from 'CITIZENS' where SEX = $sx;";
	
	$queryResponse = $this->db->query($query);
	$response = array();
	while($row = $queryResponse->fetch_assoc())
	{
		$response[] = $row;
	}
	return $response;
}

public function validateCitizens($sid)
{
	$query = "Select SSID,LastName,FirstName,DOB from 'CITIZENS' where SSID = $sid;";
	
	$quearyResponse = $this->db->query($query);
	$response = array();
	while($row = $queryResponse->fetch_assoc())
	{
		$response[] = $row; 
	}
	return $response;
}
public function setCitizensDeceased($sid)
{
	$query = "UPDATE STATUS = 'DEACESED' where SSID = $sid;";

	$queryResponse = $this->db->query($query);
	$response = array();
	while($row = $queryResponse->fetch_assoc())
	{
		$response[] = $row;
	}
	return $response;
}

public function addCitizensRecord($SSID,$LastName,$FirstName,$DOB,$SEX,$POB,$STATUS,$PASSWORD,$PERMISSION,$username)
{
	$id = $this->db->real_escape_string($SSID);
	$ln = $this->db->real_escape_string($LastName);
	$fn = $this->db->real_escape_string($FirstName);
	$ob = $this->db->real_escape_string($DOB);
	$sx = $this->db->real_escape_string($SEX);
	$pb = $this->db->real_escape_string($POB);
	$st = $this->db->real_escape_string($STATUS);
	$pw = $this->db->real_escape_string($PASSWORD);
	$pm = $this->db->real_escape_string($PERMISSION);
	$un = $this->db->real_escape_string($username);
	echo "before escape:\n\"$LastName\"\n";
	echo "after escape:\n$ln\n";
	$query = "insert into CITIZENS(SSID,LastName,FirstName,DOB,SEX,POB,STATUS,PASSWORD,PERMISSION,username) VALUES ('$id','$ln','$fn','$ob', '$sx', '$pb', ''$st', '$pw', '$pm', '$un');";

	echo "executing SQL statement:\n".$query."\n";
	if (!$this->db->query($query))
	{
		echo "failed to insert record for $LastName".PHP_EOL;
	}
}

public function validateUser($username,$PASSWORD)
{
	$un = $this->db->real_escape_string($username);
	$pw = $this->db->real_escape_string($PASSWORD);

	$query = "select * from CITIZENS where username = '$un';";
	$result = $this->db->query($query);

	while ($row = $result->fetch_assoc())
	{
		if ($row["PASSWORD"] == $pw)
		{
			// I have a match
			return true;
		}
	}
	return false;
}

}
?>


