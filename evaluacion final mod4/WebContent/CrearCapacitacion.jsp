<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
 <!doctype html>
<html lang="en">
  <head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="css/bootstrap.min.css"">
    <script src="js/jquery-3.5.1.min.js"></script>
    <title>Solicitar Asesoría</title>
  </head>
  <body>
    <div class="jumbotron">
        <header class="text-center">
            <h2>Crear Capacitación</h2>
        </header>
    </div> 
     <form action="AgregarCapacitacion">  
      <div class="container">
          <div class="row">
             <label class="col-4" for="" name="idcapacitacion" required ><h5>Id Capacitación:</h5></label>
              <div class="input-group-prepend">
                <span class="input-group-text" id="basic-addon1"><b>></b></span>
              </div>              
              <input type="number" class="col-6 input-group">
          </div>
          <br><br>
          <div class="row">
              <label class="col-4" for="" name="fecha" required><h5> Fecha:</h5></label>
              <div class="input-group-prepend">
                <span class="input-group-text" id="basic-addon1"><b>></b></span>
              </div>
              <input type=" text" class="col-6 input-group">
          </div>
          <br><br>
          <div class="row">
              <label class="col-4" for="" name="hora" required><h5>Hora:</h5></label>
              <div class="input-group-prepend">
                <span class="input-group-text" id="basic-addon1"><b>></b></span>
              </div>
              <input type=" text" class="col-6 input-group">
          </div>
          <br><br>
          <div class="row">
              <label class="col-4" for="" name="numasistentes" required><h5> Número de Asistentes:</h5></label>
              <div class="input-group-prepend">
                <span class="input-group-text" id="basic-addon1"><b>></b></span>
              </div>
              <input type=" text" class="col-6 input-group">
          </div>
          <br><br>
          <div class="row">
              <label class="col-4" for="" name="visitaid" required><h5> Id Visitas:</h5></label>
              <div class="input-group-prepend">
                <span class="input-group-text" id="basic-addon1"><b>></b></span>
              </div>
              <input type="number" class="col-6 input-group">
          </div>
          <br><br><br>
           <div class="row">
               <div class="container" style="max-width:55%">
                <input type="submit" class="btn btn-warning col-4" value="volver" formaction="${pageContext.request.contextPath}/ListarCapacitacion">
                &nbsp;&nbsp;&nbsp;&nbsp;
                <input type="submit" class="btn btn-warning col-4" value="aceptar">
               </div>
           </div>          
        </div>
      </form> 
      <div class="container" style="height: 50px;"></div>
    
    <!-- Optional JavaScript -->
    <!-- jQuery first, then Popper.js, then Bootstrap JS -->
    <script src="js/jquery-3.5.1.slim.min.js"></script>
    <script src="js/popper.min.js"></script>
    <script src="js/bootstrap.min.js"></script>
  </body>
</html>