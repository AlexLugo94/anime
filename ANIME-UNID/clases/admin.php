<?php

session_start(); 

$servername = "localhost";
$username = "root";
$password = "";
$dbname = "anime";

$conn = new mysqli($servername, $username, $password, $dbname);

if ($_SERVER["REQUEST_METHOD"] == "POST") {
    $usuario = $_POST["usuarios"];
    $contrasena = $_POST["contrasena"];

    
    if ($conn->connect_error) {
        die("Error de conexión: " . $conn->connect_error);
    }

    $query = "SELECT * FROM usuarios WHERE correo = '$usuario' AND contrasena = '$contrasena'";
    $result = $conn->query($query);

    if ($result->num_rows == 1) {
        $_SESSION["usuarios"] = $usuario;
        echo "Inicio de sesión exitoso.  $usuario!";
    } else {
        echo "Usuario o contraseña incorrectos.";
    }

    $conn->close();
}

?>