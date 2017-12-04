<%-- 
    Document   : mostrar
    Created on : 20/11/2017, 04:53:58 PM
    Author     : andreaml
--%>
<%@page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!doctype html>
<html lang="es">
    <head>
        <title>Mesa de ayuda UdeC</title>
        <!-- Required meta tags -->
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
        <link rel="shortcut icon" href="<c:url value='/images/favicon.ico' />" type="image/x-icon">
        <link rel="icon" href="<c:url value='/images/favicon.ico' />" type="image/x-icon">

        <!-- Bootstrap CSS -->
        <link rel="stylesheet"  href="<c:url value='/css/font-awesome.css' />">
        <link rel="stylesheet"  href="<c:url value='/css/bootstrap.css' />">
        <link rel="stylesheet"  href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datetimepicker/4.17.47/css/bootstrap-datetimepicker-standalone.min.css">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datetimepicker/4.17.47/css/bootstrap-datetimepicker-standalone.min.css.map">
        <link rel="stylesheet"  href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datetimepicker/4.17.47/css/bootstrap-datetimepicker.min.css">
        <link rel="stylesheet"  href="<c:url value='/css/style.css' />">
        <link rel="stylesheet"  href="<c:url value='/css/normalize.css' />">
        
    </head>
    
    <body>
        <!-- Encabezado -->
        <header>  
            <div class="container-fluid bg-dark"> 
                <nav class="navbar navbar-dark bg-dark ml-md-5">
                    <a class="navbar-brand" href="index.html">
                        <img src="<c:url value='/images/logo.png' />" class="image-fluid" width="320px" alt="logo-udec">
                    </a>
                </nav>
            </div>
        </header>
        <!-- Fin de encabezado -->

        <!--Inicio encabezado 2  -->
        <div class="container-fluid d-flex flex-column mt-2 col-12 align-items-center ">
            <div class="row col-12 px-0 ">
                <div class=" col-12 col-md-8 px-0"><h1 class="display-5">Mesa de ayuda UdeC</h1></div>
                <div class="col-5 col-md-4 px-0 align-self-md-center d-md-flex justify-content-md-start justify-content-md-end px-md-0 ">
                    <a href="" class="btn btn-info">Iniciar sesión</a>
                </div> 
        
                <!-- Barra de menu -->
                <div class="col-7 col-md-12 px-0 mt-lg-3">
                    <nav class=" container nav navbar mr-0 mx-lg-auto pt-0 px-0 navbar-expand-lg navbar-light ">
                        <button class="navbar-toggler align-self-center ml-auto" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                            <span class="navbar-toggler-icon"></span>
                        </button>
                      
                        <div class="collapse navbar-collapse " id="navbarSupportedContent">
                            <a class="nav-dependencia nav-link text-dark p-3 px-4 px-md-5 selected mr-1" href="<c:url value='/atencion-usuarios' />">Inicio</a>
                            <div class="nav-dependencia dropSubmenu dropdown">
                                <a class="nav-dependencia nav-link text-dark p-3 dropdown-toggle px-4 px-md-5 boton" href="" role="button">Dependencias </a>
                                <!-- Inicio de submenu -->
                                <div class="contenido text-left ">
                                    <a href="<c:url value='/atencion-usuarios/dependencias' />" class="">Dependencias</a>
                                    <a href="<c:url value='/atencion-usuarios/areas' />" class="">Áreas</a>
                                    <a href="<c:url value='/atencion-usuarios/vehiculos' />" class="">Vehículos</a>
                                </div>
                                <!-- Fin de submenu -->      
                            </div>
                      
                            <a class="nav-dependencia nav-link text-dark p-3 selected   px-4 px-md-5 mr-1 act" href="<c:url value='/atencion-usuarios/servicios' />">Servicios</a>
                            <div class="nav-dependencia dropSubmenu dropdown">
                                <a class="nav-link text-dark p-3 dropdown-toggle   px-4 px-md-5" href=""  role="button">Usuarios </a>
                                <!-- Inicio de submenu -->
                                <div class="contenido text-left ">
                                    <a href="<c:url value='/atencion-usuarios/atencion-usuarios' />" class="">Atención a usuarios</a>
                                    <a href="<c:url value='/atencion-usuarios/especialistas' />" class="">Especialistas</a>
                                    <a href="<c:url value='/atencion-usuarios/usuarios' />" class="">Usuarios</a>
                                </div>
                                <!-- Fin de submenu -->  
                            </div>
                            <a class="nav-dependencia nav-link text-dark p-3 selected mr-1  px-4 px-md-5" href="<c:url value='/atencion-usuarios/tickets' />">Tickets</a>
                            <a class="nav-dependencia nav-link text-dark p-3 selected mr-1  px-4 px-md-5" href="<c:url value='/atencion-usuarios/evaluacion-servicio' />">Evaluación de servicio</a>          
                        </div>
                    </nav>
                </div>
                <!-- Fin de barra de menu -->
            </div>
        </div>  
        <!-- Fin encabezado 2 -->

        <!-- Seccion 1-->
        <section class="container mt-5 ">
            <h3 class="text-center p-1">Servicios</h3>
            <div class="row col-12 d-flex justify-content-center align-items-center my-4 ml-0">
                <div id="alertAgregado" class="alert alert-success alert-dismissible fade show col-12 oculto-inicio" role="alert">
                    Servicio <strong id="nombre_servicioServicioNuevo"></strong> agregado con éxito.
                    <button type="button" class="close" data-dismiss="alert" aria-label="Close">
                        <span aria-hidden="true">&times;</span>
                    </button>
                </div>
                <div id="alertEditado" class="alert alert-success alert-dismissible fade show col-12 oculto-inicio" role="alert">
                    Servicio <strong id="nombre_servicioServicioNuevo"></strong> editado con éxito.
                    <button type="button" class="close" data-dismiss="alert" aria-label="Close">
                        <span aria-hidden="true">&times;</span>
                    </button>
                </div>
                <div id="alertEliminado" class="alert alert-success alert-dismissible fade show col-12 oculto-inicio" role="alert">
                    Servicio <strong id="nombre_servicioServicioNuevo"></strong> eliminado con éxito.
                    <button type="button" class="close" data-dismiss="alert" aria-label="Close">
                        <span aria-hidden="true">&times;</span>
                    </button>
                </div>          
                <form class="form-group col-11 col-md-6 mx-md-5 px-0 mb-lg-0 mb-2">
                    <div class="input-group">
                        <input class="form-control" type="search" placeholder="Buscar" aria-label="Search">
                        <span class="input-group-btn">
                            <button class="btn btn-info " type="submit">Buscar</button>
                        </span>
                    </div> 
                </form>
                <button type="button" class="btn btn-info col-md-3 col-11" data-toggle="modal" data-target="#modal-agregarServicio"><i class="fa fa-plus-circle"></i> Agregar servicio</button>
            </div>
        </section>
        <!-- Fin de seccion 1 -->

        <!-- Contenido principal -->
        <div class="container mt-5 table-responsive ">

            <!-- Tabla de registros --> 
            <table class="table table-striped">
                <thead>
                    <tr>
                        <th scope="col">Nombre</th>
                        <th scope="col">Especialista</th>
                        <th scope="col" >Vehículo</th>
                        <th scope="col" >Nivel gasolina inicio</th>
                        <th scope="col" >Nivel gasolina fin</th>
                        <th scope="col" >Fecha</th>
                        <th scope="col" >Hora</th>
                        <th scope="col" class="text-center">Opciones </th>
                    </tr>
                </thead>
                <tbody>
                
                </tbody>
            </table>
            <!-- Fin de tabla de registros -->
        </div>
        <!-- Fin contenido principal -->
 
        <!-- Pie de pagina -->
        <footer class="mt-5 container-fluid bg-dark text-center">
            <div class="container navbar navbar-dark bg-dark ">
                <p class="text-white mr-auto ml-auto"><i class="fa fa-registered"></i> Derechos reservados Universidad de Colima | Página desarrollada por la Facultad de Telemática - 2017</p>
            </div>
        </footer>
        <!-- Fin de pie de pagina -->

        <!-- Modales -->

        <!--Inicio de modal agregar servicio -->
        <div class="modal" id="modal-agregarServicio" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
            <div class="modal-dialog modal-lg" role="document">
                <div class="modal-content ">
                    <div class="modal-header">
                        <h3 class="modal-title" id="exampleModalLabel">Agregar Servicio</h3>
                        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                            <span aria-hidden="true">&times;</span>
                        </button>
                    </div>           
        <!--nombre_servicio, especialista, id_vehiculo, nivel_gas_inicio, nivel_gaso_fin-->
                    <div class="modal-body p-5 col-11 ">
                        <form id="formAgregarServicio"action="">
                            <div class="form-group row">
                                <label for="" class="col-form-label col-4">Nombre:</label>
                                <input name="nombre_servicio" type="text" class="form-control col-8" id="">
                            </div>
                            <div class="form-group row ">
                                <label for="" class="col-4">Especialista: </label>
                                <select class="form-control col-8" id="selectEspecialista" name="especialista">
                                
                                </select> 
                            </div>
                            <div class="row">
                                <div class="col-4"></div>
                                <a href="col-8">Agregar Especialista al Servicio</a>
                            </div>

                            <div class="form-group row mt-3">
                                <label for="" class="col-4">Vehículo: </label>
                                <select class="form-control col-8" id="selectVehiculo" name="id_vehiculo">
                                
                                </select> 
                            </div>
                            <div class="form-group row mt-3">
                                <label for="" class="col-4">Nivel de gasolina inicio: </label>
                                <select name="nivel_gas_inicio"class="form-control col-8" id="nivel_gas_inicio">
                                    <option value="5">Lleno</option>
                                    <option value="4">3/4</option>
                                    <option value="3">1/2</option>
                                    <option value="2">1/4</option>
                                    <option value="1">Vacío</option>
                                    <option value="0">Sin nivel de gasolina</option>
                                </select> 
                            </div>
                            <div class="form-group row mt-3">
                                <label for="" class="col-4">Fecha: </label>
                                <div class='input-group date col-8' id='selectFecha1'>
                                    <input type='text' class="form-control" />
                                    <span class="input-group-addon">
                                        <i class="fa fa-calendar" aria-hidden="true"></i>
                                    </span>
                                </div>
                            </div>
                            <div class="form-group row mt-3">
                                <label for="" class="col-4">Hora: </label>
                                <div class='input-group date col-8' id='selectHora1'>
                                    <input type='text' class="form-control" />
                                    <span class="input-group-addon">
                                        <i class="fa fa-clock-o" aria-hidden="true"></i>
                                    </span>
                                </div>
                            </div>
                            
                        </form>
                    </div>
                    <div class="modal-footer">
                        <button type="button" class="btn btn-secondary" data-dismiss="modal">Cancelar</button>
                        <button id="btnAgregarServicio" type="button" class="btn btn-success" data-dismiss="modal">Agregar</button>
                    </div>
                </div>
            </div>
        </div>
        <!-- Fin de modal agregar -->

        <!--Inicio de modal editar servicio -->
        <div class="modal" id="modal-editarServicio" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
            <div class="modal-dialog modal-lg" role="document">
                <div class="modal-content ">
                    <div class="modal-header">
                        <h3 class="modal-title" id="exampleModalLabel">Editar Servicio</h3>
                        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                            <span aria-hidden="true">&times;</span>
                        </button>
                    </div>
                    <div class="modal-body p-5 col-11 ">
                        <form id="formEditarServicio" action="">
                            <input type="hidden" id="id_servicio">
                            <div class="form-group row">
                                <label for="" class="col-form-label col-4">Nombre:</label>
                                <input name="nombre_servicio"type="text" class="form-control col-8" id="nombre_servicio">
                            </div>                     
                            <div class="form-group row ">
                                <label for="" class="col-4">Especialista: </label>
                                <select class="form-control col-8" id="selectEspecialista" name="especialista">
                                    
                                </select> 
                            </div>
                            <div class="row">
                                <div class="col-4"></div>
                                <a href="col-8"  >Agregar Especialista al Servicio</a>
                            </div>
    
                            <div class="form-group row mt-3">
                                <label for="" class="col-4">Vehículo: </label>
                                <select class="form-control col-8" id="selectVehiculo" name="vehiculo">
                                   
                                </select> 
                            </div>
                            <div class="form-group row mt-3">
                                <label for="" class="col-4">Nivel de gasolina inicio: </label>
                                <select class="form-control col-8" id="nivel_gas_inicio" name="nivel_gas_inicio">
                                    <option value="5">Lleno</option>
                                    <option value="4">3/4</option>
                                    <option value="3">1/2</option>
                                    <option value="2">1/4</option>
                                    <option value="1">Vacío</option>
                                    <option value="0">Sin nivel de gasolina</option>
                                </select> 
                            </div>
                            <div class="form-group row mt-3">
                                <label for="" class="col-4">Nivel de gasolina fin: </label>
                                <select class="form-control col-8" id="nivel_gas_fin" name="nivel_gas_fin">
                                    <option value="5">Lleno</option>
                                    <option value="4">3/4</option>
                                    <option value="3">1/2</option>
                                    <option value="2">1/4</option>
                                    <option value="1">Vacío</option>
                                    <option value="0">Sin nivel de gasolina</option>
                                </select> 
                            </div>
                            <div class="form-group row mt-3">
                                <label for="" class="col-4">Fecha: </label>
                                <div class='input-group date col-8' id='selectFecha2'>
                                    <input type='text' class="form-control" />
                                    <span class="input-group-addon">
                                        <i class="fa fa-calendar" aria-hidden="true"></i>
                                    </span>
                                </div>
                            </div>
                            <div class="form-group row mt-3">
                                <label for="" class="col-4">Hora: </label>
                                <div class='input-group date col-8' id='selectHora2'>
                                    <input type='text' class="form-control" />
                                    <span class="input-group-addon">
                                        <i class="fa fa-clock-o" aria-hidden="true"></i>
                                    </span>
                                </div>
                            </div>
                        </form>
                    </div>
                    <div class="modal-footer">
                        <button type="button" class="btn btn-secondary" data-dismiss="modal">Cancelar</button>
                        <button id="btnEditarServicio" type="button" class="btn btn-success" data-dismiss="modal">Editar</button>
                    </div>
                </div>
            </div>
        </div>
        <!-- Fin de modal editar --> 

        <!--Inicio de modal eliminar -->
        <div class="modal" id="modal-eliminarServicio" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
            <div class="modal-dialog" role="document">
                <div class="modal-content">
                    <div class="modal-header">
                        <h3 class="modal-title" id="exampleModalLabel">Eliminar Servicio</h3>
                        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                            <span aria-hidden="true">&times;</span>
                        </button>
                    </div>
                    <div class="modal-body p-5">
                        ¿Realmente desea eliminar servicio <strong id="nombre_servicio"></strong> ?   
                    </div>
                    <div class="modal-footer">
                        <button type="button" class="btn btn-secondary" data-dismiss="modal">Cancelar</button>
                        <form id="formEliminarServicio" action="">
                            <input type="hidden" id="id_servicio" name="id_servicio">
                           <button id="btnEliminarServicio" type="button" class="btn btn-danger" data-dismiss="modal">Eliminar</button>
                        </form>
                    </div>
                </div>
            </div>
        </div>
        <!-- Fin de modal -->

        <!-- Optional JavaScript -->
        <!-- jQuery first, then Popper.js, then Bootstrap JS -->
        <script src="<c:url value='/js/jquery-3.2.1.min.js' />"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.3/umd/popper.min.js" integrity="sha384-vFJXuSJphROIrBnz7yo7oB41mKfc8JzQZiCq4NCceLEaO4IHwicKwpJf9c9IpFgh" crossorigin="anonymous"></script>
        <script src="<c:url value='/js/bootstrap.js' />"></script>
        
        <script src="https://cdnjs.cloudflare.com/ajax/libs/moment.js/2.19.2/moment.min.js"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/moment.js/2.19.2/locale/es.js"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datetimepicker/4.17.47/js/bootstrap-datetimepicker.min.js"></script>
        
        <script>
            $(function(){
                var listaServicios;
                cargarTablaServicios();
                $("#btnAgregarServicio").unbind('click').on('click', function(){
                   console.log($("#formAgregarServicio").serialize());
                   let especialista="&especialista="+$("#formAgregarServicio #selectEspecialista").val();
                   let fechaSeleccionada=$('#selectFecha1').data("DateTimePicker").date();
                   let fecha="&fecha="+ fechaSeleccionada.toISOString().substring(0,10);
                   let horaSeleccionada=$('#selectHora1').data("DateTimePicker").date();
                   let hora="&hora="+ horaSeleccionada.hour()+ ":"+ horaSeleccionada.minute();
                   $.ajax({
                        type: 'POST',
                        url: './servicios?action=registrar',
                        dataType: 'json',
                        contentType: 'application/x-www-form-urlencoded; charset=UTF-8',
                        data: $("#formAgregarServicio").serialize() + especialista+ fecha+ hora,
                        success: function(data, textStatus, jqXHR){
                            // access response data
                            console.log(data, textStatus, jqXHR);
                            $("#alertAgregado #nombre_servicioServicioNuevo").text(data.nombreServicio);
                            $("#alertAgregado").toggle();
                            setTimeout(function(){
                                $("#alertAgregado").toggle();
                            }, 5000);
                            cargarTablaServicios();
                        }
                    });
                });
                
                $("#btnEditarServicio").unbind('click').on('click', function(){
                   console.log($("#formEditarServicio").serialize()); 
                   let especialista="&especialista="+$("#formAgregarServicio #selectEspecialista").val();
                   let fechaSeleccionada=$('#selectFecha2').data("DateTimePicker").date();
                   let fecha="&fecha="+ fechaSeleccionada.toISOString().substring(0,10);
                   let horaSeleccionada=$('#selectHora2').data("DateTimePicker").date();
                   let hora="&hora="+ horaSeleccionada.toString().substring(16,24);
                   $.ajax({
                        type: 'POST',
                        url: './servicios?action=editar&id_servicio=' + $("#formEditarServicio #id_servicio").val(),
                        dataType: 'json',
                        contentType: 'application/x-www-form-urlencoded; charset=UTF-8',
                        data: $("#formEditarServicio").serialize()  + especialista + fecha + hora,
                        success: function(data, textStatus, jqXHR){
                            // access response data
                            console.log(data, textStatus, jqXHR);
                            $("#alertEditado #nombre_servicioServicioNuevo").text(data.nombreServicio);
                            $("#alertEditado").toggle();
                            setTimeout(function(){
                                $("#alertEditado").toggle();
                            }, 5000);
                            cargarTablaServicios();
                        }
                    });
                });
                
                $("#btnEliminarServicio").unbind('click').on('click', function(){
                   $.ajax({
                        type: 'POST',
                        url: './servicios?action=eliminar',
                        dataType: 'json',
                        contentType: 'application/x-www-form-urlencoded; charset=UTF-8',
                        data: $("#formEliminarServicio").serialize(),
                        success: function(data, textStatus, jqXHR){
                            // access response data
                            console.log(data, textStatus, jqXHR);
                            $("#alertEliminado #nombre_servicioServicioNuevo").text(data.nombreServicio);
                            $("#alertEliminado").toggle();
                            setTimeout(function(){
                                $("#alertEliminado").toggle();
                            }, 5000);
                            cargarTablaServicios();
                        }
                    });
                });
            
                function mostrarEditarServicio() {
                    $(".editar").unbind('click').on('click', function(){
                        let idObjServicio = $(this).attr('data-idObjServicio');
                        $("#modal-editarServicio #id_servicio").val(listaServicios[idObjServicio].id_servicio);
                        $("#modal-editarServicio #nombre_servicio").val(listaServicios[idObjServicio].nombreServicio);
                        $("#modal-editarServicio #selectEspecialista").val(listaServicios[idObjServicio].especialista.correo);
                        $("#modal-editarServicio #selectVehiculo").val(listaServicios[idObjServicio].vehiculo.id_vehiculo);
                        $("#modal-editarServicio #nivel_gas_inicio").val(listaServicios[idObjServicio].nivelGasolinaInicio);
                        $("#modal-editarServicio #nivel_gas_fin").val(listaServicios[idObjServicio].nivelGasolinaFin);
                        let anio = listaServicios[idObjServicio].fecha.substring(0,4);
                        let mes = listaServicios[idObjServicio].fecha.substring(5,7);
                        let dia = listaServicios[idObjServicio].fecha.substring(8,10);
                        let fechaSeleccionada = $('#selectFecha2').data("DateTimePicker");
                        fechaSeleccionada.date(new Date(anio, mes, dia));
                        let horaSeleccionada = $('#selectHora2').data("DateTimePicker");
                        horaSeleccionada.date(listaServicios[idObjServicio].hora);
                        
                    });
                }
                                               
                function mostrarEliminarServicio() {
                    $(".eliminar").unbind('click').on('click', function(){
                        let idObjServicio = $(this).attr('data-idObjServicio');
                        $("#modal-eliminarServicio #nombre_servicio").text(listaServicios[idObjServicio].nombreServicio);
                        $("#modal-eliminarServicio #id_servicio").val(listaServicios[idObjServicio].id_servicio);
                    });
                }
                function cargarTablaServicios() {
                    $.ajax({
                        type: 'GET',
                        url: './servicios?action=mostrar',
                        dataType: 'json',
                        //contentType: 'application/x-www-form-urlencoded; charset=UTF-8',
                        //data: $("#formAgregarDependencia").serialize() + direccion,
                        success: function(servicios, textStatus, jqXHR){
                            // access response data
                            console.log(servicios, textStatus, jqXHR);
                            listaServicios = servicios;
                            $("tbody").empty();
                            $.each(servicios, function(id, servicio) {
                                let btnEditar = '<button type="button" class="editar btn btn-info my-1" data-toggle="modal" data-target="#modal-editarServicio" data-idObjServicio="'+ id +'"><i class="fa fa-pencil"></i></button>';
                                let btnEliminar = '<button type="button " class="eliminar btn btn-danger my-1" data-toggle="modal" data-target="#modal-eliminarServicio" data-idObjServicio="'+ id +'"><i class="fa fa-trash-o"></i></button>';
                                let tr = $('<tr class="text-truncate">').append(
                                    $('<td>').text(servicio.nombreServicio),                              
                                    $('<td>').text(servicio.especialista.correo),    
                                    $('<td>').text(servicio.vehiculo.id_vehiculo),
                                    $('<td>').text(mostrarNivelGasolina(servicio.nivelGasolinaInicio)),
                                    $('<td>').text(mostrarNivelGasolina(servicio.nivelGasolinaFin)),
                                    $('<td>').text(servicio.fecha),
                                    $('<td>').text(servicio.hora),
                                    $('<td class="text-center d-flex flex-column flex-lg-row justify-content-around">').html(btnEditar + btnEliminar)
                                ); //.appendTo('#records_table');
                                $("table").append(tr);
                                //console.log(tr.wrap('<tr>').html());
                            });
                            mostrarEditarServicio();
                            mostrarEliminarServicio();
                        }
                    });
                }  
                
                cargarEspecialistasEnSelect();
                function cargarEspecialistasEnSelect() {
                   $.ajax({
                        type: 'GET',
                        url: './especialistas?action=mostrar',
                        dataType: 'json',
                        success: function(especialistas, textStatus, jqXHR){
                            // access response data
                            $("#formAgregarServicio #selectEspecialista").empty();
                            $("#formEditarServicio #selectEspecialista").empty();
                            $.each(especialistas, function(id, especialista) {
                                $("#formAgregarServicio #selectEspecialista").append(new Option(especialista.correo,especialista.correo)); 
                                $("#formEditarServicio #selectEspecialista").append(new Option(especialista.correo,especialista.correo)); 
                            });
                        }
                   });
                }  
                cargarVehiculosEnSelect();
                function cargarVehiculosEnSelect() {
                   $.ajax({
                        type: 'GET',
                        url: './vehiculos?action=mostrar',
                        dataType: 'json',
                        success: function(vehiculos, textStatus, jqXHR){
                            // access response data
                            $("#formAgregarServicio #selectVehiculo").empty();
                            $("#formEditarServicio #selectVehiculo").empty();
                            $("#formAgregarServicio #selectVehiculo").append(new Option("Selecciona un vehículo",0));
                            $("#formEditarServicio #selectVehiculo").append(new Option("Selecciona un vehículo",0));
                            $.each(vehiculos, function(id, vehiculo) {
                                $("#formAgregarServicio #selectVehiculo").append(new Option(vehiculo.id_vehiculo,vehiculo.id_vehiculo));
                                $("#formEditarServicio #selectVehiculo").append(new Option(vehiculo.id_vehiculo,vehiculo.id_vehiculo));
                            });
                            nivelGasolinaSelect();
                        }
                   });
                }  
                function nivelGasolinaSelect() {
                    if ($("#formAgregarServicio #selectVehiculo").val() === "0") {
                        $("#formAgregarServicio #nivel_gas_inicio").val("0");
                        $("#formAgregarServicio #nivel_gas_inicio").attr('readonly', true);
                    } else {
                        $("#formAgregarServicio #nivel_gas_inicio").attr('readonly', false);
                    }
                    if ($("#formEditarServicio #selectVehiculo").val() === "0") {
                        $("#formEditarServicio #nivel_gas_inicio").val("0");
                        $("#formEditarServicio #nivel_gas_inicio").attr('readonly', true);
                        $("#formEditarServicio #nivel_gas_fin").val("0");
                        $("#formEditarServicio #nivel_gas_fin").attr('readonly', true);
                    } else {
                        $("#formEditarServicio #nivel_gas_inicio").attr('readonly', false);
                        $("#formEditarServicio #nivel_gas_fin").attr('readonly', false);
                    }
                    $("#formAgregarServicio #selectVehiculo").on('change', function() {
                        if ($("#formAgregarServicio #selectVehiculo").val() === "0") {
                            $("#formAgregarServicio #nivel_gas_inicio").val(0);
                            $("#formAgregarServicio #nivel_gas_inicio").attr('readonly', true);
                        } else {
                            $("#formAgregarServicio #nivel_gas_inicio").attr('readonly', false);
                        }
                    });
                    $("#formEditarServicio #selectVehiculo").on('change', function() {
                        if ($("#formEditarServicio #selectVehiculo").val() === "0") {
                            $("#formEditarServicio #nivel_gas_inicio").val(0);
                            $("#formEditarServicio #nivel_gas_inicio").attr('readonly', true);
                            $("#formEditarServicio #nivel_gas_fin").val(0);
                            $("#formEditarServicio #nivel_gas_fin").attr('readonly', true);
                        } else {
                            $("#formEditarServicio #nivel_gas_inicio").attr('readonly', false);
                            $("#formEditarServicio #nivel_gas_fin").attr('readonly', false);
                        }
                    });
                    
                }
                function mostrarNivelGasolina(nivelGasolina) {
                    switch(nivelGasolina) {
                         case 1:
                             return 'Vacío';
                         case 2:
                             return '1/4';
                         case 3:
                             return '1/2';
                         case 4:
                             return '3/4';
                         case 5:
                             return 'Lleno';
                    }
                }
                $('#selectFecha1').datetimepicker({
                    format: 'YYYY/MM/DD',
                    locale: 'es',
                    icons: { 
                        date: "fa fa-calendar",
                        previous: "fa fa-arrow-left",
                        next: "fa fa-arrow-right"
                    }
                });
                
                $('#selectFecha2').datetimepicker({
                    format: 'DD/MM/YYYY',
                    locale: 'es',
                    icons: { 
                        date: "fa fa-calendar",
                        previous: "fa fa-arrow-left",
                        next: "fa fa-arrow-rightwn"
                    }
                });
                
                $('#selectHora1').datetimepicker({
                    format: 'LT',
                    icons: { 
                        time: "fa fa-clock-o",
                        up: "fa fa-arrow-up",
                        down: "fa fa-arrow-down"
                    }
                });
                
               $('#selectHora2').datetimepicker({
                    format: 'LT',
                    icons: { 
                        time: "fa fa-clock-o",
                        up: "fa fa-arrow-up",
                        down: "fa fa-arrow-down"
                    }
                });
            });
        </script>
    </body>
</html>