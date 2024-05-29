<?php
include ('db_conexion.php');

$name = $_POST['name'];
$alias = $_POST['alias'];
$rut = $_POST['rut'];
$email = $_POST['email'];
$region = $_POST['region'];
$comuna = $_POST['comuna'];
$candidato = $_POST['candidato'];
$options = implode(', ', $_POST['options']);

$sql = "INSERT INTO votaciones (name, alias, rut, email, region, comuna, candidato, options)
VALUES ('$name', '$alias', '$rut', '$email', '$region', '$comuna', '$candidato', '$options')";

try {
    if ($_conn->query($sql) === TRUE) {
        echo "Registro guardado exitosamente";
    }
} catch (mysqli_sql_exception $e) {
    if ($e->getCode() == 1062) {
        echo "Error: El registro ya existe en la base de datos";
    } else {
        echo "Error: Ocurrió un problema al guardar el registro. Detalles: " . $e->getMessage();
    }
}

$_conn->close();
?>
