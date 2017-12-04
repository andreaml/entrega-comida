<%-- 
    Document   : inicio
    Created on : 20/11/2017, 01:20:09 PM
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
    <link rel="stylesheet"  href="<c:url value='/css/jquery-ui.min.css' />">
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
        <div class="col-12 col-md-8 px-0"><h1 class="display-5">Mesa de ayuda UdeC</h1></div>
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
                        <a class="nav-dependencia nav-link text-dark p-3 px-4 px-md-5 selected mr-1 act" href="<c:url value='/atencion-usuarios' />">Inicio</a>
          
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


<!-- Formulario -->
  <section class="container-fluid mt-3">
    <div class="container d-flex flex-column col-12 col-md-8 col-lg-6 p-1">
      <h3 class="align-self-center my-4">Levantar Ticket</h3>
      <div id="alertAgregado" class="alert alert-success alert-dismissible fade show col-12 oculto-inicio" role="alert">
          Ticket <strong id="ticketNuevo"></strong> dado de alta con éxito.
          <button type="button" class="close" data-dismiss="alert" aria-label="Close">
              <span aria-hidden="true">&times;</span>
          </button>
      </div>
      <div id="alertUsuarioAgregado" class="alert alert-success alert-dismissible fade show col-12 oculto-inicio" role="alert">
          Usuario <strong id="correoUsuarioNuevo"></strong> agregado con éxito.
          <button type="button" class="close" data-dismiss="alert" aria-label="Close">
              <span aria-hidden="true">&times;</span>
          </button>
      </div>
      <!-- Contenido del formulario -->
        <form id="formAgregarTicket">
            <div class="form-group row mr-md-3 ml-md-3 p-2 mt-3">
              <label for="" class="col-4">Emisor: </label>
              <div class="col-8 form-group px-0 my-0">
                <input type="text" id="emisor" name="emisor" class="form-control" placeholder="usuario@ucol.mx" autofocus>
                <div id="mensajeUsuarioNoEncontrado" class="oculto-inicio">
                    <a class="text-danger underlinedhover" id="btnModalAgregarUsuario">Usuario no encontrado, hacer click aquí para crear un usuario nuevo.</a>
                </div>
              </div>
            </div>
            <div class="form-group row mr-md-3 ml-md-3 p-2">
                <label for="" class="col-4">Titulo: </label>
                <input type="text" id="titulo" name="titulo" class="form-control col-8" placeholder="Escriba el titulo del ticket"> 
            </div>

            <div class="form-group row mr-md-3 ml-md-3 p-2">
                <label for="" class="col-4">Descripción: </label>
                <textarea class="form-control col-8" id="descripcion" name="descripcion" rows="3" placeholder="Escriba la descripción del problema"></textarea>
            </div>

            <div class="form-group row mr-md-3 ml-md-3 p-2">
                <label for="" class="col-4">Tipo de servicio: </label>
                <select class="form-control col-8" id="selectTipoServicio">
                </select> 
                <input type="hidden" id="idArea" name="id_area">
            </div>

            <div class="form-group row mr-md-3 ml-md-3 p-2 ">
                <label for="" class="col-4">Especialista: </label>
                <select class="form-control col-8" id="selectEspecialista" name="especialista">
                </select> 
            </div>
       </form>  
        <div class="text-right px-md-4 mt-3 mb-5 pt-2">
          <button id="btnAgregarTicket" class="btn btn-info">Guardar cambios </button>
        </div>
     
      <!-- Fin del contenido del formulario -->
    </div>  
  </section>
<!-- Fin de formulario -->

<!-- Pie de pagina -->
  <footer class="mt-5 container-fluid bg-dark text-center">
    <div class="container navbar navbar-dark bg-dark ">
      <p class="text-white mr-auto ml-auto"><i class="fa fa-registered"></i> Derechos reservados Universidad de Colima | Página desarrollada por la Facultad de Telemática - 2017</p>
    </div>
  </footer>
<!-- Fin de pie de pagina -->

<!--Inicio de modal agregar usuario tipo usuario -->
<div class="modal" id="modal-agregarUsuario" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
    <div class="modal-dialog modal-lg" role="document">
        <div class="modal-content ">
            <div class="modal-header">
                <h3 class="modal-title" id="exampleModalLabel">Agregar Usuario tipo Usuario</h3>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
            </div>

            <div class="modal-body p-5 col-11 ">
                <form id="formAgregarUsuario" action="">
                    <div class="form-group row">
                        <label for="" class="col-form-label col-4">Correo universitario:</label>
                        <input name="correo" type="text" class="form-control col-8" id="correo">
                    </div>
                    <div class="form-group row">
                        <label for="" class="col-form-label col-4">Número de cuenta:</label>
                        <input name="num_cuenta" type="text" class="form-control col-4" id="">
                    </div>
                    <div class="form-group row">
                        <label for="" class="col-form-label col-4">Primer nombre:</label>
                        <input name="primer_nombre" type="text" class="form-control col-8" id="">
                    </div>
                    <div class="form-group row">
                        <label for="" class="col-form-label col-4">Segundo nombre:</label>
                        <input name="segundo_nombre" type="text" class="form-control col-8" id="">
                    </div>
                    <div class="form-group row">
                        <label for="" class="col-form-label col-4">Apellido paterno:</label>
                        <input name="apellido_paterno" type="text" class="form-control col-8" id="">
                    </div>
                    <div class="form-group row">
                        <label for="" class="col-form-label col-4">Apellido materno:</label>
                        <input name="apellido_materno" type="text" class="form-control col-8" id="">
                    </div>

                    <div class="form-group row ">
                        <label for="" class="col-4">Tipo de usuario: </label>
                        <select name="tipo" class="form-control col-4" id="">
                            <option value="Alumno">Alumno</option>
                            <option value="Trabajador">Trabajador</option>
                        </select> 
                    </div>
                    <div class="form-group row ">
                        <label for="" class="col-4">Dependencia: </label>
                        <select class="form-control col-8" id="selectDependencia">

                        </select> 
                    </div>                        
                </form>
            </div>

            <div class="modal-footer">
                <button type="button" class="btn btn-secondary" data-dismiss="modal">Cancelar</button>
                <button id="btnAgregarUsuario" type="button" class="btn btn-success" data-dismiss="modal">Agregar</button>
            </div>
        </div>
    </div>
</div>
<!-- Fin de modal agregar -->


    <!-- Optional JavaScript -->
    <script src="https://code.jquery.com/jquery-3.2.1.min.js" integrity="sha256-hwg4gsxgFZhOsEEamdOYGBf13FyQuiTwlAQgxVSNgt4=" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.3/umd/popper.min.js" integrity="sha384-vFJXuSJphROIrBnz7yo7oB41mKfc8JzQZiCq4NCceLEaO4IHwicKwpJf9c9IpFgh" crossorigin="anonymous"></script>
    <script src="<c:url value='/js/jquery-ui.min.js' />"></script>
    <script src="<c:url value='/js/bootstrap.js' />"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/moment.js/2.19.2/moment.min.js"></script>
    <script>
        $(function(){
            var listaUsuarios = [];
            function cargarEmisoresEnSelect() {
               $.ajax({
                    type: 'GET',
                    url: './atencion-usuarios/usuarios?action=mostrar',
                    dataType: 'json',
                    success: function(usuarios, textStatus, jqXHR){
                        $('#emisor').attr('readonly', false);
                        $('#emisor').val('');
                        // access response data
                        $.each(usuarios, function(id, usuario) {
                            let objUsuario = { label: usuario.correo, value: usuario.correo };
                            listaUsuarios.push(objUsuario);
                        });
                        $("#emisor").autocomplete({
                            source: listaUsuarios,
                            response: function(event, ui) {
                                if (ui.content.length === 0) {
                                    $("#mensajeUsuarioNoEncontrado").show();
                                    mostrarAgregarUsuarioModal();
                                } else {
                                    $("#mensajeUsuarioNoEncontrado").hide();
                                }
                            },
                            select: function(event, ui) {
                                $("#emisor").val(ui.item.value);
                            }
                        });
                        
                    }
               });
           }
            function mostrarAgregarUsuarioModal() {
                $("#btnModalAgregarUsuario").unbind('click').on('click', () => {
                    $('#modal-agregarUsuario').modal();
                    $("#formAgregarUsuario #correo").val($("#emisor").val());
                    
                });
            }

            function cargarTipoServicioEnSelect() {
               $.ajax({
                    type: 'GET',
                    url: './atencion-usuarios/tipo-servicio?action=mostrar',
                    dataType: 'json',
                    success: function(tiposServicio, textStatus, jqXHR){
                        // access response data
                        $("#selectTipoServicio").empty();
                        $('#selectTipoServicio').append(new Option('Seleccionar Tipo de servicio', 0));
                        $('#selectTipoServicio').attr('readonly', false); 
                        $.each(tiposServicio, function(id, tipoServicio) {
                            console.log(tipoServicio)
                            $('#selectTipoServicio').append(new Option(tipoServicio.nombreTipoServicio,tipoServicio.id_tipo_servicio + ',' + tipoServicio.areaInt)); 
                        });
                        seleccionTipoServicio();
                    }
               });
            } 
            function seleccionTipoServicio() {
                $("#selectTipoServicio").on('change', ()=>{
                    let idArea = $("#selectTipoServicio").val().split(',')[1];
                    $("#idArea").val(idArea);
                    $("#selectEspecialista").empty();
                    $('#selectEspecialista').attr('readonly', true);
                    $('#selectEspecialista').append(new Option('Cargando...','')); 
                    cargarEspecialistasEnSelect();
                });
            }
            function cargarEspecialistasEnSelect() {
                $.ajax({
                    type: 'GET',
                    url: './atencion-usuarios/especialistas?action=mostrarPorArea',
                    dataType: 'json',
                    data: $("#idArea").serialize(),
                    success: function(especialistas, textStatus, jqXHR){
                        // access response data
                        $("#selectEspecialista").empty();
                        $('#selectEspecialista').append(new Option('Seleccionar Especialista', 0));
                        $('#selectEspecialista').attr('readonly', false);
                        $.each(especialistas, function(id, especialista) {
                            $('#selectEspecialista').append(new Option(especialista.correo,especialista.correo)); 
                        });
                    }
                });
            }
            
            function cargarDependenciasEnSelect() {
               $.ajax({
                    type: 'GET',
                    url: './atencion-usuarios/dependencias?action=mostrar',
                    dataType: 'json',
                    success: function(dependencias, textStatus, jqXHR){
                        // access response data
                        $("#selectDependencia").empty();
                        $.each(dependencias, function(id, dependencia) {
                            $('#formAgregarUsuario #selectDependencia').append(new Option(dependencia.nombreDependencia,dependencia.id_dependencia));
                            $('#formEditarUsuario #selectDependencia').append(new Option(dependencia.nombreDependencia,dependencia.id_dependencia));
                        });
                    }
               });
           }
           
            function agregarUsuario() {
                $("#btnAgregarUsuario").unbind('click').on('click', function(){
                    console.log($("#formAgregarUsuario").serialize());
                    let dependencia="&dependencia="+$("#formAgregarUsuario #selectDependencia").val();
                    $.ajax({
                         type: 'POST',
                         url: './atencion-usuarios/usuarios?action=registrar',
                         dataType: 'json',
                         contentType: 'application/x-www-form-urlencoded; charset=UTF-8',
                         data: $("#formAgregarUsuario").serialize() + dependencia ,
                         success: function(data, textStatus, jqXHR){
                             // access response data
                             console.log(data, textStatus, jqXHR);
                             $("#alertUsuarioAgregado #correoUsuarioNuevo").text(data.correo);
                             $("#alertUsuarioAgregado").toggle();
                             setTimeout(function(){
                                 $("#alertUsuarioAgregado").toggle();
                             }, 5000);
                             $('#emisor').attr('readonly', true);
                             $('#emisor').val('Cargando...'); 
                             cargarEmisoresEnSelect();
                         }
                     });
                 });
            }
            
            $("#btnAgregarTicket").unbind('click').on('click', function(e){
                e.preventDefault();
                console.log($("#formAgregarTicket").serialize());
                let tipoServicio="&tipo_servicio="+$("#selectTipoServicio").val().split(',')[0];
                let fecha = moment().format();
                let hora = "&hora=" + fecha.substring(11,19);
                fecha = "&fecha=" + fecha.substring(0,10);
                console.log(fecha, hora)
                $.ajax({
                     method: 'POST',
                     url: './atencion-usuarios/tickets?action=registrar',
                     dataType: 'json',
                     contentType: 'application/x-www-form-urlencoded; charset=UTF-8',
                     data: $("#formAgregarTicket").serialize() + tipoServicio + fecha + hora,
                     success: function(data, textStatus, jqXHR){
                         // access response data
                         console.log(data, textStatus, jqXHR);
                         $("#alertAgregado #ticketNuevo").text(data.id_ticket);
                         $("#alertAgregado").toggle();
                         setTimeout(function(){
                             $("#alertAgregado").toggle();
                         }, 20000);
                         $("#formAgregarTicket #emisor").val('');
                         $("#formAgregarTicket #titulo").val('');
                         $("#formAgregarTicket #descripcion").val('');
                         $("#formAgregarTicket #selectTipoServicio").val(0);
                         $("#formAgregarTicket #selectEspecialista").val(0);
                     }
                 });
             });
 
            $('#emisor').attr('readonly', true);
            $('#emisor').val('Cargando...'); 
            cargarEmisoresEnSelect();
            $('#selectTipoServicio').attr('readonly', true);
            $('#selectTipoServicio').append(new Option('Cargando...','')); 
            cargarTipoServicioEnSelect();
            cargarDependenciasEnSelect();
            agregarUsuario();
        });
    </script>
  </body>
</html>