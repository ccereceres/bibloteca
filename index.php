<!-- To Do 
    Comprobar registro unico en la bd
    Hacer pagina de visualizacion
    css
-->

<?php include("includes/db.php"); ?>
<!-- Html -->
<?php
    //Usuario logeado
    if(isset($_SESSION['email'])){
        include("includes/header.php");?>
            <nav class="navbar">
                <!-- Logo -->
                <div class="logo">Bienvenido <?php echo $_SESSION['name'] ?></div>
                <!-- Menus -->
                <div class="menus">
                    <ul>
                        <div class="buscar-container">
                            <form action="buscar.php" method="GET">
                                <input type="text" placeholder="Buscar" name="search_query">
                                <button type="submit">Buscar</button>
                            </form>
                        </div>
                        <?php if($_SESSION['userType'] == 1){ ?>
                            <li><a href="admin_panel.php">Admin Panel</a></li>
                        <?php } ?>
                        <li><a href="#">Inicio</a></li>
                        <li><a href="logout.php">Logout</a></li>
                    </ul>
                </div>
            </nav>
            <?php
                if(isset($_SESSION['err_msg'])){?>
                <div class="err_msg">
                    <span class="closebtn" onclick="this.parentElement.style.display='none';">&times;</span>
                    <?php echo $_SESSION['err_msg'];
                          unset($_SESSION['err_msg']);?>
                </div>
                <?php }
            ?>
            <!-- Contenido -->
            <div class="contenido">
                <table class="tabla">
                    <thead>
                        <th>Tema</th>
                        <th>Autores</th>
                        <th>fecha</th>
                        <th>Numero de paginas</th>
                        <th>Carrera</th>
                        <th>Acciones</th>
                    </thead>
                    <tbody>
                    <?php
                        $query = "SELECT * FROM residencias JOIN carrera ON (residencias.carrera_id = carrera.id)";
                        $result_task = mysqli_query($conn, $query);

                        while($row = mysqli_fetch_array($result_task)){ ?>
                            <tr>
                                <td><a href="https://drive.google.com/file/d/<?php echo $row['link'] ?>/view" target="_blank"><?php echo $row['tema'] ?></a></td>
                                <td>
                                    <?php 
                                        $autores = $row['idResidencia'];
                                        $autoresSanitized = mysqli_real_escape_string($conn, $autores);
                                        $bdaut = "SELECT * FROM residencias JOIN autor ON(residencias.idResidencia = autor.residencias_id) where residencias.idResidencia = $autoresSanitized";
                                        $resul = mysqli_query($conn, $bdaut);
                                        while($rowAutor = mysqli_fetch_array($resul)){
                                            echo $rowAutor['nombre']." ".$rowAutor['apellido']."<br><br>";
                                        }
                                    ?>
                                </td>
                                <td><?php echo $row['fecha'] ?></td>
                                <td><?php echo $row['numPaginas'] ?></td>
                                <td><?php echo $row['nombre'] ?></td>
                                <td>
                                    <a href="https://drive.google.com/file/d/<?php echo $row['link'] ?>/view" target="_blank">Ver</a>
                                    <a href="https://drive.google.com/uc?export=download&id=<?php echo $row['link'] ?>" target="_blank">Descargar</a>
                                </td>
                            </tr>
                        <?php } ?>
                    </tbody>
                </table>
            </div>
        <?php include("includes/footer.php");
    //Usuario no logeado
    }else{
        include("includes/header.php");?>
        <nav class="navbar">
            <!-- Logo -->
            <div class="logo">Bienvenido</div>
            <!-- Menus -->
            <div class="menus">
                <ul>
                    <li><a href="login.php">Login</a></li>
                    <li><a href="register.php">Registrar</a></li>
                </ul>
            </div>
        </nav>
        <?php
                if(isset($_SESSION['err_msg'])){?>
                <div class="err_msg">
                    <span class="closebtn" onclick="this.parentElement.style.display='none';">&times;</span>
                    <?php echo $_SESSION['err_msg'];
                          unset($_SESSION['err_msg']);?>
                </div>
                <?php }
            ?>
        <div class="container_ppal">
            <div class="img1">
                <div class="texto"><span class="bordes">Instituto Tecnologico de Parral</span></div>
            </div>
            <div class="about">
                <div class="textoAcerca">
                    <h2><b>Acerca del Instituto Tecnologico de Parral</b></h2><br>
                    <p>
                        El instituto de parral tiene la mision de formar profesionales de clase mundial, 
                        con profundo sentido humano y conocimientos científicos y tecnológicos de vanguardia, 
                        con principios y valores, capaces de contribuir a la transformación armónica de una 
                        sociedad más justa y más humana
                    </p><br>
                    <p>
                        Ser una institución de educación superior de excelencia, sustentada en la superación y 
                        el compromiso de las personas, así como en la calidad del proceso educativo.
                    </p>
                </div>
                
            </div>
            <div class="img2">
                <div class="texto"><span class="bordes">Creador de la pagina</span></div>
            </div>
            <div class="about">
                <div class="textoAcerca">
                    <h2>Carlos Eduardo Cereceres Holguín - 19410258</h2>
                </div>
            </div>
        </div>
    <?php include("includes/footer.php");
    } ?>
