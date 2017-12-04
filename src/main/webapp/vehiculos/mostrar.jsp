<%-- 
    Document   : mostrar
    Created on : 13/11/2017, 03:50:50 PM
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
    <h3 class="text-center p-1">Vehículos</h3>
        <div class="row col-12 d-flex justify-content-center align-items-center my-4 ml-0">
            <div id="alertAgregado" class="alert alert-success alert-dismissible fade show col-12 oculto-inicio" role="alert">
                Vehículo <strong id="nombreVehiculoNuevo"></strong> agregado con éxito.
                <button type="button" class="close" data-dismiss="alert" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
            </div>
            <div id="alertEditado" class="alert alert-success alert-dismissible fade show col-12 oculto-inicio" role="alert">
                Vehículo <strong id="nombreVehiculoNuevo"></strong> editado con éxito.
                <button type="button" class="close" data-dismiss="alert" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
            </div>
            <div id="alertEliminado" class="alert alert-success alert-dismissible fade show col-12 oculto-inicio" role="alert">
                Vehículo <strong id="nombreVehiculoNuevo"></strong> eliminado con éxito.
                <button type="button" class="close" data-dismiss="alert" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
            </div>
            <form class="form-group col-11 col-md-6 mx-md-5 px-0 mb-lg-0 mb-2">
            <div class="input-group">
                <input class="form-control" type="search" placeholder="Buscar" aria-label="Search">
                <span class="input-group-btn">
                <button class="btn btn-info" type="submit">Buscar</button>
                </span>
            </div> 
            </form>
            <button type="button" class="btn btn-info col-md-3 col-11" data-toggle="modal" data-target="#modal-agregarVehiculo"><i class="fa fa-plus-circle"></i> Agregar vehículo</button>
        </div>
  </section>
  <!-- Fin de seccion 1 -->

  <!-- Contenido principal -->
  <div class="container mt-5 table-responsive ">

    
    <!-- Tabla de registros -->
    
      <table class="table table-striped">
        <thead>
          <tr>
            <th scope="col">Placa</th>
            <th scope="col">Modelo</th>
            <th scope="col" >Año</th>
            <th scope="col" >Marca</th>
            <th scope="col" >Dependencia</th>
            <th scope="col" >Estado</th>
            <th scope="col" >Nivel gasolina</th>
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

<!--Inicio de modal agregar vehículo -->
<div class="modal" id="modal-agregarVehiculo" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
        <div class="modal-dialog modal-lg" role="document">
        <div class="modal-content ">
            <div class="modal-header">
                <h3 class="modal-title" id="exampleModalLabel">Agregar Vehículo</h3>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
            </div>

            <div class="modal-body p-5 col-11 ">
                <form id="formAgregarVehiculo" action="">
                    <div class="form-group row">
                        <label for="" class="col-form-label col-4">Numero de placa:</label>
                        <input name="numero_placa" type="text" class="form-control col-8" id="">
                    </div>
                    <div class="form-group row">
                            <label for="" class="col-form-label col-4">Modelo:</label>
                            <input name="modelo"type="text" class="form-control col-8" id="">
                    </div>
                    <div class="form-group row ">
                            <label for="" class="col-4">Año: </label>
                            <select name="anio" class="form-control col-4" id="">
                                <option>2017</option>
                                <option>2016</option>
                                <option>2015</option>
                                <option>2014</option>
                                <option>2013</option>
                              </select> 
                    </div>                   
                    <div class="form-group row">
                            <label for="" class="col-form-label col-4">Marca:</label>
                            <input name="marca" type="text" class="form-control col-8" id="">
                    </div>
                    <div class="form-group row ">
                            <label for="" class="col-4">Dependencia: </label>
                            <select name="dependencia" class="form-control col-8" id="selectDependencia">
                            </select> 
                    </div>
                    <div class="form-group row ">
                            <label for="" class="col-4">Estado: </label>
                            <select name="estado" class="form-control col-8" id="">
                                <option>Disponible</option>
                                <option>No disponible</option>
                            </select> 
                    </div>
                    <div class="form-group row ">
                            <label for="" class="col-4">Nivel de gasolina: </label>
                            <select name="nivel_gasolina" class="form-control col-8" id="">
                                <option value="5">Lleno</option>
                                <option value="4">3/4</option>
                                <option value="3">1/2</option>
                                <option value="2">1/4</option>
                                <option value="1">Vacío</option>
                            </select> 
                    </div>
                </form>
            </div>
            
            <div class="modal-footer">
            <button type="button" class="btn btn-secondary" data-dismiss="modal">Cancelar</button>
            <button id="btnAgregarVehiculo" type="button" class="btn btn-success" data-dismiss="modal">Agregar</button>
            </div>
        </div>
        </div>
    </div>
  <!-- Fin de modal agregar -->

<!--Inicio de modal editar vehículo -->
<div class="modal" id="modal-editarVehiculo" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
        <div class="modal-dialog modal-lg" role="document">
        <div class="modal-content ">
            <div class="modal-header">
                <h3 class="modal-title" id="exampleModalLabel">Editar Vehículo</h3>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
            </div>

            <div class="modal-body p-5 col-11 ">
                <form id="formEditarVehiculo" action="">
                    <input type="hidden" id="idVehiculo" name="id_vehiculoViejo">
                    <div class="form-group row">
                        <label for="" class="col-form-label col-4">Numero de placa:</label>
                        <input type="text" class="form-control col-8" id="numeroPlaca" name="id_vehiculo" >
                    </div>
                    <div class="form-group row">
                            <label for="" class="col-form-label col-4">Modelo:</label>
                            <input type="text" class="form-control col-8" id="modelo" name="modelo">
                    </div>
                    <div class="form-group row ">
                            <label for="" class="col-4">Año: </label>
                            <select class="form-control col-4" id="anio" name="anio">
                                <option>2017</option>
                                <option>2016</option>
                                <option>2015</option>
                                <option>2014</option>
                                <option>2013</option>
                              </select> 
                    </div>                   
                    <div class="form-group row">
                            <label for="" class="col-form-label col-4">Marca:</label>
                            <input type="text" class="form-control col-8" id="marca" name="marca">
                    </div>
                    <div class="form-group row ">
                            <label for="" class="col-4">Dependencia: </label>
                            <select class="form-control col-8" id="selectDependencia" name="dependencia">
                              </select> 
                    </div>
                    <div class="form-group row ">
                            <label for="" class="col-4">Estado: </label>
                            <select class="form-control col-8" id="estado" name="estado">
                                <option>Disponible</option>
                                <option>No disponible</option>
                            </select> 
                    </div>
                    <div class="form-group row ">
                            <label for="" class="col-4">Nivel de gasolina: </label>
                            <select class="form-control col-8" id="nivelGasolina" name="nivel_gasolina">
                                <option value="5">Lleno</option>
                                <option value="4">3/4</option>
                                <option value="3">1/2</option>
                                <option value="2">1/4</option>
                                <option value="1">Vacío</option>
                            </select> 
                    </div>
                </form>
            </div>
            
            <div class="modal-footer">
            <button type="button" class="btn btn-secondary" data-dismiss="modal">Cancelar</button>
            <button id="btnEditarVehiculo" type="button" class="btn btn-success" data-dismiss="modal">Editar</button>
            </div>
        </div>
        </div>
    </div>
  <!-- Fin de modal editar --> 


<!--Inicio de modal eliminar -->
<div class="modal" id="modal-eliminarVehiculo" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
        <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <h3 class="modal-title" id="exampleModalLabel">Eliminar Vehículo</h3>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
            </div>
            <div class="modal-body p-5">
                ¿Realmente desea eliminar el vehículo <strong id="numeroPlaca"></strong> ?   
            </div>
            <div class="modal-footer">
            <button type="button" class="btn btn-secondary" data-dismiss="modal">Cancelar</button>
            <form id="formEliminarVehiculo" action="">
                <input id="idVehiculo" type="hidden" name="id_vehiculo">
                <button id="btnEliminarVehiculo" type="button" class="btn btn-danger" data-dismiss="modal">Eliminar</button>
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
            var listaVehiculos;
            cargarTablaVehiculos();
            $("#btnAgregarVehiculo").unbind('click').on('click', ()=>{
               console.log($("#formAgregarVehiculo").serialize()); 
               $.ajax({
                    type: 'POST',
                    url: './vehiculos?action=registrar',
                    dataType: 'json',
                    contentType: 'application/x-www-form-urlencoded; charset=UTF-8',
                    data: $("#formAgregarVehiculo").serialize(),
                    success: function(data, textStatus, jqXHR){
                        // access response data
                        console.log(data, textStatus, jqXHR);
                        $("#alertAgregado #nombreVehiculoNuevo").text(data.id_vehiculo);
                        $("#alertAgregado").toggle();
                        setTimeout(function(){
                            $("#alertAgregado").toggle();
                        }, 5000);
                        cargarTablaVehiculos();
                    }
                });
            });
            
            $("#btnEditarVehiculo").unbind('click').on('click', ()=>{
               console.log($("#formEditarVehiculo").serialize()); 
               $.ajax({
                    type: 'POST',
                    url: './vehiculos?action=editar',
                    dataType: 'json',
                    contentType: 'application/x-www-form-urlencoded; charset=UTF-8',
                    data: $("#formEditarVehiculo").serialize(),
                    success: function(data, textStatus, jqXHR){
                        // access response data
                        console.log(data, textStatus, jqXHR);
                        $("#alertEditado #nombreVehiculoNuevo").text(data.id_vehiculo);
                        $("#alertEditado").toggle();
                        setTimeout(function(){
                            $("#alertEditado").toggle();
                        }, 5000);
                        cargarTablaVehiculos();
                    }
                });
            });
            
            $("#btnEliminarVehiculo").unbind('click').on('click', ()=>{
               $.ajax({
                    type: 'POST',
                    url: './vehiculos?action=eliminar',
                    dataType: 'json',
                    contentType: 'application/x-www-form-urlencoded; charset=UTF-8',
                    data: $("#formEliminarVehiculo").serialize(),
                    success: function(data, textStatus, jqXHR){
                        // access response data
                        console.log(data, textStatus, jqXHR);
                        $("#alertEliminado #nombreVehiculoNuevo").text(data.id_vehiculo);
                        $("#alertEliminado").toggle();
                        setTimeout(function(){
                            $("#alertEliminado").toggle();
                        }, 5000);
                        cargarTablaVehiculos();
                    }
                });
            });
            
            
            function mostrarEditarVehiculo() {
                $(".editar").unbind('click').on('click', function(){
                    let idObjVehiculo = $(this).attr('data-idObjVehiculo');
                    $("#modal-editarVehiculo #idVehiculo").val(listaVehiculos[idObjVehiculo].id_vehiculo);
                    $("#modal-editarVehiculo #numeroPlaca").val(listaVehiculos[idObjVehiculo].id_vehiculo);
                    $("#modal-editarVehiculo #modelo").val(listaVehiculos[idObjVehiculo].modelo);
                    $("#modal-editarVehiculo #anio").val(listaVehiculos[idObjVehiculo].anio);
                    $("#modal-editarVehiculo #estado").val(listaVehiculos[idObjVehiculo].estado);
                    $("#modal-editarVehiculo #selectDependencia").val(listaVehiculos[idObjVehiculo].dependencia.id_dependencia);
                    $("#modal-editarVehiculo #marca").val(listaVehiculos[idObjVehiculo].marca);
                    $("#modal-editarVehiculo #nivelGasolina").val(listaVehiculos[idObjVehiculo].nivelGasolina);
                    
                });
            }
            
            function mostrarEliminarVehiculo() {
                $(".eliminar").unbind('click').on('click', function(){
                    let idObjVehiculo = $(this).attr('data-idObjVehiculo');
                    $("#modal-eliminarVehiculo #numeroPlaca").text(listaVehiculos[idObjVehiculo].id_vehiculo);
                    $("#modal-eliminarVehiculo #idVehiculo").val(listaVehiculos[idObjVehiculo].id_vehiculo);
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
                            $('#formAgregarVehiculo #selectDependencia').append(new Option(dependencia.nombreDependencia,dependencia.id_dependencia)); 
                            $('#formEditarVehiculo #selectDependencia').append(new Option(dependencia.nombreDependencia,dependencia.id_dependencia)); 
                        });
                    }
               });
           }
           cargarDependenciasEnSelect();
           
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

            function cargarTablaVehiculos() {
                $.ajax({
                    type: 'GET',
                    url: './vehiculos?action=mostrar',
                    dataType: 'json',
                    //contentType: 'application/x-www-form-urlencoded; charset=UTF-8',
                    //data: $("#formAgregarDependencia").serialize() + direccion,
                    success: function(vehiculos, textStatus, jqXHR){
                        // access response data
                        console.log(vehiculos, textStatus, jqXHR);
                        listaVehiculos = vehiculos;
                        $("tbody").empty();
                        $.each(vehiculos, function(id, vehiculo) {
                            let btnEditar = '<button type="button" class="editar btn btn-info my-1" data-toggle="modal" data-target="#modal-editarVehiculo" data-idObjVehiculo="'+ id +'"><i class="fa fa-pencil"></i></button>';
                            let btnEliminar = '<button type="button " class="eliminar btn btn-danger my-1" data-toggle="modal" data-target="#modal-eliminarVehiculo" data-idObjVehiculo="'+ id +'"><i class="fa fa-trash-o"></i></button>';
                            let tr = $('<tr class="text-truncate">').append(
                                $('<td>').text(vehiculo.id_vehiculo),
                                $('<td>').text(vehiculo.modelo),
                                $('<td>').text(vehiculo.anio),
                                $('<td>').text(vehiculo.estado),
                                $('<td>').text(vehiculo.dependencia.nombreDependencia),
                                $('<td>').text(vehiculo.marca),
                                $('<td>').text(mostrarNivelGasolina(vehiculo.nivelGasolina)),
                                $('<td class="text-center d-flex flex-column flex-lg-row justify-content-around">').html(btnEditar + btnEliminar)
                            ); //.appendTo('#records_table');
                            $("table").append(tr);
                            //console.log(tr.wrap('<tr>').html());
                        });
                        mostrarEditarVehiculo();
                        mostrarEliminarVehiculo();
                    }
                });
            }  
        });
    </script>
  </body>
</html>