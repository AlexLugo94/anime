<?php
class Video extends mysqli {
    
    public function __construct($host, $usuario, $pass, $bd)
    {
        parent ::__construct($host, $usuario, $pass, $bd);
    }
    public function get_videos(){
        $consulta = "SELECT * FROM video";
        $query = $this->query($consulta);
        return $query;
    }
    public function search($texto){
        $consulta = "SELECT * FROM video WHERE titulo like '%$texto%'";
        $query = $this->query($consulta);
        return $query;
    }

}
?>
<?php
class Lista extends mysqli {
    
    public function __construct($host, $usuario, $pass, $bd)
    {
        parent ::__construct($host, $usuario, $pass, $bd);
    }
    public function get_listas(){
        $consulta = "SELECT * FROM listas";
        $query = $this->query($consulta);
        return $query;
    }
    public function search($text){
        $consulta = "SELECT * FROM listas WHERE nombre like '%$text%'";
        $query = $this->query($consulta);
        return $query;
    }

}


?>