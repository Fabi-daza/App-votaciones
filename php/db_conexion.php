<?php
$servername = "localhost";
$username = "root";
$password = "";
$database = "app_votaciones";

$_conn = mysqli_connect($servername, $username, $password, $database);

if (!$_conn) {
    die("Conexión fallida: " . mysqli_connect_error());
}
?>
