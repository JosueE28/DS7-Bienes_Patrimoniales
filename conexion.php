<?php

$user = 'root';
$host = 'localhost';
$database = 'proyecto_db';
$password = '';

$est = mysqli_connect($host, $user,  $password, $database);

if ($est->connect_errno) {
    die(utf8_decode("Fallo la conexión a MySQL: " . $est->connect_errno . " " . mysqli_connect_error()));
   
} else{
   echo'';
}

ini_set('display_errors', 1);
ini_set('display_startup_errors', 1);
error_reporting(E_ALL);
?>