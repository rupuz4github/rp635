#!/usr/bin/php
<?php

require_once("SSN.inc");
$action = NULL;
for ($i = 1;$i < $argc;$i++)
{
	switch($argv[$i])
	{
		case "--auth":
			$action = "auth";
			break;
		case "-u":
			$username = $argv[$i + 1];
			$i++;
			break;
		case "-p":
			$PASSWORD = $argv[$i + 1];
			$i++;
			break;
	}
}
switch ($action)
{
	case "auth":
		if (!isset($username))
		{
			echo "please provide a username with -u <username>".PHP_EOL;
			exit(1);
		}
		if (!isset($PASSWORD))
		{
			echo "please provide a password with -p <username>".PHP_EOL;
			exit(1);
		}
		$SSN = new SSNAccess("SSN");
		if ($SSN->validateUser($username,$PASSWORD) == false)
		{
			echo "login failed!".PHP_EOL;
		}
		else
		{
			echo "login successful".PHP_EOL;
		}
		break;
	default:
		echo "No action specified, exiting".PHP_EOL;
		exit (1);

}



echo $argv[0]." complete".PHP_EOL;
?>

