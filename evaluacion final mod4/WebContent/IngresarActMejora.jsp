<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!doctype html>
<html lang="en">
  <head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css" integrity="sha384-9aIt2nRpC12Uk9gS9baDl411NQApFmC26EwAOH8WgZl5MYYxFfc+NcPb1dKGj7Sk" crossorigin="anonymous">
    <link href="css/bootstrap.min.css">
	<script src="https://code.jquery.com/jquery-1.12.4.js"></script>
	<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
    <link rel="stylesheet" href="css/jquery-ui.css">
    <script src="js/jquery-ui.js"></script>
	<script src="js/datepicker.js"></script>
    
    
    <title>Ingresar Actividad de Mejora</title>
  </head>
  <body>
    <div class="jumbotron">
        <header class="text-center">
            <h2>Ingresar Actividad de Mejora</h2>
        </header>
    </div> 
     <form action="">  
      <div class="container">
          <div class="row">
             <label class="col-4" for=""><h5>ID Actividad:</h5></label>
              <div class="input-group-prepend">
                <span class="input-group-text" id="basic-addon1"><b>></b></span>
              </div>              
              <input type="number" name="idMejora" class="col-6 input-group">
          </div>
          <br><br>
          <div class="row">
              <label class="col-4" for=""><h5>ID Cliente:</h5></label>
              <div class="input-group-prepend">
                <span class="input-group-text" id="basic-addon1"><b>></b></span>
              </div>
              <input type="number" name="idCliente" class="col-6 input-group">
          </div>
          <br><br>
          <div class="row">
              <label class="col-4" for=""><h5>Fecha:</h5></label>
              <div class="input-group-prepend">
                <span class="input-group-text" id="basic-addon1"><b>></b></span>
              </div>
              <input type="text" name="fecha" id="fecha" class="col-6 input-group">
          </div>
          <br><br>
          <div class="row">
              <label class="col-4" for=""><h5>Motivo:</h5></label>
              <div class="input-group-prepend">
                <span class="input-group-text" id="basic-addon1"><b>></b></span>
              </div>
              <input type="text" name="motivo" class="col-6 input-group">
          </div>
          <br><br>
          <div class="row">
              <label class="col-4" for=""><h5>Actividades:</h5></label>
              <div class="input-group-prepend">
                <span class="input-group-text" id="basic-addon1"><b>></b></span>
              </div>
              <textarea class="col-6 input-group" name="actividades" aria-label="actividades"></textarea> 
          </div>
          <br><br>
          <div class="row">
              <label class="col-4" for=""><h5>Estado:</h5></label>
              <div class="col-6">
                <div class="form-check form-check-inline">
			 	 	<input class="form-check-input" type="radio" name="radiob" id="inlineRadio1" value="yes">
			  		<label class="form-check-label" for="inlineRadio1">realizada</label>
				</div>
				<div class="form-check form-check-inline">
			  		<input class="form-check-input" type="radio" name="radiob" id="inlineRadio2" value="casi">
			  		<label class="form-check-label" for="inlineRadio2">en proceso</label>
				</div>
				<div class="form-check form-check-inline">
			 		 <input class="form-check-input" type="radio" name="radiob" id="inlineRadio3" value="no">
			 		 <label class="form-check-label" for="inlineRadio3">descartada</label>
				</div>
              </div>
              
          </div>
          <br><br>
          <c:if test="${ccmensaje != null}">
			<h3><c:out value="${ccmensaje}"></c:out></h3>
		  </c:if>
          <br>
        
           <div class="row">
               <div class="container" style="max-width:55%">
                <input type="submit" class="btn btn-warning col-4" value="volver" formaction="${pageContext.request.contextPath}/ListadoMejoras">
                &nbsp;&nbsp;&nbsp;&nbsp;
                <input type="submit" class="btn btn-warning col-4" value="aceptar">
               </div>
           </div>          
        </div>
      </form> 
      <div class="container" style="height:50px;"></div>
    
    <!-- Optional JavaScript -->
    <!-- jQuery first, then Popper.js, then Bootstrap JS -->
    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js" integrity="sha384-OgVRvuATP1z7JjHLkuOU7Xw704+h835Lr+6QL9UvYjZE3Ipu6Tp75j7Bh/kR0JKI" crossorigin="anonymous"></script>
  </body>
</html>

