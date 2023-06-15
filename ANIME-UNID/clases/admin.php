<?php

class ConexionDB {
    private $servername = "localhost";
    private $username = "root";
    private $password = "";
    private $dbname = "anime";
    private $conn;

    public function __construct() {
        $this->conn = new mysqli($this->servername, $this->username, $this->password, $this->dbname);

        if ($this->conn->connect_error) {
            die("Error de conexión: " . $this->conn->connect_error);
        }
    }

    public function iniciarSesion() {
        session_start();

        if ($_SERVER["REQUEST_METHOD"] == "POST") {
            $usuario = $_POST["email"];
            $contrasena = $_POST["password"];

            $query = "SELECT * FROM usuarios WHERE correo = '$usuario' AND contrasena = '$contrasena'";
            $result = $this->conn->query($query);

            if ($result->num_rows == 1) {
                $_SESSION["usuarios"] = $usuario;
                echo "Inicio de sesión exitoso. $usuario!";
            } else {
                echo "Usuario o contraseña incorrectos.";
            }
        }
        
        $this->conn->close();
    }
}

$conexion = new ConexionDB();
$conexion->iniciarSesion();

?>





