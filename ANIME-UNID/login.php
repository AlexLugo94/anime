<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="styles/style.css">
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-Zenh87qX5JnK2Jl0vWa8Ck2rdkQ2Bzep5IDxbcnCeuOxjzrPF/et3URy9Bv1WTRi" crossorigin="anonymous">
<link rel="stylesheet" href="css/admin.css">
    <link href="https://fonts.googleapis.com/css2?family=Roboto:wght@400;700&display=swap" rel="stylesheet">
    <link href='https://unpkg.com/boxicons@2.1.1/css/boxicons.min.css' rel='stylesheet'>
    <title>Bienvenido a mi Formulario</title>
</head>

<body>
 
        <form class="formulario" action="clases/admin.php" method="POST">
            <h2 class="create-account">Iniciar Sesion</h2>
           
            <input type="email" placeholder="Email" name="email">
            <input type="password" placeholder="Contraseña" name="password">
            <input type="submit" type="btn btn-primary" value="Login">
           
        </form>
   
    <br>
    <br>
    <div class="container-form sign-in">
        
        <div class="welcome-back">
            <div class="message">
                <h2>¿Aun no tienes una cuenta?</h2>
                <p>Si aun no tienes una cuenta por favor registrese aqui</p>
                <button class="sign-in-btn">Registrarse</button>
            </div>
            <div class="welcome-back2">
                <div class="message">
                    <h2>Recuperar contraseña</h2>
                    <p>Si la olvidaste ingresa una nueva aqui</p>
                    <button class="sign-in-btn">Recuperar contraseña</button>
                </div>
        </div>
    </div>
    </div>

    <script src="script.js"></script>
</body>

</html