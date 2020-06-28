<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
  <head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css" integrity="sha384-9aIt2nRpC12Uk9gS9baDl411NQApFmC26EwAOH8WgZl5MYYxFfc+NcPb1dKGj7Sk" crossorigin="anonymous">
	<link rel="stylesheet" href="css/estilos.css" />
    <title>Ingresar Actividad de Mejora</title>
    
  </head>
  <body>
    <div class="container text-center">
    	<h1 class="display-4">Ingrese los datos solicitados</h1>
    	<br /><br />
    	<c:if test="${ccmensaje != null}">
			<h3><c:out value="${ccmensaje}"></c:out></h3>
		</c:if>
    	<form action="AgregarActMejora" method="post">
    		<div class="input-group mb-3">
			  <div class="input-group-prepend">
			    <span class="input-group-text" id="basic-addon1">ID Actividad</span>
			  </div>
			  <input type="text" name="idMejora" class="form-control" aria-label="id actividad" aria-describedby="basic-addon1">
			</div>
			<br />
	    	<div class="input-group mb-3">
			  <div class="input-group-prepend">
			    <span class="input-group-text" id="basic-addon1">ID Cliente</span>
			  </div>
			  <input type="text" name="idCliente" class="form-control" aria-label="id cliente" aria-describedby="basic-addon1">
			</div>
			<br />
	    	<div class="input-group mb-3">
			  <div class="input-group-prepend">
			    <span class="input-group-text" id="basic-addon1">fecha</span>
			  </div>
			  <input type="text" name="fecha" class="form-control" placeholder="dd-mm-yyyy" aria-label="fecha" aria-describedby="basic-addon1">
			</div>
			<br />
			<div class="input-group mb-3">
			  <div class="input-group-prepend">
			    <span class="input-group-text" id="basic-addon1">Motivo</span>
			  </div>
			  <input type="text" name="motivo" class="form-control" aria-label="motivo" aria-describedby="basic-addon1">
			</div>
			<br />
			<div class="input-group">
	  			<div class="input-group-prepend">
	    			<span class="input-group-text">Actividades</span>
	  			</div>
	  			<textarea class="form-control" name="actividades" aria-label="actividades"></textarea>
			</div>
			<br /><br />
	    	<div class="form-check form-check-inline">
			  <input class="form-check-input" type="radio" name="radiob" id="inlineRadio1" value="1">
			  <label class="form-check-label" for="inlineRadio1">realizada</label>
			</div>
			<div class="form-check form-check-inline">
			  <input class="form-check-input" type="radio" name="radiob" id="inlineRadio2" value="2">
			  <label class="form-check-label" for="inlineRadio2">en proceso</label>
			</div>
			<div class="form-check form-check-inline">
			  <input class="form-check-input" type="radio" name="radiob" id="inlineRadio3" value="3">
			  <label class="form-check-label" for="inlineRadio3">descartada</label>
			</div>
			<br /><br />
			<button type="submit" class="btn btn-primary btn-lg">Crear</button>
    	</form>
    </div>
    

    <!-- Optional JavaScript -->
    <!-- jQuery first, then Popper.js, then Bootstrap JS -->
    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js" integrity="sha384-OgVRvuATP1z7JjHLkuOU7Xw704+h835Lr+6QL9UvYjZE3Ipu6Tp75j7Bh/kR0JKI" crossorigin="anonymous"></script>
  </body>
</html>