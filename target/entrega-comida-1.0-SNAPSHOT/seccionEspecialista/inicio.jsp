<%-- 
    Document   : inicio
    Created on : 20/11/2017, 11:06:43 AM
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
            <a href="<c:url value='/inicio-sesion.jsp' />" class="btn btn-info">Iniciar sesión</a>
        </div> 

        <!-- Barra de menu -->
        <div class="col-7 col-md-12 px-0 mt-lg-3">
            <nav class=" container nav navbar mr-0 mx-lg-auto pt-0 px-0 navbar-expand-lg navbar-light ">
                <button class="navbar-toggler align-self-center ml-auto" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                    <span class="navbar-toggler-icon"></span>
                </button>

                <div class="collapse navbar-collapse " id="navbarSupportedContent">
                    <a class="nav-dependencia nav-link text-dark p-3 px-4 px-md-5 selected mr-1 act" href="<c:url value='/especialista' />">Inicio</a>
                    <a class="nav-dependencia nav-link text-dark p-3 selected mr-1  px-4 px-md-5" href="<c:url value='/especialista/tickets' />">Tickets asignados</a>
                </div>
            </nav>
        </div>
        <!-- Fin de barra de menu -->
    </div>
</div>  
<!-- Fin encabezado 2 -->   


<!-- Seccion 1-->
  <section class="container mt-4">
        <h3 class="text-center p-1">Próximos Servicios</h3>
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

<!-- Contenido principal -->
<div class="container mt-5 table-responsive">
            <!-- Tabla de registros -->
            
              <table class="table table-striped  ">
                <thead>
                  <tr>
                    <th scope="col">Nombre</th>
                    <th scope="col">Especialista</th>
                    <th scope="col" >Fecha</th>
                    <th scope="col" >Hora</th>
                    <th scope="col" >Vehículo</th>
                    <th scope="col" >Nivel gasolina inicio</th>
                    <th scope="col" >Id ticket</th>
                    <th scope="col" class="text-center">Opciones </th>
                  </tr>
                </thead>
                <tbody>
                  <tr class="text-truncate"> 
                    <td>Servicio 1 </td>
                    <td>Especialista 1 </td>
                    <td>14/09/2017</td>
                    <td>18:45</td>
                    <td>Vehículo 1</td>
                    <td>3/4</td>
                    <td>1234</td>
                    <td class="text-center d-flex flex-column flex-lg-row justify-content-around">
                      <button type="button " class="btn btn-danger" data-toggle="modal" data-target="#modal-cerrarServicio">Cerrar servicio</button>
                    </td>
                  </tr>
                  <tr>
                    <td>Servicio 2 </td>
                    <td>Especialista 3 </td>
                    <td>14/09/2017</td>
                    <td>18:45</td>
                    <td>Vehículo 2</td>
                    <td>3/4</td>
                    <td>1234</td>
                    <td class="text-center d-flex flex-column flex-lg-row justify-content-around">
                      <button type="button" class="btn btn-danger" data-toggle="modal" data-target="#modal-cerrarServicio"><i class="fa fa-times" aria-hidden="true"></i></button>
                    </td>
                  </tr>
                  <tr>
                    <td>Servicio 3 </td>
                    <td>Especialista 3 </td>
                    <td>14/09/2017</td>
                    <td>18:45</td>
                    <td>Vehículo 3</td>
                    <td>3/4</td>
                    <td>1234</td>
                    <td class="text-center d-flex flex-column flex-lg-row justify-content-around">
                      <button type="button" class="btn btn-danger" data-toggle="modal" data-target="#modal-cerrarServicio"><i class="fa fa-times" aria-hidden="true"></i></button>
                    </td>
                  </tr>
                  <tr>
                    <td>Servicio 4 </td>
                    <td>Especialista 4 </td>
                    <td>14/09/2017</td>
                    <td>18:45</td>
                    <td>Vehículo 4</td>
                    <td>3/4</td>
                    <td>3432</td>
                    <td class="text-center d-flex flex-column flex-lg-row justify-content-around">
                      <button type="button" class="btn btn-danger" data-toggle="modal" data-target="#modal-cerrarServicio"><i class="fa fa-times" aria-hidden="true"></i></button>
                    </td>
                  </tr>
                  <tr>
                    <td>Servicio 5  </td>
                    <td>Especialista 5 </td>
                    <td>14/09/2017</td>
                    <td>18:45</td>
                    <td>Vehículo 5</td>
                    <td>Lleno</td>
                    <td>3325</td>
                    <td class="text-center d-flex flex-column flex-lg-row justify-content-around">
                      <button type="button" class="btn btn-danger" data-toggle="modal" data-target="#modal-cerrarServicio"><i class="fa fa-times" aria-hidden="true"></i></button>
                    </td>
                  </tr> 
                </tbody>
              </table>
          
            <!-- Fin de tabla de registros -->
          </div>
          <!-- Fin contenido principal -->
         

  
 
  <!-- Inicio de pie de pagina -->
  <footer class="mt-5 container-fluid bg-dark text-center ">
    <div class="container navbar navbar-dark bg-dark ">
      <p class="text-white mr-auto ml-auto"><i class="fa fa-registered"></i> Derechos reservados Universidad de Colima | Página desarrollada por la Facultad de Telemática - 2017</p>
    </div>
  </footer>
  <!-- Fin de pie de pagina -->
  
<!--Inicio de modal eliminar -->
<div class="modal" id="modal-cerrarServicio" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
        <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <h3 class="modal-title" id="exampleModalLabel">Cerrar Servicio</h3>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
            </div>
            <div class="modal-body p-5">
               <form action="">
                    <div class="form-group row mt-3">
                            <label for="" class="col-4">Nivel de gasolina fin: </label>
                            <select class="form-control col-8" id="">
                                <option>Lleno</option>
                                <option>3/4</option>
                                <option>1/2</option>
                                <option>1/4</option>
                                <option>Vacío</option>
                            </select> 
                    </div>
               </form>
            </div>
            <div class="modal-footer">
            <button type="button" class="btn btn-secondary" data-dismiss="modal">Cancelar</button>
            <button type="button" class="btn btn-danger" data-dismiss="modal">Aceptar</button>
            </div>
        </div>
        </div>
    </div>
  <!-- Fin de modal -->

  
    <!-- Optional JavaScript -->
    <!-- jQuery first, then Popper.js, then Bootstrap JS -->
    <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.3/umd/popper.min.js" integrity="sha384-vFJXuSJphROIrBnz7yo7oB41mKfc8JzQZiCq4NCceLEaO4IHwicKwpJf9c9IpFgh" crossorigin="anonymous"></script>
    <script src="js/bootstrap.js"></script>
  </body>
</html>