<?php 
    session_start();


if(isset($_SESSION['email'])){
    //   Usuario SI esta logeado
    header("Location: index.php");
} else { ?>
    <!-- Usuario NO esta logeado -->
    <!DOCTYPE html>
    <html lang="es">
    <head>
        <meta charset="UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Login</title>
        <link rel="stylesheet" href="estilos/login.css">
    </head>
    <body>
        
            <?php
                if(isset($_SESSION['err_msg'])){?>
                <div class="err_msg">
                    <span class="closebtn" onclick="this.parentElement.style.display='none';">&times;</span>
                    <?php echo $_SESSION['err_msg'];
                          unset($_SESSION['err_msg']);?>
                </div>
                <?php }
            ?>
        
        <div class="contenedor">
            <div class="form_contenedor">
                <div class="form_cuerpo">
                    <h2 class="titulo">Inicia sesion</h2>
                    <form action="validar.php" method="POST" class="formulario">
                        <label for="email">Email</label>
                        <input type="email" name="email" id="email" placeholder="Email"><br>
                        <label for="password">Contraseña</label>
                        <input type="password" name="password" id="password" placeholder="Contraseña"><br>
                        <input type="submit" value="Login" name="login_user">
                    </form>
                </div>
                <div class="form_pie">
                    <div>
                        <span>¿No estas registrado? </span><a href="register.php">Registrate!</a>
                    </div>
                </div>
            </div>
        </div>
    </body>
    </html>
<?php } ?>