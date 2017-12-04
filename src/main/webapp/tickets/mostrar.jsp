<%-- 
    Document   : mostrar
    Created on : 13/11/2017, 09:03:46 PM
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
                        <a class="nav-dependencia nav-link text-dark p-3 selected mr-1  px-4 px-md-5 act" href="<c:url value='/atencion-usuarios/tickets' />">Tickets</a>
                        <a class="nav-dependencia nav-link text-dark p-3 selected mr-1  px-4 px-md-5" href="<c:url value='/atencion-usuarios/evaluacion-servicio' />">Evaluación de servicio</a>          
                    </div>
                </nav>
            </div>
            <!-- Fin de barra de menu -->
        </div>
    </div>  
<!-- Fin encabezado 2 -->   

<!-- Seccion 1-->
  <section class="container mt-4">
        <h3 class="text-center p-1">Tickets</h3>
        <div id="alertEditado" class="alert alert-success alert-dismissible fade show col-12 oculto-inicio" role="alert">
          Ticket <strong id="ticketNuevo"></strong> modificado con éxito.
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
        <a href="<c:url value='/atencion-usuarios' />" class="btn btn-info col-md-3 col-11"><i class="fa fa-user-plus"></i> Agregar ticket</a>
    </div>
  </section>
<!-- Fin de seccion 1 -->

<!-- Inicio de contenido principal -->
  <div class="container-fluid d-flex flex-column mt-4 col-11 table-responsive">
   
    <!-- Tabla de tickets -->
    <div id="tablaTickets">
      <table class="table table-striped">
        <thead>
          <tr>
            <th scope="col">Id</th>
            <th scope="col">Título</th>
            <th scope="col">Tipo servicio</th>
            <th scope="col">Emisor</th>
            <th scope="col">Fecha</th>
            <th scope="col">Hora</th>
            <th scope="col">Servicio</th>           
            <th scope="col">Estado de ticket</th>
            <th scope="col">Estado de satisfacción</th>
            <th scope="col">Especialista</th> 
            <th scope="col" >Opciones </th>
          </tr>
        </thead>
        <tbody>
        </tbody>
      </table>
    </div>
    <!-- Fin de tabla de registros -->
  </div>
<!-- Fin de contenido principal -->

<!-- Inicio de descripción de los tickets
    <div class="container-fluid d-flex flex-column mt-5 col-12 col-md-11 ">
        <div class="row">
            <div class="col-12 col-md-8">
                <div class="row">
                    <h3 class="col-lg-3">Titulo de ticket </h3>
                    <span class="col-lg-3 align-self-center"> Estado del ticket</span>
                </div>
                <p>Por: usuario@ucol.mx el 27-10-2017 a las 18:26 hrs </p>
                <p class="text-justify">Lorem ipsum dolor sit amet consectetur adipisicing elit. Ipsa voluptatem vitae dolorem quisquam provident eligendi dicta ratione veniam cum fuga? 
                    Incidunt repellendus neque debitis non iste corporis consectetur nam porro, optio veniam maxime est hic sed minus et recusandae illum distinctio quia eius autem. Omnis.
                    Lorem ipsum dolor sit amet consectetur adipisicing elit. Cumque aliquam ratione possimus asperiores? Quibusdam minus nemo doloribus eius quaerat consequuntur ad sunt id doloremque.
                    Lorem ipsum dolor, sit amet consectetur adipisicing elit. Porro earum, adipisci perferendis ipsa libero unde nemo facere saepe recusandae aperiam? Error, a pariatur.
                </p>
                <p>Ticket número: 1234</p>
            </div>
            <div class="col-lg-3 col-md-4 col-12 ml-auto">
                <table class="table table-striped">
                    <tbody>
                        <tr>
                            <th>Tipo de servicio: Tipo 1</th>                        
                        </tr>
                        <tr>
                            <td>Especialista: usuario@ucol.mx</td>
                        </tr>
                        <tr>
                            <td>Servicio: asignado</td>
                        </tr>
                        <tr>
                            <td>Fecha de servicio: 26-09-2017 </td>
                        </tr>
                    </tbody>
                </table>
            </div>
        </div>
        <h3>Comentarios</h3>
        <div class="row mt-3">
            <div class="col-md-1 col-2 ">
                <img src="<c:url value='/images/user.png' />" alt="foto-usuario" class="rounded-circle img-fluid" width="50px">
            </div>
            <div class="col-md-11 col-10">
                <h4>Nombre Especialista 1 - Especialista</h4> 
                <p class="text-justify">Lorem ipsum dolor sit amet consectetur adipisicing elit. Officiis animi expedita eaque molestias repellendus sequi voluptatum, 
                    Lorem ipsum dolor sit amet consectetur, adipisicing elit. Obcaecati, unde. sit dignissimos.</p>
                <div class="row ">
                <p class="col-lg-2 col-12">2017/09/29 a las 18:30</p> 
                <a href="" class="col-lg-2 col-md-4 col-12">Editar comentario</a>  
                <a href="" class="col-lg-2 col-md-4 col-12">Eliminar comentario</a>  
                </div>
                
            </div>
        </div>
        <div class="row mt-3">
            <div class="col-md-1 col-2">
                <img src="<c:url value='/images/user.png' />" alt="foto-usuario" class="rounded-circle img-fluid" width="50px">
            </div>
            <div class="col-md-11 col-10">
                <form action="" class="d-flex flex-column">
                    <div class="form-group">                    
                        <textarea class="form-control" id="" rows="1" placeholder="Escribe tu comentario"></textarea>
                    </div>
                    <div class="ml-auto">
                        <button type="submit" class="btn btn-info">Enviar </button>
                    </div>
                </form>

            </div>

        </div>
    </div>

<!-- Fin de descripción de tickets -->

  
 
  <!-- Inicio de pie de pagina -->
  <footer class="mt-5 container-fluid bg-dark text-center ">
    <div class="container navbar navbar-dark bg-dark ">
      <p class="text-white mr-auto ml-auto"><i class="fa fa-registered"></i> Derechos reservados Universidad de Colima | Página desarrollada por la Facultad de Telemática - 2017</p>
    </div>
  </footer>
  <!-- Fin de pie de pagina -->
  


  <!-- Modales -->

<!--Inicio de modal editar ticket -->
    <div class="modal" id="modal-editarTicket" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
        <div class="modal-dialog modal-lg" role="document">
            <div class="modal-content ">
                <div class="modal-header">
                    <h3 class="modal-title" id="exampleModalLabel">Editar Ticket</h3>
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">&times;</span>
                    </button>
                </div>

                <div class="modal-body p-5 col-11 ">
                    <form id="formEditarTicket">
                        <div class="form-group row">
                            <label for="" class="col-form-label col-4">Titulo:</label>
                            <input type="hidden" id="id_ticket" name="id_ticket">
                            <input type="text" class="form-control col-8" id="titulo" name="titulo">
                        </div>
                        <div class="form-group row">         
                            <label for="" class="col-form-label col-4">Descripción:</label>           
                            <textarea class="form-control col-8" id="descripcion" name="descripcion" rows="3" ></textarea>
                        </div>
                        <div class="form-group row">         
                            <label for="" class="col-form-label col-4">Comentario:</label>           
                            <textarea class="form-control col-8" id="comentario" name="comentario" rows="3" ></textarea>
                        </div>
                        <div class="form-group row ">
                            <label for="" class="col-4">Tipo de servicio: </label>
                            <select class="form-control col-8" id="selectTipoServicio">
                            </select> 
                            <input type="hidden" id="idArea" name="id_area">
                        </div>
                        <div class="form-group row ">
                            <label for="" class="col-4">Emisor: </label>
                            <select class="form-control col-8" id="selectEmisor" name="emisor">
                            </select> 
                        </div>
                        <div class="form-group row ">
                            <label for="" class="col-4">Especialista: </label>
                            <select class="form-control col-8" id="selectEspecialista" name="especialista">
                            </select> 
                        </div>
                        <div class="form-group row ">
                            <label for="" class="col-4">Servicio: </label>
                            <select class="form-control col-8" id="selectServicio" name="servicio">
                            </select> 
                        </div>
                        <div class="form-group row ">
                        <label for="" class="col-4">Estado de ticket: </label>
                            <select class="form-control col-8" id="estadoTicket" name="estado_ticket">
                                <option value="1">Sin asignar</option>
                                <option value="2">Asignado</option>
                                <option value="3">Atendiendo</option>
                                <option value="4">Cerrado</option>
                                <option value="5">Solucionado</option>
                                <option value="6">Calendarizado</option>
                            </select> 
                        </div>
                    </form>
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-secondary" data-dismiss="modal">Cancelar</button>
                    <button type="button" class="btn btn-success" data-dismiss="modal" id="btnEditarTicket">Editar</button>
                </div>
            </div>
        </div>
    </div>

<!-- Fin de modal editar ticket--> 


<!--Inicio de modal eliminar ticket-->
    <div class="modal" id="modal-eliminarTicket" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
        <div class="modal-dialog" role="document">
            <div class="modal-content">
                <div class="modal-header">
                    <h3 class="modal-title" id="exampleModalLabel">Eliminar Ticket</h3>
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">&times;</span>
                    </button>
                </div>
                <div class="modal-body p-5">
                    ¿Realmente desea eliminar ticket <span id="num_ticket"></span>?   
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-secondary" data-dismiss="modal">Cancelar</button>
                    <form id="formEliminarTicket">
                        <input type="hidden" id="id_ticket" name="id_ticket">
                    </form>
                    <button type="button" class="btn btn-danger" data-dismiss="modal" id="btnEliminarTicket">Eliminar</button>
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
    <script>
        $(function(){
            var listaTickets = [];
           function cargarEmisoresEnSelect() {
               $.ajax({
                    type: 'GET',
                    url: './usuarios?action=mostrar',
                    dataType: 'json',
                    success: function(usuarios, textStatus, jqXHR){
                        // access response data
                        $("#selectEmisor").empty();
                        $.each(usuarios, function(id, usuario) {
                            $('#selectEmisor').append(new Option(usuario.correo,usuario.correo)); 
                        });
                    }
               });
            }
            function cargarTipoServicioEnSelect() {
               $.ajax({
                    type: 'GET',
                    url: './tipo-servicio?action=mostrar',
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
                    url: './especialistas?action=mostrarPorArea',
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
                        seleccionEspecialista();
                    }
                });
            }
            function seleccionEspecialista() {
                $("#selectEspecialista").on('change', ()=>{
                    $("#selectServicio").empty();
                    $('#selectServicio').attr('readonly', true);
                    $('#selectServicio').append(new Option('Cargando...','')); 
                    cargarServiciosEnSelect();
                });
            }
            function cargarServiciosEnSelect() {
                $.ajax({
                    type: 'GET',
                    url: './servicios?action=mostrarPorEspecialista',
                    dataType: 'json',
                    data: $("#selectEspecialista").serialize(),
                    success: function(servicios, textStatus, jqXHR){
                        // access response data
                        $("#selectServicio").empty();
                        $('#selectServicio').append(new Option('Seleccionar Servicio', 0));
                        $('#selectServicio').attr('readonly', false);
                        $.each(servicios, function(id, servicio) {
                            $('#selectServicio').append(new Option(servicio.nombreServicio,servicio.id_servicio)); 
                        });
                    }
                });
            }
            function cargarTablaTickets() {
                $.ajax({
                    type: 'GET',
                    url: './tickets?action=mostrar',
                    dataType: 'json',
                    //contentType: 'application/x-www-form-urlencoded; charset=UTF-8',
                    //data: $("#formAgregarDependencia").serialize() + direccion,
                    success: function(tickets, textStatus, jqXHR){
                        // access response data
                        console.log(tickets, textStatus, jqXHR);
                        listaTickets = tickets;
                        $("#tablaTickets tbody").empty();
                        $.each(tickets, function(id, ticket) {
                            let btnEditar = '<button type="button" class="editar btn btn-info my-1" data-toggle="modal" data-target="#modal-editarTicket" data-idObjServicio="'+ id +'"><i class="fa fa-pencil"></i></button>';
                            let btnEliminar = '<button type="button " class="eliminar btn btn-danger my-1" data-toggle="modal" data-target="#modal-eliminarServicio" data-idObjServicio="'+ id +'"><i class="fa fa-trash-o"></i></button>';
                            let idServicio = "";
                            
                            if (ticket.servicio !== undefined) {
                               idServicio = ticket.servicio.id_servicio;
                            }
                            let correoEspecialista = "";
                            if (ticket.especialista !== undefined) {
                               correoEspecialista = ticket.especialista.correo;
                            }
                            let tr = $('<tr class="text-truncate">').append(
                                $('<td>').text(ticket.id_ticket),                              
                                $('<td>').text(ticket.titulo),    
                                $('<td>').text(ticket.tipoServicio.nombreTipoServicio),
                                $('<td>').text(ticket.emisor.correo),
                                $('<td>').text(ticket.fecha),
                                $('<td>').text(ticket.hora),
                                $('<td>').text(idServicio),
                                $('<td>').text(mostrarEstadoTicket(ticket.estadoTicket)),
                                $('<td>').text(ticket.estadoSatisfaccion),
                                $('<td>').text(correoEspecialista),
                                $('<td class="text-center d-flex flex-column flex-lg-row justify-content-around">').html(btnEditar + btnEliminar)
                            ); //.appendTo('#records_table');
                            $("#tablaTickets table").append(tr);
                            //console.log(tr.wrap('<tr>').html());
                        });
                        mostrarEditarTicket();
                        mostrarEliminarTicket();
                    }
                });
            }
            function mostrarEstadoTicket(estadoTicket) {
                    switch(estadoTicket) {
                         case 1:
                             return 'Sin asignar';
                         case 2:
                             return 'Asignado';
                         case 3:
                             return 'Atendiendo';
                         case 4:
                             return 'Cerrado';
                         case 5:
                             return 'Solucionado';
                         case 6:
                             return 'Calendarizado';
                    }
                }
            function mostrarEditarTicket() {
                $(".editar").unbind('click').on('click', function(){
                    let idObjServicio = $(this).attr('data-idObjServicio');
                    $("#modal-editarTicket #id_ticket").val(listaTickets[idObjServicio].id_ticket);
                    $("#modal-editarTicket #titulo").val(listaTickets[idObjServicio].titulo);
                    $("#modal-editarTicket #descripcion").val(listaTickets[idObjServicio].descripcion);
                    if (listaTickets[idObjServicio].tipoServicio !== undefined)
                        $("#modal-editarTicket #selectTipoServicio").val(listaTickets[idObjServicio].tipoServicio.id_tipo_servicio + ',' + listaTickets[idObjServicio].tipoServicio.areaInt);
                    else 
                        $("#modal-editarTicket #selectTipoServicio").val(0);
                    $("#modal-editarTicket #selectEmisor").val(listaTickets[idObjServicio].emisor.correo);
                    if (listaTickets[idObjServicio].especialista !== undefined) {
                        $("#modal-editarTicket #selectEspecialista").append(new Option(listaTickets[idObjServicio].especialista.correo, listaTickets[idObjServicio].especialista.correo)); 
                        $("#modal-editarTicket #selectEspecialista").val(listaTickets[idObjServicio].especialista.correo);
                    } else 
                        $("#modal-editarTicket #selectEspecialista").val('');
                    if (listaTickets[idObjServicio].servicio !== undefined) 
                        $("#modal-editarTicket #selectServicio").val(listaTickets[idObjServicio].servicio.id_servicio);
                    else 
                        $("#modal-editarTicket #selectServicio").val('');
                    $("#modal-editarTicket #estadoTicket").val(listaTickets[idObjServicio].estado_ticket);
                });
            }
            function mostrarEliminarTicket() {
                $(".eliminar").unbind('click').on('click', function(){
                    let idObjServicio = $(this).attr('data-idObjServicio');
                    $("#modal-eliminarTicket #num_ticket").text(listaTickets[idObjServicio].titulo);
                    $("#modal-eliminarTicket #id_ticket").val(listaTickets[idObjServicio].id_ticket);
                });
            }
            $("#btnEditarTicket").unbind('click').on('click', function(){
                   console.log($("#formEditarTicket").serialize()); 
                   let tipoServicio="&tipo_servicio="+$("#selectTipoServicio").val().split(',')[0];
                   $.ajax({
                        type: 'POST',
                        url: './tickets?action=editar',
                        dataType: 'json',
                        contentType: 'application/x-www-form-urlencoded; charset=UTF-8',
                        data: $("#formEditarTicket").serialize() + tipoServicio,
                        success: function(data, textStatus, jqXHR){
                            // access response data
                            console.log(data, textStatus, jqXHR);
                            $("#alertEditado #ticketNuevo").text(data.id_ticket);
                            $("#alertEditado").toggle();
                            setTimeout(function(){
                                $("#alertEditado").toggle();
                            }, 5000);
                            cargarTablaTickets();
                        }
                    });
                });
                
                $("#btnEliminarTicket").unbind('click').on('click', function(){
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
            cargarTablaTickets();
            cargarEmisoresEnSelect();
            $('#selectTipoServicio').attr('readonly', true);
            $('#selectTipoServicio').append(new Option('Cargando...','')); 
            cargarTipoServicioEnSelect();
        });
    </script>
  </body>
</html>