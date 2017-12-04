<%-- 
    Document   : evaluacion-servicio
    Created on : 20/11/2017, 02:05:33 PM
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
                        <a class="nav-dependencia nav-link text-dark p-3 selected mr-1  px-4 px-md-5 act" href="<c:url value='/atencion-usuarios/evaluacion-servicio' />">Evaluación de servicio</a>          
                    </div>
                </nav>
            </div>
        <!-- Fin de barra de menu -->
        </div>
    </div>  
<!-- Fin encabezado 2 --> 
 
 <!-- Formulario -->
 <section class="container-fluid mt-4  ">
    <h3 class="text-center p-1 mb-3">Evaluación de servicio</h3>
    
    <div class="container align-items-center d-flex flex-column col-12 col-lg-8 p-1 border border-dark">
      <h3 class="align-self-center my-4 text-center">Valoración de servicio TI </h3> 
      <form action="" class="col-md-10 col-12 justify-content-center">
          
          <fieldset class="form-group col-12">
              <label for="">¿Cómo calificaría la solución que se le dió a su solicitud de servicio?</label>  
              
               <div class="btn btn-group col-12 px-0" data-toggle="buttons">
                  <label class="btn btn-outline-info btn-block active ">
                    <input type="radio" name="evaluacion1" id="excelente">
                    <span class="d-none d-sm-block"> Excelente </span> 
                    <span class=" d-sm-none">5</span>
                    
                  </label>
                  <label class="btn btn-outline-info btn-block mt-0 ">
                    <input type="radio" name="evaluacion1" id="muyBueno">
                    <span class="d-none d-sm-block">Muy bueno</span>
                    <span class=" d-sm-none">4</span>
                  </label>

                  <label class="btn btn-outline-info btn-block mt-0 ">
                    <input type="radio" name="evaluacion1" id="bueno">
                    <span class="d-none d-sm-block">Bueno</span>
                    <span class=" d-sm-none">3</span>                
                  </label>

                  <label class="btn btn-outline-info btn-block mt-0 ">
                    <input type="radio" name="evaluacion1" id="regular" >
                    <span class="d-none d-sm-block">Regular</span>
                    <span class=" d-sm-none">2</span>
                  </label>
                  <label class="btn btn-outline-info btn-block mt-0">
                    <input type="radio" name="evaluacion1" id="deficiente" >
                    <span class="d-none d-sm-block">Deficiente</span>
                    <span class=" d-sm-none">1</span>
                  </label>
                
              </div>
              
          </fieldset>

          <fieldset class="form-group col-12">
              <label for="">¿Cómo calificaría la solución que se le dió a su solicitud de servicio?</label>  
              <div class="btn-group col-12 px-0" data-toggle="buttons">
                  <label class="btn btn-outline-info btn-block  active">
                    <input type="radio" name="evaluacion2" id="excelente"> 
                    <span class="d-none d-sm-block"> Excelente </span> 
                    <span class=" d-sm-none">5</span>
                  </label>
                  <label class="btn btn-outline-info btn-block mt-0 ">
                    <input type="radio" name="evaluacion2" id="muyBueno">
                    <span class="d-none d-sm-block">Muy bueno</span>
                    <span class=" d-sm-none">4</span>
                  </label>
                  <label class="btn btn-outline-info btn-block mt-0  ">
                    <input type="radio" name="evaluacion2" id="bueno">
                    <span class="d-none d-sm-block">Bueno</span>
                    <span class=" d-sm-none">3</span>
                  </label>
                  <label class="btn btn-outline-info btn-block mt-0  ">
                    <input type="radio" name="evaluacion2" id="regular" >
                    <span class="d-none d-sm-block">Regular</span>
                    <span class=" d-sm-none">2</span>
                  </label>
                  <label class="btn btn-outline-info btn-block mt-0 ">
                    <input type="radio" name="evaluacion2" id="deficiente" >
                    <span class="d-none d-sm-block">Deficiente</span>
                    <span class=" d-sm-none">1</span>
                  </label>
                </div>
          </fieldset>

          <fieldset class="form-group col-12">
              <label for="">¿Cómo calificaría el tiempo de respuesta?</label>  
              <div class="btn-group col-12 px-0" data-toggle="buttons">
                  <label class="btn btn-outline-info btn-block  active">
                    <input type="radio" name="evaluacion3" id="excelente"> 
                    <span class="d-none d-sm-block"> Excelente </span> 
                    <span class=" d-sm-none">5</span>
                  </label>
                  <label class="btn btn-outline-info btn-block mt-0 ">
                    <input type="radio" name="evaluacion3" id="muyBueno">
                    <span class="d-none d-sm-block">Muy bueno</span>
                    <span class=" d-sm-none">4</span>
                  </label>
                  <label class="btn btn-outline-info btn-block mt-0  ">
                    <input type="radio" name="evaluacion3" id="bueno">
                    <span class="d-none d-sm-block">Bueno</span>
                    <span class=" d-sm-none">3</span>
                  </label>
                  <label class="btn btn-outline-info btn-block mt-0  ">
                    <input type="radio" name="evaluacion3" id="regular" >
                    <span class="d-none d-sm-block">Regular</span>
                    <span class=" d-sm-none">2</span>
                  </label>
                  <label class="btn btn-outline-info btn-block mt-0 ">
                    <input type="radio" name="evaluacion3" id="deficiente" >
                    <span class="d-none d-sm-block">Deficiente</span>
                    <span class=" d-sm-none">1</span>
                  </label>
                </div>
          </fieldset>

          <fieldset class="form-group col-12">
              <label for="">¿Cómo calificaría la atención del especialista?</label>  
              <div class="btn-group col-12 px-0" data-toggle="buttons">
                  <label class="btn btn-outline-info btn-block  active">
                    <input type="radio" name="evaluacion4" id="excelente"> 
                    <span class="d-none d-sm-block"> Excelente </span> 
                    <span class=" d-sm-none">5</span>
                  </label>
                  <label class="btn btn-outline-info btn-block mt-0 ">
                    <input type="radio" name="evaluacion4" id="muyBueno">
                    <span class="d-none d-sm-block">Muy bueno</span>
                    <span class=" d-sm-none">4</span>
                  </label>
                  <label class="btn btn-outline-info btn-block mt-0  ">
                    <input type="radio" name="evaluacion4" id="bueno">
                    <span class="d-none d-sm-block">Bueno</span>
                    <span class=" d-sm-none">3</span>
                  </label>
                  <label class="btn btn-outline-info btn-block mt-0  ">
                    <input type="radio" name="evaluacion4" id="regular" >
                    <span class="d-none d-sm-block">Regular</span>
                    <span class=" d-sm-none">2</span>
                  </label>
                  <label class="btn btn-outline-info btn-block mt-0 ">
                    <input type="radio" name="evaluacion4" id="deficiente" >
                    <span class="d-none d-sm-block">Deficiente</span>
                    <span class=" d-sm-none">1</span>
                  </label>
                </div>
          </fieldset>

          <fieldset class="form-group col-12">
              <label for="">¿Cómo calificaría la atención del especialista?</label>  
              <div class="btn-group col-12 px-0" data-toggle="buttons">
                  <label class="btn btn-outline-info btn-block active">
                    <input type="radio" name="evaluacion5" id="excelente"> 
                    <span class="d-none d-sm-block"> Excelente </span> 
                    <span class=" d-sm-none">5</span>
                  </label>
                  <label class="btn btn-outline-info btn-block mt-0 ">
                    <input type="radio" name="evaluacion5" id="muyBueno">
                    <span class="d-none d-sm-block">Muy bueno</span>
                    <span class=" d-sm-none">4</span>
                  </label>
                  <label class="btn btn-outline-info btn-block mt-0  ">
                    <input type="radio" name="evaluacion5" id="bueno">
                    <span class="d-none d-sm-block">Bueno</span>
                    <span class=" d-sm-none">3</span>
                  </label>
                  <label class="btn btn-outline-info btn-block mt-0  ">
                    <input type="radio" name="evaluacion5" id="regular" >
                    <span class="d-none d-sm-block">Regular</span>
                    <span class=" d-sm-none">2</span>
                  </label>
                  <label class="btn btn-outline-info btn-block mt-0 ">
                    <input type="radio" name="evaluacion5" id="deficiente" >
                    <span class="d-none d-sm-block">Deficiente</span>
                    <span class=" d-sm-none">1</span>
                  </label>
                </div>
          </fieldset>

          <h4 class="my-4 text-center">Comentarios Servicio TCI </h4>
          
          <p>¿Qué aspectos de nuestros servicios considera que deberíamos mejorar?</p>
        
          <div class="form-group">
              <label for="">Quejas o sugerencias</label>
              <textarea class="form-control" id="" rows="4"></textarea>
          </div>

          <div class="form-group row mt-3">
              <label for="" class="col-md-4 col-12 ">Número de ticket: </label>
              <input type="text" id="" class="form-control col-md-4 col-6 ml-3"> 
          </div>

          <div class="text-right mt-4 mb-5">
            <button type="submit" class="btn btn-info">Enviar evaluación </button>
          </div>
      </form>
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


    <!-- Optional JavaScript -->
    <!-- jQuery first, then Popper.js, then Bootstrap JS -->
    <script src="https://code.jquery.com/jquery-3.2.1.min.js" integrity="sha256-hwg4gsxgFZhOsEEamdOYGBf13FyQuiTwlAQgxVSNgt4=" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.3/umd/popper.min.js" integrity="sha384-vFJXuSJphROIrBnz7yo7oB41mKfc8JzQZiCq4NCceLEaO4IHwicKwpJf9c9IpFgh" crossorigin="anonymous"></script>
    <script src="<c:url value='/js/bootstrap.js' />"></script>
  </body>
</html>
