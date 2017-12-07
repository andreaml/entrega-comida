<%-- 
    Document   : inicio-sesion
    Created on : 20/11/2017, 10:24:45 PM
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
          <img src="images/logo.png" class="image-fluid" width="300px" alt="logo-udec">
        </a>
      </nav>
    </div>
  </header>
  <!-- Fin de encabezado -->

  <!-- Contenedor 1 -->
  <div class="container-fluid d-flex flex-column mt-2 col-12 align-items-center ">
    <div class="row col-12 px-0 ">
        <div class=" col-12 col-md-8 px-0"><h1 class="display-5">Mesa de ayuda UdeC</h1></div>
        <div class="col-5 col-md-4 px-0 align-self-md-center d-md-flex justify-content-md-start justify-content-md-end px-md-0 ">
            <a href="" class="btn btn-info">Iniciar sesión</a>
        </div> 
        
        <div class="container-fluid col-12 d-flex mt-2 px-0 ">
          <div class=" alert alert-danger alert-dismissible fade show mb-0 col-12 d-none" role="alert">
             <i class="fa fa-times-circle"></i> 
             Correo o contraseña incorrectos. Favor de intentarlo de nuevo.        
             <button type="button" class="close" data-dismiss="alert" aria-label="Close">
              <span aria-hidden="true">&times;</span>
            </button>
          </div>
        </div>
  </div>
</div>

  <!-- Fin contenedor 1 -->

  <!-- Formulario -->
    <section class="container-fluid p-3 pb-5">
      <div class="container d-flex flex-column border border-dark col-12 col-md-8 col-lg-6 ">
        
        <div id="alertEditado" class="alert alert-success alert-dismissible fade show col-12 oculto-inicio" role="alert">
            Se ha ingresado con el correo <strong id="nombreCorreo"></strong> de manera satisfactoria.
            <button type="button" class="close" data-dismiss="alert" aria-label="Close">
                <span aria-hidden="true">&times;</span>
            </button>
        </div>
          
        <h3 class="align-self-center mt-5">Iniciar sesión</h3>
        
        <form id="formIngresar" action="">
          <div class="form-group row mx-3 p-4">
            <label for="">Correo universitario: </label>
            <input type="email" name="correo" id="" class="form-control border border-dark border-top-0 border-right-0 border-left-0 rounded-0" placeholder="Ingresa tu correo aquí">
            <p class="text-danger ">Ingrese un correo válido (extensión @ucol.mx)</p> 
          </div>
          <div class="form-group row mx-3 p-4 ">
            <label for="">Contraseña: </label>
            <input type="password" id=""  name="contrasenia" class="form-control border border-dark border-top-0 border-right-0 border-left-0 rounded-0" placeholder="Ingresa tu contraseña aquí">
            <p class="text-danger ">Ingrese una contraseña</p> 
          </div>
          <div class="text-center p-2 mb-3">
            <button type="submit" id="btnIngresar" class="btn btn-info">Ingresar </button>
          </div>
        </form>
      </div>
      <div class="text-center mt-2">
        <a href="" data-toggle="modal" data-target="#modal-visible">¿Aún no tienes cuenta? Solicita tu registro a un administrador</a>
      </div>
    </section>
  <!-- Fin de formulario -->

  <!-- Footer -->
  <footer class="mt-4 container-fluid bg-dark text-center">
    <div class="container navbar navbar-dark bg-dark ">
      <p class="text-white mr-auto ml-auto"><i class="fa fa-registered"></i> Derechos reservados Universidad de Colima | Página desarrollada por la Facultad de Telemática - 2017</p>
    </div>
  </footer>
  <!-- Fin de footer -->


  
<!--Inicio de modal  -->
  <div class="modal" id="modal-visible" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
    <div class="modal-dialog" role="document">
      <div class="modal-content">
        <div class="modal-body p-5">
          Solicita tu registro a la plataforma enviando un correo a la dirección <a href="">administrador@ucol.mx</a>.
        </div>
        <div class="modal-footer">
          <button type="button" class="btn btn-danger" data-dismiss="modal">Close</button>
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
            //cargarTablaEvaluacion();
    $("#btnIngresar").unbind('click').on('click', function(e){
                e.preventDefault();
               $.ajax({
                    type: 'GET',
                    url: './inicio-sesion?action=iniciarSesion',
                    dataType: 'json',
                    contentType: 'application/x-www-form-urlencoded; charset=UTF-8',
                    data: $("#formIngresar").serialize(),
                    success: function(data, textStatus, jqXHR){
                        // access response data 
                       console.log(data, textStatus, jqXHR);
                        if(data.status == 200){
                            window.location = "./especialista"
                        }
                        else{
                        //$("#alertEditado #nombreCorreo").text(data.correo);
                            $("#alertEditado").toggle();
                            setTimeout(function(){
                                $("#alertEditado").toggle();
                            }, 5000);
                        }
                    }
                });
        });    
});
    </script>
  </body>
</html>