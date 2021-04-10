<!DOCTYPE html>
<html lang="en">

<head>
    <?php include 'head_insertar.php';?>
    <title>Inicio</title>
</head>

<body class="body_menu">
    <div class="contenedor_menu_main">
        <!--menu inicio   + cabecera logos-->                
        <?php           
             include './menu_insertar.php';
         ?>     
         <!-- fin menu + cabecera logos-->
        <!-- inicio contenedor de controles -->
        <div id="sub_cabecera_titulo">
            <h2>Control Usuario</h2>
        </div>

        <div class="contenedor_controles">

            <div id="ctrl_buscar">
                <table>
                    <tr>
                        <td> <label for=""><span>N° Cédula:</span></label> </td>
                        <td> <input type="text" size="10" maxlength="10" placeholder="Ingrese cédula"> </td>
                        <td> <input type="submit" value="&#128270; Buscar"> </td>
                    </tr>
                </table>
            </div>

            <div class="cont_datos_personales">
                <fieldset  > <legend>Datos usuario</legend>

                    <table>
                        <tr>
                            <td> <label for=""><span>N° Cédula:</span></label> </td>
                            <td> <input type="text" size="10" maxlength="10" placeholder="Cédula"> </td>
                            <td> <label for=""><span>Apellido paterno:</span></label> </td>
                            <td> <input type="text" size="17" maxlength="18" placeholder="Primer apellido"> </td>
                            <td> <label for=""><span>Primer nombre:</span></label> </td>
                            <td> <input type="text" size="17" maxlength="18" placeholder="Primer nombre"> </td>  
                            <td> <label for=""><span>Sexo:</span></label> </td>
                            <td>
                                <select name="" id="">
                                    <option disabled selected value="">Seleccionar</option>
                            
                                </select>
                            </td>
                        </tr>

                        <tr>
                            <td> <label for=""><span>Cargo:&emsp; &emsp;&emsp;&emsp; &nbsp;</span></label> </td>
                            <td>
                                <select name="" id="">
                                    <option disabled selected value="">Seleccionar</option>
                                </select>
                                &emsp;&emsp;
                            </td>
                            <td> <label for=""><span> Fecha registro:</span></label> </td>
                        <td> <input type="date" min="1961-12-31" max="2003-12-31"> &emsp;&emsp; </td>
                                                        
                            <td> <label for=""><span>Email @:</span></label> </td>
                            <td colspan="2"> <input type="text" size="36" maxlength="39" placeholder="ejemplo18@email.com"> </td>     
                        
                        
                        </tr>
                                                    

                    </table>
                    
                        
               </fieldset>

               <fieldset> <legend>Rol</legend>
                <table>
                    <tr>
                        <td> <label for=""><span>Estado:</span></label> </td>
                        <td>
                            <select name="" id="">
                                <option disabled selected value="">Seleccionar</option>
                            </select>
                            &emsp;&emsp;
                        </td>       
                        
                        <td> <label for=""><span>Tipo de usuario:</span></label> </td>
                        <td>
                            <select name="" id="">
                                <option disabled selected value="">Seleccionar</option>
                            </select>
                            &emsp;&emsp;
                        </td> 
                                                               
                    </tr>
                                  
                </table>
               </fieldset>

               <input type="submit" value="&#10004; Guardar">
               <input type="submit" value="&#128221; Modificar cambios">
            </div>


        </div>




        <!-- fin contenedor de controles -->
        <br>
    </div>
    <?php
        include './footer_insertar.php';
    ?> 

</body>

</html>