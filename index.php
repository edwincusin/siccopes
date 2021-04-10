<!DOCTYPE html>
<html lang="en">

<head>
    <?php include 'head_insertar.php';?>    
    <title>Acceso</title>
</head>

<body id="body_log">
    <form action="" method="post" id="form_log" class="animate__animated animate__backInLeft">
        <div >
            <!-- // comentario div imagen url desde css -->
            <img src="./img/LogoEsfoguar.png" alt="" id="img_log">
            <a href="https://www.esfoguar.com/esfoguar/index.php">www.esfoguar.com</a>

        </div>

        <div id="separador_log" >
            <h1 class="animate__animated animate__backInLeft">Iniciar sesión</h1>
            <h2>Siccopes</h2>
            <p><img src="./img/icono_login.png" alt="" id="img_login_icono"></p>            
            <p>&#128102 <input type="text" placeholder="&#128100; Ingrese cédula" name="usuario"  maxlength="10">  </p>            
            <p>&#128274 <input type="password" placeholder="&#128274; Ingrese contraseña" name="contraseña"  maxlength="20"> </p>
            <p>
                <input type="submit" value="&#128272; Entrar" >      
                <input type="submit" value="&#128273 ¿Olvidó su contraseña?" >
            </p>
           

        </div>
    </form>
</body>

</html>