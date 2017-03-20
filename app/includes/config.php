<?php
//Error reporting
error_reporting(E_ALL);
error_reporting(E_ALL ^ E_NOTICE);
error_reporting( 1 );
//set the timezone
ini_set('date.timezone', 'Europe/London');

$db_host_servr = 'localhost'; //server host
$db_name = 'portfolio'; //database name
$db_usernme = ''; //database username
$db_passwrd = ''; //database password

try
{
	$pdo = new PDO('mysql:host='.$db_host_servr.';dbname='.$db_name.'', ''.$db_usernme.'', ''.$db_passwrd.'');
	$pdo->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
	$pdo->exec('SET NAMES "utf8"');
}
catch (PDOException $e)
{
	$output = 'Unable to connect to the database server: ' . $e->getMessage();
	echo $output;
	exit();
}

?>