<%-- 
    Document   : mostrar
    Created on : 11/11/2017, 04:51:41 PM
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
  <section class="container mt-5 ">
    <h3 class="text-center p-1">Dependencias</h3>
        <div class="row col-12 d-flex justify-content-center align-dependencias-center ml-0 my-4">
            <div id="alertAgregado" class="alert alert-success alert-dismissible fade show col-12 oculto-inicio" role="alert">
                Dependencia <strong id="nombreDependenciaNueva"></strong> agregada con éxito.
                <button type="button" class="close" data-dismiss="alert" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
            </div>
            <div id="alertEditado" class="alert alert-success alert-dismissible fade show col-12 oculto-inicio" role="alert">
                Dependencia <strong id="nombreDependenciaNueva"></strong> editada con éxito.
                <button type="button" class="close" data-dismiss="alert" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
            </div>
            <div id="alertEliminado" class="alert alert-success alert-dismissible fade show col-12 oculto-inicio" role="alert">
                Dependencia <strong id="nombreDependenciaNueva"></strong> eliminada con éxito.
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
            <button type="button" class="btn btn-info  col-md-3 col-11" data-toggle="modal" data-target="#modal-agregarDependencia"><i class="fa fa-plus-circle"></i> Agregar dependencia</button>
    </div>
  </section>
<!-- Fin de seccion 1 -->

  <!-- Contenido principal -->
  <div class="container mt-5 table-responsive">

    
    <!-- Tabla de registros -->
    
      <table class="table table-striped ">
        <thead>
          <tr>
            <th scope="col-4">Nombre</th>
            <th scope="col-3">Campus</th>
            <th scope="col-4" >Dirección</th>
            <th scope="col-1" class="text-center">Opciones </th>
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

<!--Inicio de modal agregar  -->
<div class="modal" id="modal-agregarDependencia" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
        <div class="modal-dialog modal-lg" role="document">
        <div class="modal-content ">
            <div class="modal-header">
                <h3 class="modal-title" id="exampleModalLabel">Agregar Dependencia</h3>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
            </div>

            <div class="modal-body p-5 col-11 ">
                <form id="formAgregarDependencia" action="">
                    <div class="form-group row">
                        <label for="" class="col-form-label col-4">Nombre:</label>
                        <input name="nombre_dependencia" type="text" class="form-control col-8" id="">
                    </div>
                    <div class="form-group row">
                        <label for="" class="col-form-label col-4">Campus:</label>
                        <input name="campus" type="text" class="form-control col-8" id="">
                    </div>
                    <h4>Dirección </h4>
                    <div class="form-group row">
                        <label for="" class="col-form-label col-4">Calle:</label>
                        <input type="text" class="form-control col-8 direccion" id="">
                    </div>
                    <div class="form-group row">
                        <label for="" class="col-form-label col-4">Número:</label>
                        <input type="text" class="form-control col-4 direccion" id="">
                    </div>
                    <div class="form-group row">
                        <label for="" class="col-form-label col-4">Colonia:</label>
                        <input type="text" class="form-control col-8 direccion" id="">
                    </div>
                    <div class="form-group row">
                        <label for="" class="col-form-label col-4">Ciudad:</label>
                        <input type="text" class="form-control col-8 direccion" id="">
                    </div>
                    <div class="form-group row">
                        <label for="" class="col-form-label col-4">Código postal:</label>
                        <input type="text" class="form-control col-4 direccion" id="">
                    </div>
                </form>
            </div>
            
            <div class="modal-footer">
            <button type="button" class="btn btn-secondary" data-dismiss="modal">Cancelar</button>
            <button id="btnAgregarDependencia" type="button" class="btn btn-success" data-dismiss="modal">Agregar</button>
            </div>
        </div>
        </div>
    </div>
  <!-- Fin de modal agregar -->

<!--Inicio de modal editar  -->
<div class="modal" id="modal-editarDependencia" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
        <div class="modal-dialog modal-lg" role="document">
        <div class="modal-content ">
            <div class="modal-header">
                <h3 class="modal-title" id="exampleModalLabel">Editar Dependencia</h3>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
            </div>

            <div class="modal-body p-5 col-11 ">
                <form id="formEditarDependencia" action="">
                    <input type="hidden" id="idDependencia">
                    <div class="form-group row">
                        <label for="" class="col-form-label col-4">Nombre:</label>
                        <input type="text" class="form-control col-8" id="nombreDependencia" name="nombre_dependencia">
                    </div>
                    <div class="form-group row">
                            <label for="" class="col-form-label col-4">Campus:</label>
                            <input type="text" class="form-control col-8" id="campus" name="campus">
                    </div>
                    <h4>Dirección </h4>
                    <div class="form-group row">
                            <label for="" class="col-form-label col-4">Calle:</label>
                            <input type="text" class="form-control col-8 direccion" id="calle">
                    </div>
                    <div class="form-group row">
                            <label for="" class="col-form-label col-4">Número:</label>
                            <input type="text" class="form-control col-4 direccion" id="numero">
                    </div>
                    <div class="form-group row">
                            <label for="" class="col-form-label col-4">Colonia:</label>
                            <input type="text" class="form-control col-8 direccion" id="colonia">
                    </div>
                    <div class="form-group row">
                            <label for="" class="col-form-label col-4">Ciudad:</label>
                            <input type="text" class="form-control col-8 direccion" id="ciudad">
                    </div>
                    <div class="form-group row">
                            <label for="" class="col-form-label col-4">Código postal:</label>
                            <input type="text" class="form-control col-4 direccion" id="codigoPostal">
                    </div>
                </form>
            </div>
            
            <div class="modal-footer">
            <button type="button" class="btn btn-secondary" data-dismiss="modal">Cancelar</button>
            <button id="btnEditarDependencia" type="button" class="btn btn-success" data-dismiss="modal">Editar</button>
            </div>
        </div>
        </div>
    </div>
  <!-- Fin de modal editar -->  


<!--Inicio de modal eliminar -->
<div class="modal" id="modal-eliminarDependencia" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
        <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <h3 class="modal-title" id="exampleModalLabel">Eliminar Dependencia</h3>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
            </div>
            <div class="modal-body p-5">
                ¿Realmente desea eliminar la Dependencia <strong id="nombreDependencia"></strong>?   
            </div>
            <div class="modal-footer">
            <button type="button" class="btn btn-secondary" data-dismiss="modal">Cancelar</button>
            <form id="formEliminarDependencia" action="">
                <input id="idDependencia" type="hidden">
                <button id="btnEliminarDependencia" type="button" class="btn btn-danger" data-dismiss="modal">Eliminar</button>
            </form>
            </div>
        </div>
        </div>
    </div>
  <!-- Fin de modal -->

    <!-- Optional JavaScript -->
    <!-- jQuery first, then Popper.js, then Bootstrap JS -->
    <script src="https://code.jquery.com/jquery-3.2.1.min.js" integrity="sha256-hwg4gsxgFZhOsEEamdOYGBf13FyQuiTwlAQgxVSNgt4=" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.3/umd/popper.min.js" integrity="sha384-vFJXuSJphROIrBnz7yo7oB41mKfc8JzQZiCq4NCceLEaO4IHwicKwpJf9c9IpFgh" crossorigin="anonymous"></script>
    <script src="<c:url value='/js/bootstrap.js' />"></script>
    <script>
        $(function(){
            var listaDependencias;
            cargarTablaDependencias();
            $("#btnAgregarDependencia").unbind('click').on('click', ()=>{
               console.log($("#formAgregarDependencia").serialize()); 
               let direccion = "&direccion=";
               $.each($("#formAgregarDependencia .direccion"),function(){
                   direccion += $(this).val() + "|";
               });
               console.log(direccion);
               $.ajax({
                    type: 'POST',
                    url: './dependencias?action=registrar',
                    dataType: 'json',
                    contentType: 'application/x-www-form-urlencoded; charset=UTF-8',
                    data: $("#formAgregarDependencia").serialize() + direccion,
                    success: function(data, textStatus, jqXHR){
                        // access response data
                        console.log(data, textStatus, jqXHR);
                        $("#alertAgregado #nombreDependenciaNueva").text(data.nombreDependencia);
                        $("#alertAgregado").toggle();
                        setTimeout(function(){
                            $("#alertAgregado").toggle();
                        }, 5000);
                        cargarTablaDependencias();
                    }
                });
            });
            
            $("#btnEditarDependencia").unbind('click').on('click', ()=>{
               console.log($("#formEditarDependencia").serialize()); 
               let direccion = "&direccion=";
               $.each($("#formEditarDependencia .direccion"),function(){
                   direccion += $(this).val() + "|";
               });
               console.log(direccion);
               $.ajax({
                    type: 'POST',
                    url: './dependencias?action=editar&id_dependencia=' + $("#formEditarDependencia #idDependencia").val(),
                    dataType: 'json',
                    contentType: 'application/x-www-form-urlencoded; charset=UTF-8',
                    data: $("#formEditarDependencia").serialize() + direccion,
                    success: function(data, textStatus, jqXHR){
                        // access response data
                        console.log(data, textStatus, jqXHR);
                        $("#alertEditado #nombreDependenciaNueva").text(data.nombreDependencia);
                        $("#alertEditado").toggle();
                        setTimeout(function(){
                            $("#alertEditado").toggle();
                        }, 5000);
                        cargarTablaDependencias();
                    }
                });
            });
            
            $("#btnEliminarDependencia").unbind('click').on('click', ()=>{
               $.ajax({
                    type: 'POST',
                    url: './dependencias?action=eliminar&id_dependencia=' + $("#formEliminarDependencia #idDependencia").val(),
                    dataType: 'json',
                    contentType: 'application/x-www-form-urlencoded; charset=UTF-8',
                    success: function(data, textStatus, jqXHR){
                        // access response data
                        console.log(data, textStatus, jqXHR);
                        $("#alertEliminado #nombreDependenciaNueva").text(data.nombreDependencia);
                        $("#alertEliminado").toggle();
                        setTimeout(function(){
                            $("#alertEliminado").toggle();
                        }, 5000);
                        cargarTablaDependencias();
                    }
                });
            });
            
            function mostrarEditarDependencia() {
                $(".editar").unbind('click').on('click', function(){
                    let idObjDependencia = $(this).attr('data-idObjDependencia');
                    $("#modal-editarDependencia #idDependencia").val(listaDependencias[idObjDependencia].id_dependencia);
                    $("#modal-editarDependencia #nombreDependencia").val(listaDependencias[idObjDependencia].nombreDependencia);
                    $("#modal-editarDependencia #campus").val(listaDependencias[idObjDependencia].campus);
                    let arrayDireccion = listaDependencias[idObjDependencia].direccion.split('|');
                    $("#modal-editarDependencia #calle").val(arrayDireccion[0]);
                    $("#modal-editarDependencia #numero").val(arrayDireccion[1]);
                    $("#modal-editarDependencia #colonia").val(arrayDireccion[2]);
                    $("#modal-editarDependencia #ciudad").val(arrayDireccion[3]);
                    $("#modal-editarDependencia #codigoPostal").val(arrayDireccion[4]);
                });
            }
            
            function mostrarEliminarDependencia() {
                $(".eliminar").unbind('click').on('click', function(){
                    let idObjDependencia = $(this).attr('data-idObjDependencia');
                    $("#modal-eliminarDependencia #nombreDependencia").text(listaDependencias[idObjDependencia].nombreDependencia);
                    $("#modal-eliminarDependencia #idDependencia").val(listaDependencias[idObjDependencia].id_dependencia);
                });
            }

            function cargarTablaDependencias() {
                $.ajax({
                    type: 'GET',
                    url: './dependencias?action=mostrar',
                    dataType: 'json',
                    //contentType: 'application/x-www-form-urlencoded; charset=UTF-8',
                    //data: $("#formAgregarDependencia").serialize() + direccion,
                    success: function(dependencias, textStatus, jqXHR){
                        // access response data
                        console.log(dependencias, textStatus, jqXHR);
                        listaDependencias = dependencias;
                        $("tbody").empty();
                        $.each(dependencias, function(id, dependencia) {
                            let btnEditar = '<button type="button" class="editar btn btn-info my-1" data-toggle="modal" data-target="#modal-editarDependencia" data-idObjDependencia="'+ id +'"><i class="fa fa-pencil"></i></button>';
                            let btnEliminar = '<button type="button " class="eliminar btn btn-danger my-1" data-toggle="modal" data-target="#modal-eliminarDependencia" data-idObjDependencia="'+ id +'"><i class="fa fa-trash-o"></i></button>';
                            let tr = $('<tr class="text-truncate">').append(
                                $('<td>').text(dependencia.nombreDependencia),
                                $('<td>').text(dependencia.campus),
                                $('<td class="text-truncate">').text(dependencia.direccion.replace(/[\x7C]/g, ' ')),
                                $('<td class="text-center d-flex flex-column flex-lg-row justify-content-around">').html(btnEditar + btnEliminar)
                            ); //.appendTo('#records_table');
                            $("table").append(tr);
                            //console.log(tr.wrap('<tr>').html());
                        });
                        mostrarEditarDependencia();
                        mostrarEliminarDependencia();
                    }
                });
            }  
        });
    </script>
  </body>
</html>