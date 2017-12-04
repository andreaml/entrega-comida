<%-- 
    Document   : mostrarEvaluacionServicio
    Created on : 19/11/2017, 10:19:31 PM
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
                        <a class="nav-item nav-link text-dark p-3 px-4 px-lg-5 selected" href="<c:url value='/' />">Consulta de Tickets</a>
                        <a class="nav-item nav-link text-dark p-3 selected px-4 px-lg-5" href="<c:url value='/base-datos-conocimiento' />">Base de Datos de Conocimiento</a>
                        <a class="nav-item nav-link text-dark p-3 selected px-4 px-lg-5 act" href="<c:url value='/evaluacion-servicio' />">Evaluacion de Servicio</a>    
                    </div>
                </nav>
            </div>
            <!-- Fin de barra de menu -->
        </div>
    </div>  
<!-- Fin encabezado 2 --> 
 
 <!-- Formulario -->
 <section class="container-fluid mt-4" id="editarEvaluacion">
    <h3 class="text-center p-1 mb-3">Evaluación de servicio</h3>

    <div class="container align-items-center d-flex flex-column col-12 col-lg-8 p-1 border border-dark">
        
        <div id="alertEditado" class="alert alert-success alert-dismissible fade show col-12 oculto-inicio" role="alert">
            Tus comentarios del ticket <strong id="nombreEvaluacionNueva"></strong> han sido enviados satisfactoriamente. Gracias por utilizar el Sistema de Mesa de Ayuda CGTI.
            <button type="button" class="close" data-dismiss="alert" aria-label="Close">
                <span aria-hidden="true">&times;</span>
            </button>
        </div>
      <h3 class="align-self-center my-4 text-center">Valoración de servicio TI </h3> 
      <form action="" class="col-md-10 col-12 justify-content-center" name="form1" id="formEditarEvaluacion">
          
          <fieldset class="form-group col-12">
              <label for="">¿Cómo calificaría la solución que se le dió a su solicitud de servicio?</label>  
              
               <div class="btn btn-group col-12 px-0" data-toggle="buttons">
                  <label class="btn btn-outline-info btn-block active ">
                    <input type="radio" name="evaluacion1" id="excelente" value="5" checked>
                    <span class="d-none d-sm-block"> Excelente </span> 
                    <span class=" d-sm-none">5</span>
                    
                  </label>
                  <label class="btn btn-outline-info btn-block mt-0 ">
                      <input type="radio" name="evaluacion1" id="muyBueno" value="4">
                    <span class="d-none d-sm-block">Muy bueno</span>
                    <span class=" d-sm-none">4</span>
                  </label>

                  <label class="btn btn-outline-info btn-block mt-0 ">
                    <input type="radio" name="evaluacion1" id="bueno" value="3">
                    <span class="d-none d-sm-block">Bueno</span>
                    <span class=" d-sm-none">3</span>                
                  </label>

                  <label class="btn btn-outline-info btn-block mt-0 ">
                    <input type="radio" name="evaluacion1" id="regular" value="2">
                    <span class="d-none d-sm-block">Regular</span>
                    <span class=" d-sm-none">2</span>
                  </label>
                  <label class="btn btn-outline-info btn-block mt-0">
                    <input type="radio" name="evaluacion1" id="deficiente" value="1">
                    <span class="d-none d-sm-block">Deficiente</span>
                    <span class=" d-sm-none">1</span>
                  </label>
                
              </div>
              
          </fieldset>

          <fieldset class="form-group col-12">
              <label for="">¿Cómo calificaría la solución que se le dió a su solicitud de servicio?</label>  
              <div class="btn-group col-12 px-0" data-toggle="buttons">
                  <label class="btn btn-outline-info btn-block  active">
                    <input type="radio" name="evaluacion2" id="excelente" value="5" checked> 
                    <span class="d-none d-sm-block"> Excelente </span> 
                    <span class=" d-sm-none">5</span>
                  </label>
                  <label class="btn btn-outline-info btn-block mt-0 ">
                      <input type="radio" name="evaluacion2" id="muyBueno" value="4">
                    <span class="d-none d-sm-block">Muy bueno</span>
                    <span class=" d-sm-none">4</span>
                  </label>
                  <label class="btn btn-outline-info btn-block mt-0  ">
                      <input type="radio" name="evaluacion2" id="bueno" value="3">
                    <span class="d-none d-sm-block">Bueno</span>
                    <span class=" d-sm-none">3</span>
                  </label>
                  <label class="btn btn-outline-info btn-block mt-0  ">
                    <input type="radio" name="evaluacion2" id="regular" value="2">
                    <span class="d-none d-sm-block">Regular</span>
                    <span class=" d-sm-none">2</span>
                  </label>
                  <label class="btn btn-outline-info btn-block mt-0 ">
                      <input type="radio" name="evaluacion2" id="deficiente" value="1">
                    <span class="d-none d-sm-block">Deficiente</span>
                    <span class=" d-sm-none">1</span>
                  </label>
                </div>
          </fieldset>

          <fieldset class="form-group col-12">
              <label for="">¿Cómo calificaría el tiempo de respuesta?</label>  
              <div class="btn-group col-12 px-0" data-toggle="buttons">
                  <label class="btn btn-outline-info btn-block  active">
                      <input type="radio" name="evaluacion3" id="excelente" value="5" checked> 
                    <span class="d-none d-sm-block"> Excelente </span> 
                    <span class=" d-sm-none">5</span>
                  </label>
                  <label class="btn btn-outline-info btn-block mt-0 ">
                      <input type="radio" name="evaluacion3" id="muyBueno" value="4">
                    <span class="d-none d-sm-block">Muy bueno</span>
                    <span class=" d-sm-none">4</span>
                  </label>
                  <label class="btn btn-outline-info btn-block mt-0  ">
                      <input type="radio" name="evaluacion3" id="bueno" value="3">
                    <span class="d-none d-sm-block">Bueno</span>
                    <span class=" d-sm-none">3</span>
                  </label>
                  <label class="btn btn-outline-info btn-block mt-0  ">
                      <input type="radio" name="evaluacion3" id="regular" value="2">
                    <span class="d-none d-sm-block">Regular</span>
                    <span class=" d-sm-none">2</span>
                  </label>
                  <label class="btn btn-outline-info btn-block mt-0 ">
                      <input type="radio" name="evaluacion3" id="deficiente" value="1">
                    <span class="d-none d-sm-block">Deficiente</span>
                    <span class=" d-sm-none">1</span>
                  </label>
                </div>
          </fieldset>

          <fieldset class="form-group col-12">
              <label for="">¿Cómo calificaría la atención del especialista?</label>  
              <div class="btn-group col-12 px-0" data-toggle="buttons">
                  <label class="btn btn-outline-info btn-block  active">
                      <input type="radio" name="evaluacion4" id="excelente" value="5" checked> 
                    <span class="d-none d-sm-block"> Excelente </span> 
                    <span class=" d-sm-none">5</span>
                  </label>
                  <label class="btn btn-outline-info btn-block mt-0 ">
                      <input type="radio" name="evaluacion4" id="muyBueno" value="4">
                    <span class="d-none d-sm-block">Muy bueno</span>
                    <span class=" d-sm-none">4</span>
                  </label>
                  <label class="btn btn-outline-info btn-block mt-0  ">
                      <input type="radio" name="evaluacion4" id="bueno" value="3">
                    <span class="d-none d-sm-block">Bueno</span>
                    <span class=" d-sm-none">3</span>
                  </label>
                  <label class="btn btn-outline-info btn-block mt-0  ">
                      <input type="radio" name="evaluacion4" id="regular" value="2">
                    <span class="d-none d-sm-block">Regular</span>
                    <span class=" d-sm-none">2</span>
                  </label>
                  <label class="btn btn-outline-info btn-block mt-0 ">
                      <input type="radio" name="evaluacion4" id="deficiente" value="1">
                    <span class="d-none d-sm-block">Deficiente</span>
                    <span class=" d-sm-none">1</span>
                  </label>
                </div>
          </fieldset>

          <fieldset class="form-group col-12">
              <label for="">¿Cómo calificaría la atención del especialista?</label>  
              <div class="btn-group col-12 px-0" data-toggle="buttons">
                  <label class="btn btn-outline-info btn-block active">
                      <input type="radio" name="evaluacion5" id="excelente" value="5" checked> 
                    <span class="d-none d-sm-block"> Excelente </span> 
                    <span class=" d-sm-none">5</span>
                  </label>
                  <label class="btn btn-outline-info btn-block mt-0 ">
                      <input type="radio" name="evaluacion5" id="muyBueno" value="4">
                    <span class="d-none d-sm-block">Muy bueno</span>
                    <span class=" d-sm-none">4</span>
                  </label>
                  <label class="btn btn-outline-info btn-block mt-0  ">
                      <input type="radio" name="evaluacion5" id="bueno" value="3">
                    <span class="d-none d-sm-block">Bueno</span>
                    <span class=" d-sm-none">3</span>
                  </label>
                  <label class="btn btn-outline-info btn-block mt-0  ">
                      <input type="radio" name="evaluacion5" id="regular" value="2">
                    <span class="d-none d-sm-block">Regular</span>
                    <span class=" d-sm-none">2</span>
                  </label>
                  <label class="btn btn-outline-info btn-block mt-0 ">
                      <input type="radio" name="evaluacion5" id="deficiente" value="1">
                    <span class="d-none d-sm-block">Deficiente</span>
                    <span class=" d-sm-none">1</span>
                  </label>
                </div>
          </fieldset>

          <h4 class="my-4 text-center">Comentarios Servicio TCI </h4>
          
          <p>¿Qué aspectos de nuestros servicios considera que deberíamos mejorar?</p>
        
          <div class="form-group">
              <label for="">Quejas o sugerencias</label>
              <textarea class="form-control" id="comentarios" name="comentarios" rows="4"></textarea>
          </div>

          <div class="form-group row mt-3">
              <label for="" class="col-md-4 col-12 ">Número de ticket: </label>
              <input type="text" id="idTicket" name="id_ticket" class="form-control col-md-4 col-6 ml-3"> 
          </div>

          <div class="text-right mt-4 mb-5">
              <input type="hidden" id="satisfaccion" name="estado_satisfaccion">
              <button id="btnEditarEvaluacion" type="button" class="btn btn-info" data-target="#editarEvaluacion" data-dismiss="modal">Enviar evaluación </button>
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
    <script>
    $(function(){
            var listaTickets;
            //cargarTablaEvaluacion();
    $("#btnEditarEvaluacion").unbind('click').on('click', ()=>{console.log($("#formEditarEvaluacion")); 
        $("#satisfaccion").val(Suma($("#formEditarEvaluacion")[0]));
               
               $.ajax({
                    type: 'POST',
                    url: './atencion-usuarios/tickets?action=editarEva',
                    dataType: 'json',
                    contentType: 'application/x-www-form-urlencoded; charset=UTF-8',
                    data: $("#formEditarEvaluacion").serialize(),
                    success: function(data, textStatus, jqXHR){
                        // access response data
                        console.log(data, textStatus, jqXHR);
                        $("#alertEditado #nombreEvaluacionNueva").text(data.id_ticket);
                        $("#alertEditado").toggle();
                        setTimeout(function(){
                            $("#alertEditado").toggle();
                        }, 5000);
                        //cargarTablaEvaluacion();
                    },
                    complete: function(data, textStatus, jqXHR) {
                        $("#alertEditado #nombreEvaluacionNueva").text(data.id_ticket);
                        $("#alertEditado").toggle();
                        setTimeout(function(){
                            $("#alertEditado").toggle();
                        }, 5000);
                    }
                });
            
            
        });    
    
   
    function Suma(formulario){
        
    var total=0;
    var promedio=0;
    var nombre="";
    var grupo ="";
    for(i=0;i<formulario.elements.length;i++){
        
        if(formulario.elements[i].type==="radio" && nombre!==formulario.elements[i].name){
            nombre=formulario.elements[i].name;
            
            grupo=document.getElementsByName(nombre);
            console.log(grupo);
            for(j=0;j<grupo.length;j++){
                if(grupo[j].checked){
                    //console.log(grupo[j].value);
                    total+=parseInt(grupo[j].value);
                }
            }
        }
    }
        console.log(total);
        promedio = Math.round(total/5);
        console.log(promedio);
        return promedio;
        
    }

    
    
   /* function mostrarEditarEvaluacion() {
                $(".editar").unbind('click').on('click', function(){
                    let idObjEvaluacion = $(this).attr('data-idObjEvaluacion');
                    $("#editarEvaluacion #comentarios").val(listaTickets[idObjEvaluacion].comentarios);
                    $("#editarEvaluacion #satisfaccion").val(listaTickets[idObjEvaluacion].estado_satisfaccion);      
                });
            }*/
            
     
     
    /*function cargarTablaEvaluacion() {
                $.ajax({
                    type: 'GET',
                    url: './atencion-usuarios/tickets?action=mostrar',
                    dataType: 'json',
                    contentType: 'application/x-www-form-urlencoded; charset=UTF-8',
                    data: $("#formEditarEvaluacion").serialize(),
                    success: function(tickets, textStatus, jqXHR){
                        //access response data
                        console.log(tickets, textStatus, jqXHR);
                        listaTickets = tickets;
                        $("tbody").empty();
                        $.each(tickets, function(id, tickets) {
                            let btnEditar = '<button type="button" class="editar btn btn-info my-1" data-target="#editarEvaluacion" data-idObjEvaluacion="'+ id +'"><i class="fa fa-pencil"></i></button>';
                            let tr = $('<tr class="text-truncate">').append(
                                $('<td>').text(tickets.id_ticket),
                                $('<td>').text(tickets.comentarios),
                                $('<td>').text(tickets.estado_satisfaccion)),
                                $('<td class="text-center d-flex flex-column flex-lg-row justify-content-around">').html(btnEditar)
                            ); //.appendTo('#records_table');
                            $("table").append(tr);
                            //console.log(tr.wrap('<tr>').html());
                        });
                        //mostrarEditarEvaluacion();
                    }
                });
            }*/
        });
    </script>
  </body>
</html>
