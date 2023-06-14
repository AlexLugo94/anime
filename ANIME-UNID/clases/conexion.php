<?php 
$host = "localhost";
$user = "root";
$password = "";
$db = "anime";

$conn = new mysqli($host, $user, $password, $db);

if($conn->connect_error){
die("Fallo la conexion a la base de datos, el error es:
" . $conn->connect_error);
}

