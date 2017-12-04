<%-- 
    Document   : mostrarBDConocimiento
    Created on : 19/11/2017, 10:18:18 PM
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
                <a href="" class="btn btn-info">Iniciar sesión</a>
            </div> 

            <!-- Barra de menu -->
        <div class="col-7 col-md-12 px-0 mt-lg-3">
                <nav class=" container nav navbar mr-0 mx-lg-auto pt-0 px-0 navbar-expand-lg navbar-light ">
                    <button class="navbar-toggler align-self-center ml-auto" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                        <span class="navbar-toggler-icon"></span>
                    </button>
                      
                    <div class="collapse navbar-collapse " id="navbarSupportedContent">
                        <a class="nav-item nav-link text-dark p-3 px-4 px-lg-5 selected" href="<c:url value='/' />">Consulta de Tickets</a>
                        <a class="nav-item nav-link text-dark p-3 selected px-4 px-lg-5 act" href="<c:url value='/base-datos-conocimiento' />">Base de Datos de Conocimiento</a>
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
        <h3 class="text-center p-1">Busca en nuestra Base de Datos de Conocimiento</h3>
        <div class="row col-12 d-flex justify-content-center align-items-center my-4 ml-0">
            <form class="form-group col-11 col-md-6 mx-md-5 px-0 mb-lg-0 mb-2">
                <div class="input-group">
                    <input class="form-control " type="search" placeholder="Buscar" aria-label="Search">
                    <span class="input-group-btn">
                    <button class="btn btn-info " type="submit">Buscar</button>
                    </span>
                </div> 
            </form>
    </div>
  </section>
<!-- Fin de seccion 1 -->

<!-- Inicio de descripción de los tickets -->
<div class="container-fluid d-flex flex-column mt-5 col-12 col-md-11 col-lg-10 ">
        <div class="row mt-5">
            <div class="col-12 col-md-8">
                <div class="row">
                    <h3 class="col-8 col-lg-3">Titulo de ticket </h3>
                    <span class="col-2 col-lg-1 align-self-center badge badge-danger">Cerrado </span>
                </div>
                <p>Por: usuario@ucol.mx el 27-10-2017 a las 18:26 
                
                <div class="col-6 px-0">
                    <i class="fa fa-star" aria-hidden="true"></i>
                    <i class="fa fa-star" aria-hidden="true"></i>
                    <i class="fa fa-star" aria-hidden="true"></i>
                    <i class="fa fa-star" aria-hidden="true"></i>
                    <i class="fa fa-star" aria-hidden="true"></i>
                </div>    </p>
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
                <img src="images/user.png" alt="foto-usuario" class="rounded-circle img-fluid" width="50px">
            </div>
            <div class="col-md-11 col-10">
                <h4>Nombre Especialista 1 - Especialista</h4> 
                <p class="text-justify">Lorem ipsum dolor sit amet consectetur adipisicing elit. Officiis animi expedita eaque molestias repellendus sequi voluptatum, 
                    Lorem ipsum dolor sit amet consectetur, adipisicing elit. Obcaecati, unde. sit dignissimos.</p>
                <div class="row ">
                <p class="col-lg-2 col-12">2017/09/29 a las 18:30</p> 
                
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
    <script src="<c:url value='/js/bootstrap.js' />"></script>
  </body>
</html>