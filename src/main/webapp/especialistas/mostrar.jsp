<%-- 
    Document   : mostrar
    Created on : 13/11/2017, 03:54:52 PM
    Author     : andreaml
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
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
                        <a class="nav-dependencia nav-link text-dark p-3 dropdown-toggle px-4 px-md-5 boton" href="" role="button">Dependencias </a>
                        <!-- Inicio de submenu -->
                        <div class="contenido text-left ">
                            <a href="<c:url value='/atencion-usuarios/dependencias' />" class="">Dependencias</a>
                            <a href="<c:url value='/atencion-usuarios/areas' />" class="">Áreas</a>
                            <a href="<c:url value='/atencion-usuarios/vehiculos' />" class="">Vehículos</a>
                        </div>
                        <!-- Fin de submenu -->      
                    </div>

                    <a class="nav-dependencia nav-link text-dark p-3 selected   px-4 px-md-5 mr-1" href="05-servicios.html">Servicios</a>
                    <div class="nav-dependencia dropSubmenu dropdown">
                        <a class="nav-link text-dark p-3 dropdown-toggle   px-4 px-md-5 act" href=""  role="button">Usuarios </a>
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
    <h3 class="text-center p-1">Usuarios tipo Especialistas</h3>
            <div id="alertAgregado" class="alert alert-success alert-dismissible fade show col-12 oculto-inicio" role="alert">
                Especialista <strong id="correoEspecialistaNuevo"></strong> agregado con éxito.
                <button type="button" class="close" data-dismiss="alert" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
            </div>
            <div id="alertEditado" class="alert alert-success alert-dismissible fade show col-12 oculto-inicio" role="alert">
                Especialista <strong id="correoEspecialistaNuevo"></strong> editado con éxito.
                <button type="button" class="close" data-dismiss="alert" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
            </div>
            <div id="alertEliminado" class="alert alert-success alert-dismissible fade show col-12 oculto-inicio" role="alert">
                Especialista <strong id="correoEspecialistaNuevo"></strong> eliminado con éxito.
                <button type="button" class="close" data-dismiss="alert" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
            </div>
        <div class="row col-12 d-flex justify-content-center align-items-center my-4 ml-0">
            <form class="form-group col-11 col-md-6 mx-md-5 px-0 mb-lg-0 mb-2">
            <div class="input-group">
                <input class="form-control " type="search" placeholder="Buscar" aria-label="Search">
                <span class="input-group-btn">
                <button class="btn btn-info " type="submit">Buscar</button>
                </span>
            </div> 
            </form>
            <button type="button" class="btn btn-info col-md-3 col-11" data-toggle="modal" data-target="#modal-agregarEspecialista"><i class="fa fa-plus-circle"></i> Agregar usuario</button>
    </div>
  </section>
  <!-- Fin de seccion 1 -->

  <!-- Contenido principal -->
  <div class="container mt-5 table-responsive">

    
    <!-- Tabla de registros -->
    
      <table class="table table-striped ">
        <thead>
          <tr>
            <th scope="col">Correo</th>
            <th scope="col">Número de trabajador</th>
            <th scope="col" >Nombre completo</th>
            <th scope="col" >Profesión</th>
            <th scope="col" >Área</th>
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

<!--Inicio de modal agregar usuario tipo especialista -->
<div class="modal" id="modal-agregarEspecialista" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
    <div class="modal-dialog modal-lg" role="document">
        <div class="modal-content ">
            <div class="modal-header">
                <h3 class="modal-title" id="exampleModalLabel">Agregar Usuario tipo Especialista</h3>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
            </div>
            <div class="modal-body p-5 col-11 ">
                <form id="formAgregarEspecialista">
                    <div class="form-group row">
                        <label for="" class="col-form-label col-4">Correo universitario:</label>
                        <input type="email" class="form-control col-8" id="correo" name="correo">
                    </div>
                    <div class="form-group row">
                        <label for="" class="col-form-label col-4">Número de trabajador:</label>
                        <input type="text" class="form-control col-4" id="numTrabajador" name="num_trabajador">
                    </div>
                    <div class="form-group row">
                        <label for="" class="col-form-label col-4">Primer nombre:</label>
                        <input type="text" class="form-control col-8" id="primerNombre" name="primer_nombre">
                    </div>
                    <div class="form-group row">
                        <label for="" class="col-form-label col-4">Segundo nombre:</label>
                        <input type="text" class="form-control col-8" id="segundoNombre" name="segundo_nombre">
                    </div>
                    <div class="form-group row">
                        <label for="" class="col-form-label col-4">Apellido paterno:</label>
                        <input type="text" class="form-control col-8" id="apellidoPaterno" name="apellido_paterno">
                    </div>
                    <div class="form-group row">
                        <label for="" class="col-form-label col-4">Apellido materno:</label>
                        <input type="text" class="form-control col-8" id="apellidoMaterno" name="apellido_materno">
                    </div>
                    <div class="form-group row ">
                        <label for="" class="col-4">Profesión: </label>
                        <select class="form-control col-4" id="profesion">
                            <option>Licenciatura</option>
                            <option>Maestría</option>
                            <option>Doctorado</option>
                        </select>
                        <input type="text" class="form-control col-4" id="nombreProfesion">
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
                <button type="button" class="btn btn-success" data-dismiss="modal" id="btnAgregarEspecialista">Agregar</button>
            </div>
        </div>
    </div>
</div>
  <!-- Fin de modal agregar -->

<!--Inicio de modal editar usuario tipo especialista -->
<div class="modal" id="modal-editarEspecialista" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
    <div class="modal-dialog modal-lg" role="document">
      <div class="modal-content ">
        <div class="modal-header">
            <h3 class="modal-title" id="exampleModalLabel">Editar Usuario tipo Especialista</h3>
            <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                <span aria-hidden="true">&times;</span>
            </button>
        </div>
        <div class="modal-body p-5 col-11 ">
            <form id="formEditarEspecialista">
                <div class="form-group row">
                    <label for="" class="col-form-label col-4">Correo universitario:</label>
                    <input type="email" class="form-control col-8" id="correo" name="correo">
                    <input type="hidden" id="correoViejo" name="correoViejo">
                </div>
                <div class="form-group row">
                    <label for="" class="col-form-label col-4">Número de trabajador:</label>
                    <input type="text" class="form-control col-4" id="numTrabajador" name="num_trabajador">
                </div>
                <div class="form-group row">
                    <label for="" class="col-form-label col-4">Primer nombre:</label>
                    <input type="text" class="form-control col-8" id="primerNombre" name="primer_nombre">
                </div>
                <div class="form-group row">
                    <label for="" class="col-form-label col-4">Segundo nombre:</label>
                    <input type="text" class="form-control col-8" id="segundoNombre" name="segundo_nombre">
                </div>
                <div class="form-group row">
                    <label for="" class="col-form-label col-4">Apellido paterno:</label>
                    <input type="text" class="form-control col-8" id="apellidoPaterno" name="apellido_paterno">
                </div>
                <div class="form-group row">
                    <label for="" class="col-form-label col-4">Apellido materno:</label>
                    <input type="text" class="form-control col-8" id="apellidoMaterno" name="apellido_materno">
                </div>
                <div class="form-group row ">
                    <label for="" class="col-4">Profesión: </label>
                    <select class="form-control col-4" id="profesion">
                        <option>Licenciatura</option>
                        <option>Maestría</option>
                        <option>Doctorado</option>
                    </select>
                    <input type="text" class="form-control col-4" id="nombreProfesion">
                </div>
                 
                <div class="form-group row ">
                    <label for="" class="col-4">Área: </label>
                    <select class="form-control col-8" id="selectArea">
                    </select> 
                </div>
            </form>
        </div>
        
          <div class="modal-footer">
            <button type="button" class="btn btn-secondary" data-dismiss="modal">Cancelar</button>
            <button type="button" class="btn btn-success" data-dismiss="modal" id="btnEditarEspecialista">Editar</button>
          </div>
      </div>
    </div>
</div>
<!-- Fin de modal editar --> 


<!--Inicio de modal eliminar -->
  <div class="modal" id="modal-eliminarEspecialista" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
    <div class="modal-dialog" role="document">
      <div class="modal-content">
        <div class="modal-header">
          <h3 class="modal-title" id="exampleModalLabel">Eliminar UsuarioEspecialista</h3>
          <button type="button" class="close" data-dismiss="modal" aria-label="Close">
            <span aria-hidden="true">&times;</span>
          </button>
        </div>
        <div class="modal-body p-5">
            ¿Realmente desea eliminar al Usuario <strong id="correoEspecialista"></strong>?   
        </div>
        <div class="modal-footer">
            <input type="hidden" id="idEspecialista">
          <button type="button" class="btn btn-secondary" data-dismiss="modal">Cancelar</button>
          <button type="button" class="btn btn-danger" data-dismiss="modal">Eliminar</button>
         </div>
      </div>
    </div>
  </div>
<!-- Fin modal eliminar -->

<!-- Fin de modal -->

    <!-- Optional JavaScript -->
    <!-- jQuery first, then Popper.js, then Bootstrap JS -->
    <script src="<c:url value='/js/jquery-3.2.1.min.js' />"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.3/umd/popper.min.js" integrity="sha384-vFJXuSJphROIrBnz7yo7oB41mKfc8JzQZiCq4NCceLEaO4IHwicKwpJf9c9IpFgh" crossorigin="anonymous"></script>
    <script src="<c:url value='/js/bootstrap.js' />"></script>
    <script>
        $(function(){
            var listaEspecialistas;
            cargarTablaEspecialistas();
            $("#btnAgregarEspecialista").unbind('click').on('click', ()=>{
               console.log($("#formAgregarEspecialista").serialize()); 
               let profesion = "&profesion=" + $("#formAgregarEspecialista #profesion").val() + "|" + $("#formAgregarEspecialista #nombreProfesion").val();
               $.ajax({
                    type: 'POST',
                    url: './especialistas?action=registrar',
                    dataType: 'json',
                    contentType: 'application/x-www-form-urlencoded; charset=UTF-8',
                    data: $("#formAgregarEspecialista").serialize() + profesion,
                    success: function(data, textStatus, jqXHR){
                        // access response data
                        console.log(data, textStatus, jqXHR);
                        $("#alertAgregado #correoEspecialistaNuevo").text(data.correo);
                        $("#alertAgregado").toggle();
                        setTimeout(function(){
                            $("#alertAgregado").toggle();
                        }, 5000);
                        cargarTablaEspecialistas();
                    }
                });
            });
            
            $("#btnEditarEspecialista").unbind('click').on('click', ()=>{
               console.log($("#formEditarEspecialista").serialize()); 
               let profesion = "&profesion=" + $("#formAgregarEspecialista #profesion").val() + " " + $("#formAgregarEspecialista #nombreProfesion").val();
               $.ajax({
                    type: 'POST',
                    url: './especialistas?action=editar',
                    dataType: 'json',
                    contentType: 'application/x-www-form-urlencoded; charset=UTF-8',
                    data: $("#formEditarEspecialista").serialize() + profesion,
                    success: function(data, textStatus, jqXHR){
                        // access response data
                        console.log(data, textStatus, jqXHR);
                        $("#alertEditado #correoEspecialistaNuevo").text(data.correo);
                        $("#alertEditado").toggle();
                        setTimeout(function(){
                            $("#alertEditado").toggle();
                        }, 5000);
                        cargarTablaEspecialistas();
                    }
                });
            });
            
            $("#btnEliminarEspecialista").unbind('click').on('click', ()=>{
               $.ajax({
                    type: 'POST',
                    url: './especialistas?action=eliminar&correo=' + $("#formEliminarEspecialista #correo").val(),
                    dataType: 'json',
                    contentType: 'application/x-www-form-urlencoded; charset=UTF-8',
                    success: function(data, textStatus, jqXHR){
                        // access response data
                        console.log(data, textStatus, jqXHR);
                        $("#alertEliminado #correoEspecialistaNuevo").text(data.correo);
                        $("#alertEliminado").toggle();
                        setTimeout(function(){
                            $("#alertEliminado").toggle();
                        }, 5000);
                        cargarTablaEspecialistas();
                    }
                });
            });
            
            function mostrarEditarEspecialista() {
                $(".editar").unbind('click').on('click', function(){
                    let idObjEspecialista = $(this).attr('data-idObjEspecialista');
                    $("#modal-editarEspecialista #correoViejo").val(listaEspecialistas[idObjEspecialista].correo);
                    $("#modal-editarEspecialista #correo").val(listaEspecialistas[idObjEspecialista].correo);
                    $("#modal-editarEspecialista #numTrabajador").val(listaEspecialistas[idObjEspecialista].nombreEspecialista);
                    $("#modal-editarEspecialista #primerNombre").val(listaEspecialistas[idObjEspecialista].campus);
                    $("#modal-editarEspecialista #area").val(listaEspecialistas[idObjEspecialista].areaArea.id_area);
                    let arrayProfesion = listaEspecialistas[idObjEspecialista].profesion.split('|');
                    $("#modal-editarEspecialista #profesion").val(arrayProfesion[0]);
                    $("#modal-editarEspecialista #nombreProfesion").val(arrayProfesion[1]);
                });
            }
            
            function mostrarEliminarEspecialista() {
                $(".eliminar").unbind('click').on('click', function(){
                    let idObjEspecialista = $(this).attr('data-idObjEspecialista');
                    $("#modal-eliminarEspecialista #correoEspecialista").text(listaEspecialistas[idObjEspecialista].correo);
                    $("#modal-eliminarEspecialista #idEspecialista").val(listaEspecialistas[idObjEspecialista].correo);
                });
            }

            function cargarTablaEspecialistas() {
                $.ajax({
                    type: 'GET',
                    url: './especialistas?action=mostrar',
                    dataType: 'json',
                    success: function(especialistas, textStatus, jqXHR){
                        // access response data
                        console.log(especialistas, textStatus, jqXHR);
                        listaEspecialistas = especialistas;
                        $("tbody").empty();
                        $.each(especialistas, function(id, especialista) {
                            let btnEditar = '<button type="button" class="editar btn btn-info my-1" data-toggle="modal" data-target="#modal-editarEspecialista" data-idObjEspecialista="'+ id +'"><i class="fa fa-pencil"></i></button>';
                            let btnEliminar = '<button type="button " class="eliminar btn btn-danger my-1" data-toggle="modal" data-target="#modal-eliminarEspecialista" data-idObjEspecialista="'+ id +'"><i class="fa fa-trash-o"></i></button>';
                            let tr = $('<tr class="text-truncate">').append(
                                $('<td>').text(especialista.correo),
                                $('<td>').text(especialista.numTrabajador),
                                $('<td>').text(especialista.nombre1 + " " + especialista.nombre2 + " " + especialista.apellidoP + " " + especialista.apellidoM),
                                $('<td>').text(especialista.profesion.replace(/[\x7C]/g, ' ')),
                                $('<td>').text(especialista.areaArea.nombreArea),
                                $('<td class="text-center d-flex flex-column flex-lg-row justify-content-around">').html(btnEditar + btnEliminar)
                            );
                            $("table").append(tr);
                            //console.log(tr.wrap('<tr>').html());
                        });
                        cargarAreasEnSelect();
                        mostrarEditarEspecialista();
                        mostrarEliminarEspecialista();
                    }
                });
            }
            function cargarAreasEnSelect() {
               $.ajax({
                    type: 'GET',
                    url: './areas?action=mostrar',
                    dataType: 'json',
                    success: function(areas, textStatus, jqXHR){
                        // access response data
                        $("#formAgregarEspecialista #selectArea").empty();
                        $("#formEditarEspecialista #selectArea").empty();
                        $.each(areas, function(id, area) {
                            $('#formAgregarEspecialista #selectArea').append(new Option(area.nombreArea,area.id_area)); 
                            $('#formEditarEspecialista #selectArea').append(new Option(area.nombreArea,area.id_area)); 
                        });
                    }
               });
           }
        });
    </script>
  </body>
</html>