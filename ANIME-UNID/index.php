<!DOCTYPE html>
<html lang="es-MX">
<head>
  <meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <link rel="stylesheet" href="css/styles.css">
  <title>🚀 AnimeC</title>
</head>
<body>
  <header>
    <div class="header">
      <div class="logo">🚀 AnimeC</div>
      <nav>
        <ul>
          <li><a href="#">Inicio</a></li>
          <li><a href="directorio.php">Directorio Anime</a></li>
        </ul>
        <div id="search">
        <form action="index.php" method="POST">
                        <input type="text" placeholder="Buscar..." name="texto">
                        <input type="submit" name="search" value="🔍">
                    </form>
        </div>
        <a href="login.php" class="login">🥷🏽 Login</a>
        

      </nav>
    </div>
  </header>
  <section id="main">
    <h2>Últimos episodios</h2>
    <div class="episodes">
        <?php 
        require_once 'clases/videos.php';
                $videos = new Video("localhost", "root", "", "anime");

            $result = (isset($_POST['search'])) ? 
            $videos->search($_POST['texto']) :
            $videos->get_videos();

        while ($row = $result->fetch_array()){
          ?>
          <div class="episode">
        <p class="icon">►</p>
        <img src="<?php echo $row['thumbnail']; ?>"
         alt="">
        <div class="episode_description">
          <p class="episode_number">Episodio <?php echo $row['episodio']; ?></p>
          <h3 class="episode_title"><?php echo $row['titulo']; ?></h3>
        </div>
      </div>
          <?php  
        }
        ?>  

        
    </div>
    </div>

    

    <div id="result">
        <?php
        require_once 'clases/conexion.php';
        $consulta = "SELECT * FROM anime";
        $filtre = "";
        $search = (isset($_GET['search'])) ? $_GET['search'] : "";
        if (isset($search) &&  strlen ($search) > 3){
            $filter = "WHERE nombre LIKE '%$search%'";
            $consulta = $consulta . $filter;
        }
        $results = mysqli_query($conn, $consulta);
        while ($row = mysqli_fetch_array($results)) {
            ?>
            <div class="item">
                <h2><?php echo $row['titulo']; ?></h2>
                <h3><?php echo $row['episodio']; ?></h3>
                <p><?php echo $row['fecha_publicacion']; ?></p>

            </div>
            <?php 
        }
        ?>

    </div>
    </section>
    
    
</body>
</html>