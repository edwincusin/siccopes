<!DOCTYPE html>
<html lang="en">

<head>
    <?php include 'head_insertar.php';?>    
    <title>Inicio</title>
</head>

<body class="body_menu">
    <div class="contenedor_menu_main">
        <div class="cabecera_menu">
            <!--menu inicio   + cabecera logos-->                
        <?php           
             include './menu_insertar.php';
         ?>     
         <!-- fin menu + cabecera logos-->

        <!-- inicio contenedor de controles -->
        <div id="sub_cabecera_titulo">
            <h2>Control Personal Operativo</h2>
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
                <fieldset  > <legend>Datos personales</legend>

                    <table>
                        <tr>
                            <td> <label for=""><span>N° Cédula:</span></label> </td>
                            <td> <input type="text" size="10" maxlength="10" placeholder="Cédula"> </td>
                            <td> <label for=""><span>Apellido paterno:</span></label> </td>
                            <td> <input type="text" size="17" maxlength="18" placeholder="Primer apellido"> </td>
                            <td> <label for=""><span> Apellido materno:</span></label> </td>
                            <td> <input type="text" size="17" maxlength="18" placeholder="Segundo apellido"> </td>

                        </tr>

                        <tr>
                            <td> <label for=""><span>Primer nombre:</span></label> </td>
                            <td> <input type="text" size="17" maxlength="18" placeholder="Primer nombre"> </td>
                            <td> <label for=""><span>Segundo nombre:</span></label> </td>
                            <td> <input type="text" size="17" maxlength="18" placeholder="Segundo nombre"> </td>
                            <td> <label for=""><span> Fecha Nac.:</span></label> </td>
                            <td> <input type="date" min="1961-12-31" max="2003-12-31"> </td>

                           
                           

                        </tr>

                        <tr>
                            <td> <label for=""><span>Sexo:</span></label> </td>
                            <td>
                                <select name="" id="">
                                    <option disabled selected value="">Seleccionar</option>
                            
                                </select>
                            </td>
                            <td> <label for=""><span>Estado civil:</span></label> </td>
                            <td>
                                <select name="" id="">
                                    <option disabled selected value="">Seleccionar</option>
                            
                                </select>
                            </td>
                            <td> <label for=""><span>Nacionalidad:</span></label> </td>
                            <td>
                                <select name="" id="">
                                    <option disabled selected value="">Seleccionar</option>
                            
                                </select>
                            </td>
                        </tr>

                        <tr>
                            <td> <label for=""><span>Instrucción:</span></label> </td>
                            <td>
                                <select name="" id="">
                                    <option disabled selected value="">Seleccionar</option>
                        
                                </select>
                            </td>
                            <td> <label for=""><span>Profesión:</span></label> </td>
                            <td> <input type="text" size="17" maxlength="18" placeholder="Profesión / Ocupación"> </td>
                            <td> <label for=""><span>Tipo Sangre:</span></label> </td>
                            <td>
                                <select name="" id="">
                                    <option disabled selected value="">Seleccionar</option>
                        
                                </select>
                            </td>
                        
                        
                        </tr>
                        <tr>
                            <td> <label for=""><span>Licencia de Cond.:</span></label> </td>
                            <td>
                                <select name="" id="">
                                    <option disabled selected value="">Seleccionar</option>
                                </select>
                            </td>
                            <td> <label for=""><span>Dispone vehículo:</span></label> </td>
                            <td>
                                <select name="" id="">
                                    <option disabled selected value="">Seleccionar</option>
                                </select>
                            </td>
                            <td> <label for=""><span>N° Celular:</span></label> </td>
                            <td> <input type="text" size="17" maxlength="10" placeholder="Número de celular"> </td>
                        
                        
                        </tr>
                            <tr>
                                <td> <label for=""><span>N° Telefono / cell:</span></label> </td>
                                <td> <input type="text" size="17" maxlength="10" placeholder="Celular o telefono"> </td>
                                <td> <label for=""><span>Email @:</span></label> </td>
                                <td colspan="2"> <input type="text" size="36" maxlength="39" placeholder="ejemplo18@email.com"> </td>         
                                
                            </tr>
                            <tr>
                                <td> <label for=""><span>Dirección domicilio:</span></label> </td>   
                                <td colspan="7"> <input type="text" size="60" maxlength="39" placeholder="ejemplo: QUITO / OCCIDENTE / LAS CASAS / PRIMAVERA"> </td>         
                            </tr>

                    </table>
                    

                    <!--colocar contendor foto-->

                     <!--foto columna combinada en celdas-->
                     <td rowspan="4">
                        <div id="fotoop">
                         <img src="./img/icono_login.png" alt="" > 
                         <br>
                         <input type="submit" value="Subir">

                    </div>
                    </td>

                        
               </fieldset>

               <fieldset> <legend>Relación laboral</legend>
                <table id="rel_lab">
                    <tr>
                        <td> <label for=""><span>Estado:</span></label> </td>
                        <td>
                            <select name="" id="">
                                <option disabled selected value="">Seleccionar</option>
                            </select>
                            &emsp;&emsp;
                        </td>
                        <td> <label for=""><span>Cargo:&emsp; &emsp;&emsp;&emsp; &nbsp;</span></label> </td>
                        <td>
                            <select name="" id="">
                                <option disabled selected value="">Seleccionar</option>
                            </select>
                            &emsp;&emsp;
                        </td>
                        <td> <label for=""><span> Fecha ingreso:</span></label> </td>
                        <td> <input type="date" min="1961-12-31" max="2003-12-31"> &emsp;&emsp; </td>
                        
                        <td> <label for=""><span> Fecha Salida:</span></label> </td>
                        <td> <input type="date" min="1961-12-31" max="2003-12-31"> </td>                        
                    </tr>
                    <tr>
                        <td> <label for=""><span> Descripcion extra:</span></label> </td>
                        <td colspan="7"> <textarea name="" id="" cols="70" rows="4" maxlength="150" placeholder="Escriba aqui una descripción de salida / campo no obligatorio"></textarea> </td>
                    </tr>                
                </table>
               </fieldset>

               <input type="submit" value="&#10004; Guardar">
               <input type="submit" value="&#128221; Modificar Cambios">
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