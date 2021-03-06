<%-- 
    Document   : mostrar
    Created on : 13/11/2017, 03:49:12 PM
    Author     : andreaml
--%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
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
        <div class="container-fluid d-flex flex-column mt-2 col-12 align-dependencias-center ">
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
                                <a class="nav-dependencia nav-link text-dark p-3 dropdown-toggle px-4 px-md-5 boton act" href="" role="button">Dependencias </a>
                                <!-- Inicio de submenu -->
                                <div class="contenido text-left ">
                                    <a href="<c:url value='/atencion-usuarios/dependencias' />" class="">Dependencias</a>
                                    <a href="<c:url value='/atencion-usuarios/areas' />" class="">Áreas</a>
                                    <a href="<c:url value='/atencion-usuarios/vehiculos' />" class="">Vehículos</a>
                                </div>
                                <!-- Fin de submenu -->      
                            </div>

                            <a class="nav-dependencia nav-link text-dark p-3 selected   px-4 px-md-5 mr-1" href="<c:url value='/atencion-usuarios/servicios' />">Servicios</a>
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
  <section class="container mt-5">
    <h3 class="text-center p-1">Áreas</h3>
    <div class="row col-12 d-flex justify-content-center align-items-center my-4 ml-0">
        <div id="alertAgregado" class="alert alert-success alert-dismissible fade show col-12 oculto-inicio" role="alert">
            Área <strong id="nombreAreaNueva"></strong> agregada con éxito.
            <button type="button" class="close" data-dismiss="alert" aria-label="Close">
                <span aria-hidden="true">&times;</span>
            </button>
        </div>
        <div id="alertEditado" class="alert alert-success alert-dismissible fade show col-12 oculto-inicio" role="alert">
            Área <strong id="nombreAreaNueva"></strong> editada con éxito.
            <button type="button" class="close" data-dismiss="alert" aria-label="Close">
                <span aria-hidden="true">&times;</span>
            </button>
        </div>
        <div id="alertEliminado" class="alert alert-success alert-dismissible fade show col-12 oculto-inicio" role="alert">
            Área <strong id="nombreAreaNueva"></strong> eliminada con éxito.
            <button type="button" class="close" data-dismiss="alert" aria-label="Close">
                <span aria-hidden="true">&times;</span>
            </button>
        </div>
        <div id="alertAgregadoTS" class="alert alert-success alert-dismissible fade show col-12 oculto-inicio" role="alert">
            Tipo de servicio <strong id="nombreTipoServicioNuevo"></strong> agregado con éxito.
            <button type="button" class="close" data-dismiss="alert" aria-label="Close">
                <span aria-hidden="true">&times;</span>
            </button>
        </div>
        <div id="alertEditadoTS" class="alert alert-success alert-dismissible fade show col-12 oculto-inicio" role="alert">
            Tipo de servicio <strong id="nombreTipoServicioNuevo"></strong> editado con éxito.
            <button type="button" class="close" data-dismiss="alert" aria-label="Close">
                <span aria-hidden="true">&times;</span>
            </button>
        </div>
        <div id="alertEliminadoTS" class="alert alert-success alert-dismissible fade show col-12 oculto-inicio" role="alert">
            Tipo de servicio <strong id="nombreTipoServicioNuevo"></strong> eliminado con éxito.
            <button type="button" class="close" data-dismiss="alert" aria-label="Close">
                <span aria-hidden="true">&times;</span>
            </button>
        </div>
        <form class="form-group col-11 col-md-6 mx-md-5 px-0 mb-lg-0 mb-2">
            <div class="input-group">
                <input class="form-control " type="search" placeholder="Buscar" aria-label="Search">
                <span class="input-group-btn">
                    <button class="btn btn-info " type="submit">Buscar</button>
                </span>
            </div> 
        </form>
        <button type="button" class="btn btn-info col-md-3 col-11" data-toggle="modal" data-target="#modal-agregarArea"><i class="fa fa-plus-circle"></i> Agregar área</button>
    </div>
  </section>
<!-- Fin de seccion 1 -->

<!-- Contenido principal -->
  <div class="container mt-5 table-responsive" >

    <!-- Tabla de registros -->    
      <table class="table table-striped ">
        <thead>
          <tr>
            <th scope="col" class="pr-5">Nombre</th>
            <th scope="col" class="pr-5">Dependencia</th>
            <th scope="col"class="pr-5" >Tipos de servicio</th>
            <th scope="col" >Opciones </th>
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
        <p class="text-white mr-auto ml-auto"><i class="fa fa-registered"></i> Derechos reservados Universidad de Colima  | Página desarrollada por la Facultad de Telemática - 2017</p>
        </div>
    </footer>
<!-- Fin de pie de pagina -->



<!-- Modales -->

<!--Inicio de modal agregar area -->
    <div class="modal" id="modal-agregarArea" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
        <div class="modal-dialog modal-lg" role="document">
            <div class="modal-content ">
                <div class="modal-header">
                    <h3 class="modal-title" id="exampleModalLabel">Agregar Área</h3>
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">&times;</span>
                    </button>
                </div>

                <div class="modal-body p-5 col-11 ">
                    <form id="formAgregarArea" action="">
                        <div class="form-group row">
                            <label for="" class="col-form-label col-4">Nombre:</label>
                            <input type="text" class="form-control col-8" id="nombreArea" name="nombre_area">
                        </div>
                        <div class="form-group row ">
                            <label for="" class="col-4">Dependencia: </label>
                            <select name="dependencia" class="form-control col-8" id="selectDependencia">
                            </select> 
                        </div>
                    </form>
                </div>
                
                <div class="modal-footer">
                    <button type="button" class="btn btn-secondary" data-dismiss="modal">Cancelar</button>
                    <button id="btnAgregarArea" type="button" class="btn btn-success" data-dismiss="modal">Agregar</button>
                </div>
            </div>
        </div>
    </div>
<!-- Fin de modal agregar -->


<!--Inicio de modal agregar tipo de servicio -->
    <div class="modal" id="modal-agregarTipoServicio" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
        <div class="modal-dialog modal-lg" role="document">
            <div class="modal-content ">
                <div class="modal-header">
                    <h3 class="modal-title" id="exampleModalLabel">Agregar Tipo de Servicio</h3>
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">&times;</span>
                    </button>
                </div>

                <div class="modal-body p-5 col-11 ">
                    <form id="formAgregarTipoServicio" action="">
                        <div class="form-group row">
                            <label for="" class="col-form-label col-4">Nombre:</label>
                            <input type="text" class="form-control col-8" name="nombre_tipo_servicio">
                        </div>
                        <div class="form-group row ">
                            <label for="" class="col-4">Área: </label>
                            <select class="form-control col-8" id="selectArea" name="area">
                            </select> 
                        </div>
                    </form>
                </div>
                
                <div class="modal-footer">
                    <button type="button" class="btn btn-secondary" data-dismiss="modal">Cancelar</button>
                    <button id="btnAgregarTipoServicio"type="button" class="btn btn-success" data-dismiss="modal">Agregar</button>
                </div>
            </div>
        </div>
    </div>
<!-- Fin de modal agregar tipo de servicio-->

<!--Inicio de modal editar área -->
    <div class="modal" id="modal-editarArea" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
        <div class="modal-dialog modal-lg" role="document">
            <div class="modal-content ">
                <div class="modal-header">
                    <h3 class="modal-title" id="exampleModalLabel">Editar Área</h3>
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">&times;</span>
                    </button>
                </div>

                <div class="modal-body p-5 col-11 ">
                    <form id="formEditarArea" action="">
                        <input type="hidden" id="idArea" name="id_area">
                        <div class="form-group row">
                            <label for="" class="col-form-label col-4">Nombre:</label>
                            <input type="text" class="form-control col-8" id="nombreArea" name="nombre_area">
                        </div>
                        <div class="form-group row ">
                            <label for="" class="col-4">Dependencia: </label>
                            <select class="form-control col-8" id="selectDependencia" name="dependencia">
                            </select> 
                        </div>
                    </form>
                </div>
                
                <div class="modal-footer">
                    <button type="button" class="btn btn-secondary" data-dismiss="modal">Cancelar</button>
                    <button id="btnEditarArea" type="button" class="btn btn-success" data-dismiss="modal">Editar</button>
                </div>
            </div>
        </div>
    </div>
<!-- Fin de modal editar area-->  

<!--Inicio de modal editar tipo de servicio -->
    <div class="modal" id="modal-editarTipoServicio" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
        <div class="modal-dialog modal-lg" role="document">
            <div class="modal-content ">
                <div class="modal-header">
                    <h3 class="modal-title" id="exampleModalLabel">Editar Tipo de Servicio</h3>
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">&times;</span>
                    </button>
                </div>

                <div class="modal-body p-5 col-11 ">
                    <form id="formEditarTipoServicio" action="">
                        <input type="hidden" id="idTipoServicio" name="id_tipo_servicio">
                        <div class="form-group row">
                            <label for="" class="col-form-label col-4">Nombre:</label>
                            <input type="text" class="form-control col-8" id="nombreTipoServicio" name="nombre_tipo_servicio">
                        </div>
                        <div class="form-group row ">
                            <label for="" class="col-4">Área: </label>
                            <select class="form-control col-8" id="selectArea" name="area">
                            </select> 
                        </div>
                    </form>
                </div>
                
                <div class="modal-footer">
                    <button type="button" class="eliminarTS btn btn-danger mr-auto" data-dismiss="modal" data-toggle="modal" data-target="#modal-eliminarTipoServicio">Eliminar</button>
                    <button type="button" class="btn btn-secondary" data-dismiss="modal">Cancelar</button>
                    <button id="btnEditarTipoServicio" type="button" class="btn btn-success" data-dismiss="modal">Editar</button>
                </div>
            </div>
        </div>
    </div>
<!-- Fin de modal editar tipo de servicio  -->


<!--Inicio de modal eliminar area-->
    <div class="modal" id="modal-eliminarArea" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
        <div class="modal-dialog" role="document">
            <div class="modal-content">
                <div class="modal-header">
                    <h3 class="modal-title" id="exampleModalLabel">Eliminar Área</h3>
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">&times;</span>
                    </button>
                </div>
                <div class="modal-body p-5">
                    ¿Realmente desea eliminar el área <strong id="nombreArea"></strong>?   
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-secondary" data-dismiss="modal">Cancelar</button>
                    <form id="formEliminarArea" action="">
                        <input id="idArea" type="hidden" name="id_area">
                        <button id="btnEliminarArea" type="button" class="btn btn-danger" data-dismiss="modal">Eliminar</button>
                    </form>
                </div>
            </div>
        </div>
    </div>
<!-- Fin de modal eliminar area -->

<!--Inicio de modal eliminar tipoServicio-->
    <div class="modal" id="modal-eliminarTipoServicio" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
        <div class="modal-dialog" role="document">
            <div class="modal-content">
                <div class="modal-header">
                    <h3 class="modal-title" id="exampleModalLabel">Eliminar Área</h3>
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">&times;</span>
                    </button>
                </div>
                <div class="modal-body p-5">
                    ¿Realmente desea eliminar el tipo de servicio <strong id="nombreTipoServicio"></strong>?   
                </div>
                <div class="modal-footer">
                    <form id="formEliminarTipoServicio" action="">
                        <input id="idTipoServicio" type="hidden" name="id_tipo_servicio">
                        <button type="button" class="btn btn-secondary" data-dismiss="modal">Cancelar</button>
                        <button id="btnEliminarTipoServicio" type="button" class="btn btn-danger" data-dismiss="modal">Eliminar</button>
                    </form>
                </div>
            </div>
        </div>
    </div>
<!-- Fin de modal eliminar tipoServicio -->

<!-- Fin de modal -->

    <!-- Optional JavaScript -->
    <!-- jQuery first, then Popper.js, then Bootstrap JS -->
    <script src="<c:url value='/js/jquery-3.2.1.min.js' />"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.3/umd/popper.min.js" integrity="sha384-vFJXuSJphROIrBnz7yo7oB41mKfc8JzQZiCq4NCceLEaO4IHwicKwpJf9c9IpFgh" crossorigin="anonymous"></script>
    <script src="<c:url value='/js/bootstrap.js' />"></script>
    <script>
        $(function(){
            var listaAreas;
            cargarTablaAreas();
            
            $("#btnAgregarArea").unbind('click').on('click', ()=>{
               console.log($("#formAgregarArea").serialize()); 
               $.ajax({
                    type: 'POST',
                    url: './areas?action=registrar',
                    dataType: 'json',
                    contentType: 'application/x-www-form-urlencoded; charset=UTF-8',
                    data: $("#formAgregarArea").serialize(),
                    success: function(data, textStatus, jqXHR){
                        // access response data
                        console.log(data, textStatus, jqXHR);
                        $("#alertAgregado #nombreAreaNueva").text(data.nombreArea);
                        $("#alertAgregado").toggle();
                        setTimeout(function(){
                            $("#alertAgregado").toggle();
                        }, 5000);
                       cargarTablaAreas();
                    }
                });
            });
            
            $("#btnEditarArea").unbind('click').on('click', ()=>{
               console.log($("#formEditarArea").serialize()); 
               $.ajax({
                    type: 'POST',
                    url: './areas?action=editar',
                    dataType: 'json',
                    contentType: 'application/x-www-form-urlencoded; charset=UTF-8',
                    data: $("#formEditarArea").serialize(),
                    success: function(data, textStatus, jqXHR){
                        // access response data
                        console.log(data, textStatus, jqXHR);
                        $("#alertEditado #nombreAreaNueva").text(data.nombreArea);
                        $("#alertEditado").toggle();
                        setTimeout(function(){
                            $("#alertEditado").toggle();
                        }, 5000);
                        cargarTablaAreas();
                    }
                });
            });
            
            $("#btnEliminarArea").unbind('click').on('click', ()=>{
               $.ajax({
                    type: 'POST',
                    url: './areas?action=eliminar',
                    dataType: 'json',
                    contentType: 'application/x-www-form-urlencoded; charset=UTF-8',
                    data: $("#formEliminarArea").serialize(),
                    success: function(data, textStatus, jqXHR){
                        // access response data
                        console.log(data, textStatus, jqXHR);
                        $("#alertEliminado #nombreAreaNueva").text(data.nombreArea);
                        $("#alertEliminado").toggle();
                        setTimeout(function(){
                            $("#alertEliminado").toggle();
                        }, 5000);
                        cargarTablaAreas();
                    }
                });
            });
            
            function mostrarEditarArea() {
                $(".editar").unbind('click').on('click', function(){
                    let idObjArea = $(this).attr('data-idObjArea');
                    $("#modal-editarArea #idArea").val(listaAreas[idObjArea].id_area);
                   // $("#modal-editarArea #nombreArea").val(listaAreas[idObjArea].id_area);
                    $("#modal-editarArea #nombreArea").val(listaAreas[idObjArea].nombreArea);
                    console.log(listaAreas[idObjArea].nombreArea)
                    $("#modal-editarArea #selectDependencia").val(listaAreas[idObjArea].dependencia.id_dependencia);
                });
            }
            
            function mostrarEliminarArea() {
                $(".eliminar").unbind('click').on('click', function(){
                    let idObjArea = $(this).attr('data-idObjArea');
                    $("#modal-eliminarArea #nombreArea").text(listaAreas[idObjArea].nombreArea);
                    $("#modal-eliminarArea #idArea").val(listaAreas[idObjArea].id_area);
                });
            }
            
            function cargarDependenciasEnSelect() {
               $.ajax({
                    type: 'GET',
                    url: './dependencias?action=mostrar',
                    dataType: 'json',
                    success: function(dependencias, textStatus, jqXHR){
                        // access response data
                        $("#selectDependencia").empty();
                        $.each(dependencias, function(id, dependencia) {
                            $('#formAgregarArea #selectDependencia').append(new Option(dependencia.nombreDependencia,dependencia.id_dependencia)); 
                            $('#formEditarArea #selectDependencia').append(new Option(dependencia.nombreDependencia,dependencia.id_dependencia)); 
                        });
                    }
               });
            }
            cargarDependenciasEnSelect();
           
            function cargarAreasEnSelect() {
                $('#formAgregarTipoServicio #selectArea').empty();
                $('#formEditarTipoServicio #selectArea').empty();
                $.each(listaAreas, function(id, area) {
                    $('#formAgregarTipoServicio #selectArea').append(new Option(area.nombreArea,area.id_area)); 
                    $('#formEditarTipoServicio #selectArea').append(new Option(area.nombreArea,area.id_area)); 
                });
            }
           
            function cargarTablaAreas() {
                $.ajax({
                    type: 'GET',
                    url: './areas?action=mostrar',
                    dataType: 'json',
                    //contentType: 'application/x-www-form-urlencoded; charset=UTF-8',
                    //data: $("#formAgregarDependencia").serialize() + direccion,
                    success: function(areas, textStatus, jqXHR){
                        // access response data
                        console.log(areas, textStatus, jqXHR);
                        listaAreas = areas;
                        $("tbody").empty();
                        $.each(areas, function(id, area) {
                            let btnEditar = '<button type="button" class="editar btn btn-info my-1" data-toggle="modal" data-target="#modal-editarArea" data-idObjArea="'+ id +'"><i class="fa fa-pencil"></i></button>';
                            let btnEliminar = '<button type="button " class="eliminar btn btn-danger my-1" data-toggle="modal" data-target="#modal-eliminarArea" data-idObjArea="'+ id +'"><i class="fa fa-trash-o"></i></button>';
                            let btnAgregarTipoServicio = '<button type="button" class="agregarTS btn btn-success my-1" data-toggle="modal" data-target="#modal-agregarTipoServicio" data-idArea="' + area.id_area + '"><i class="fa fa-plus-circle"></i> Tipo de servicio</button>';
                            let linksTiposServicio = '';
                            $.each(area.listaTiposServicio, function(id, tipoServicio){
                                linksTiposServicio += "<a href='' class='editarTS' data-toggle='modal' data-target='#modal-editarTipoServicio' data-ObjTipoServicio='" + JSON.stringify(tipoServicio) + "'>" + tipoServicio.nombreTipoServicio + " <i class='fa fa-pencil' aria-hidden='true'></i></a><br/>";
                            }); 
                            let tr = $('<tr class="text-truncate">').append(
                                $('<td>').text(area.nombreArea),    
                                $('<td>').text(area.dependencia.nombreDependencia),
                                $('<td>').html(linksTiposServicio),
                                $('<td class="text-center d-flex flex-column flex-lg-row justify-content-around">').html(btnEditar + btnEliminar + btnAgregarTipoServicio)
                            ); //.appendTo('#records_table');
                            $("table").append(tr);
                            //console.log(tr.wrap('<tr>').html());
                        });
                        cargarAreasEnSelect();
                        mostrarEditarArea();
                        mostrarEliminarArea();
                        mostrarAgregarTipoServicio();
                        mostrarEditarTipoServicio();
                        mostrarEliminarTipoServicio();
                    }
                });
            }  

            $("#btnAgregarTipoServicio").unbind('click').on('click', ()=>{
               console.log($("#formAgregarTipoServicio").serialize()); 
               $.ajax({
                    type: 'POST',
                    url: './tipo-servicio?action=registrar',
                    dataType: 'json',
                    contentType: 'application/x-www-form-urlencoded; charset=UTF-8',
                    data: $("#formAgregarTipoServicio").serialize(),
                    success: function(data, textStatus, jqXHR){
                        // access response data
                        console.log(data, textStatus, jqXHR);
                        $("#alertAgregadoTS #nombreTipoServicioNuevo").text(data.nombreTipoServicio);
                        $("#alertAgregadoTS").toggle();
                        setTimeout(function(){
                            $("#alertAgregadoTS").toggle();
                        }, 5000);
                        cargarTablaAreas();
                    }
                });
            });
            
            $("#btnEditarTipoServicio").unbind('click').on('click', ()=>{
               console.log($("#formEditaTipoServicio").serialize()); 
               $.ajax({
                    type: 'POST',
                    url: './tipo-servicio?action=editar',
                    dataType: 'json',
                    contentType: 'application/x-www-form-urlencoded; charset=UTF-8',
                    data: $("#formEditarTipoServicio").serialize(),
                    success: function(data, textStatus, jqXHR){
                        // access response data
                        console.log(data, textStatus, jqXHR);
                        $("#alertEditadoTS #nombreTipoServicioNuevo").text(data.nombreTipoServicio);
                        $("#alertEditadoTS").toggle();
                        setTimeout(function(){
                            $("#alertEditadoTS").toggle();
                        }, 5000);
                        cargarTablaAreas();
                    }
                });
            });
            
            $("#btnEliminarTipoServicio").unbind('click').on('click', ()=>{
               $.ajax({
                    type: 'POST',
                    url: './tipo-servicio?action=eliminar',
                    dataType: 'json',
                    contentType: 'application/x-www-form-urlencoded; charset=UTF-8',
                    data: $("#formEliminarTipoServicio").serialize(),
                    success: function(data, textStatus, jqXHR){
                        // access response data
                        console.log(data, textStatus, jqXHR);
                        $("#alertEliminadoTS #nombreTipoServicioNuevo").text(data.nombreTipoServicio);
                        $("#alertEliminadoTS").toggle();
                        setTimeout(function(){
                            $("#alertEliminadoTS").toggle();
                        }, 5000);
                        cargarTablaAreas();
                    }
                });
            });
            
            function mostrarAgregarTipoServicio() {
                $(".agregarTS").unbind('click').on('click', function(){
                    let idArea = $(this).attr('data-idArea');
                    console.log(idArea)
                    $("#modal-agregarTipoServicio #selectArea").val(idArea);
                });
            }
            
            function mostrarEditarTipoServicio() {
                $(".editarTS").unbind('click').on('click', function(){
                    let objTipoServicio = JSON.parse($(this).attr('data-ObjTipoServicio'));
                    console.log(objTipoServicio)
                    $("#modal-editarTipoServicio #idTipoServicio").val(objTipoServicio.id_tipo_servicio);
                    $("#modal-editarTipoServicio #nombreTipoServicio").val(objTipoServicio.nombreTipoServicio);
                    $("#modal-editarTipoServicio #selectArea").val(objTipoServicio.areaInt);
                });
            }
            
            function mostrarEliminarTipoServicio() {
                $(".eliminarTS").unbind('click').on('click', function(){
                    console.log('entra eliminar ts')
                    $("#modal-eliminarTipoServicio #nombreTipoServicio").text($("#modal-editarTipoServicio #nombreTipoServicio").val());
                    $("#modal-eliminarTipoServicio #idTipoServicio").val($("#modal-editarTipoServicio #idTipoServicio").val());
                });
            }
        });
    </script>
  </body>
</html>