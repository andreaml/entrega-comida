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
                        <img src="images/logo.png" class="image-fluid" width="320px" alt="logo-udec">
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
                    <a href="<c:url value='/inicio-sesion' />" class="btn btn-info">Iniciar sesión</a>
                </div>
                <!-- Barra de menu -->
                <div class="col-7 col-md-12 px-0 mt-lg-3">
                    <nav class=" container nav navbar mr-0 mx-lg-auto pt-0 px-0 navbar-expand-lg navbar-light ">
                        <button class="navbar-toggler align-self-center ml-auto" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                            <span class="navbar-toggler-icon"></span>
                        </button>
                        <div class="collapse navbar-collapse " id="navbarSupportedContent">
                            <a class="nav-item nav-link text-dark p-3 px-4 px-lg-5 selected act" href="<c:url value='/' />">Consulta de Tickets</a>
                            <a class="nav-item nav-link text-dark p-3 selected px-4 px-lg-5" href="<c:url value='/base-datos-conocimiento' />">Base de Datos de Conocimiento</a>
                            <a class="nav-item nav-link text-dark p-3 selected px-4 px-lg-5" href="<c:url value='/evaluacion-servicio' />">Evaluacion de Servicio</a>    
                        </div>
                    </nav>
                </div>
                <!-- Fin de barra de menu -->
            </div>
        </div>  
        <!-- Fin encabezado 2 -->   

        <!-- Seccion 1-->
        <section class="container mt-4">
            <h3 class="text-center p-1">Consulta tu ticket</h3>
            <div class="row col-12 d-flex justify-content-center align-items-center my-4 ml-0">
                <form id="buscarTicket"class="form-group col-11 col-md-6 mx-md-5 px-0 mb-lg-0 mb-2" action="">
                    <div class="input-group">
                        <input class="form-control " type="search" placeholder="Número de ticket" aria-label="Search" name="id_ticket">
                        <span class="input-group-btn">
                            <button id="btnConsultarTicket" class="btn btn-info "><i class="fa fa-search"></i> Buscar</button>
                        </span>
                    </div> 
                </form>
            </div>
        </section>
        <!-- Fin de seccion 1 -->

        <div id="ticketNoEncontrado" class="container-fluid d-flex flex-column mt-5 col-12 col-md-11 col-lg-10 " style='display: none !important'>
            <p> El ticket <output id_ticket/> no se ha encontrado.</p>
        </div>
        
        <!-- Inicio de descripción de los tickets -->
        <div id="divDescripcionTicket"class="container-fluid d-flex flex-column mt-5 col-12 col-md-11 col-lg-10 "style='display: none !important'>
            <div class="row mt-5">
                <div class="col-12 col-md-8">
                    <div class="row">
                        <h3 class="col-10"><output id="tituloTicket"/> </h3>
                        <span class="col-2 col-lg-1 align-self-center badge badge-info"><output id="estadoTicket"/> </span>
                    </div>
                    <p>Por: <output id="correoUsuarioTicket"/> el <output id="fechaRegistroTicket"/> a las <output id="horaRegistroTicket"/> hrs </p>
                    <!--<p>Por: usuario@ucol.mx el 27-10-2017 a las 18:26 hrs </p>-->
                    <p class="text-justify"> <output id="descripcionTicket"/>
                    </p>
                    <p>Ticket número: <output id="idTicket1"/></p>
                </div>
                <div class="col-lg-3 col-md-4 col-12 ml-auto">
                    <table class="table table-striped">
                        <tbody>
                            <tr>
                                <th>Tipo de servicio: <output id="nombreTipoServicio"/></th>                        
                            </tr>
                            <tr>
                                <td>Especialista: <output id="correoEspecialistaTicket"/></td>
                            </tr>
                            <tr>
                                <td>Servicio: <output id="nombreServicio"/></td>
                            </tr>
                            <tr>
                                <td>Fecha de servicio: <output id="fechaServicio"/> </td>
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
                    <h4><output id="nombreEspecialista"/></h4> 
                    <!--<h4>Nombre Especialista 1 - Especialista</h4>-->
                    <p class="text-justify"> 
                        <output id="comentarioDeEspecialista"/>
                    </p>
                    
                    <!--<p class="text-justify"> Lorem ipsum dolor sit amet consectetur adipisicing elit. Officiis animi expedita eaque molestias repellendus sequi voluptatum, 
                        Lorem ipsum dolor sit amet consectetur, adipisicing elit. Obcaecati, unde. sit dignissimos.</p>-->
                    <div class="row ">
                        <p class="col-lg-2 col-12"><output id="fechaRegistroTicket"/> a las <output id="horaRegistroTicket"/> hrs </p> 
                    </div>
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

  
        <!-- Optional JavaScript -->
        <!-- jQuery first, then Popper.js, then Bootstrap JS -->
        <script src="https://code.jquery.com/jquery-3.2.1.min.js" integrity="sha256-hwg4gsxgFZhOsEEamdOYGBf13FyQuiTwlAQgxVSNgt4=" crossorigin="anonymous"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.3/umd/popper.min.js" integrity="sha384-vFJXuSJphROIrBnz7yo7oB41mKfc8JzQZiCq4NCceLEaO4IHwicKwpJf9c9IpFgh" crossorigin="anonymous"></script>
        <script src="js/bootstrap.js"></script>
        <script>
            $(function(){               
                $("#btnConsultarTicket").unbind('click').on('click', function(e){
                    e.preventDefault();
                   $.ajax({
                        type: 'GET',
                        url: './atencion-usuarios/tickets?action=mostrarPorId',
                        dataType: 'json',
                        contentType: 'application/x-www-form-urlencoded; charset=UTF-8',
                        data: $("#buscarTicket").serialize(),
                        success: function(data, textStatus, jqXHR){
                            if (data===null){
                                $("#divDescripcionTicket").hide();
                                $("#ticketNoEncontrado").show();
                            }else{
                                // access response data
                                $("#ticketNoEncontrado").hide();
                                $("#divDescripcionTicket").show();
                                if (data.especialista !== undefined){
                                let nombreCompletoEspecialista = data.especialista.nombre1+ " ";
                                    nombreCompletoEspecialista+= data.especialista.nombre2+ " ";
                                    nombreCompletoEspecialista+= data.especialista.apellidoP+ " ";
                                    nombreCompletoEspecialista+= data.especialista.apellidoM;
                                }
                                console.log(data, textStatus, jqXHR);
                                $("#tituloTicket").text(data.titulo);
                                $("#estadoTicket").text(mostrarEstadoTicket(data.estadoTicket));
                                console.log(mostrarEstadoTicket(data.estadoTicket))
                                $("#correoUsuarioTicket").text(data.emisor.correo);
                                $("#fechaRegistroTicket").text(data.fecha);
                                $("#horaRegistroTicket").text(data.hora);
                                $("#descripcionTicket").text(data.descripcion);
                                $("#idTicket1").text(data.id_ticket);
                                $("#nombreTipoServicio").text(data.tipoServicio.nombreTipoServicio);
                                if (data.servicio !== undefined){
                                    $("#nombreServicio").text(data.servicio.nombreServicio);
                                    $("#fechaServicio").text(data.servicio.fecha);
                                }
                                if (data.especialista !== undefined){
                                    $("#correoEspecialistaTicket").text(data.especialista.correo);
                                    $("#nombreEspecialista").text(nombreCompletoEspecialista);
                                }
                                if (data.comentarios !== undefined){
                                    $("#comentarioDeEspecialista").text(data.comentarios);
                                }
                            }
                        }
                    });
                });
                
                function mostrarEstadoTicket(estadoTicket) { 
                    switch(estadoTicket){
                        case 1: 
                            console.log(estadoTicket);
                            return 'Asignado';
                        case 2: 
                            return 'Sin asignar';
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
            });
        </script>
    </body>
</html>