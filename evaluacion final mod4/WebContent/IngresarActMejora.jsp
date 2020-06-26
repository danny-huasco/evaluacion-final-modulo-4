<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
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
    	<form action="IngresarMejora" method="post">
	    	<div class="input-group mb-3">
			  <div class="input-group-prepend">
			    <span class="input-group-text" id="basic-addon1">ID Cliente</span>
			  </div>
			  <input type="text" id="idCliente" class="form-control" aria-label="Username" aria-describedby="basic-addon1">
			</div>
			<br />
	    	<div class="input-group mb-3">
			  <div class="input-group-prepend">
			    <span class="input-group-text" id="basic-addon1">fecha</span>
			  </div>
			  <input type="text" id="fecha" class="form-control" placeholder="dd-mm-yyyy" aria-label="Username" aria-describedby="basic-addon1">
			</div>
			<br />
			<div class="input-group mb-3">
			  <div class="input-group-prepend">
			    <span class="input-group-text" id="basic-addon1">Motivo</span>
			  </div>
			  <input type="text" id="motivo" class="form-control" aria-label="Username" aria-describedby="basic-addon1">
			</div>
			<br />
			<div class="input-group">
	  			<div class="input-group-prepend">
	    			<span class="input-group-text">Actividades</span>
	  			</div>
	  			<textarea class="form-control" id="actividades" aria-label="actividades"></textarea>
			</div>
			<br /><br />
	    	<div class="form-check form-check-inline">
			  <input class="form-check-input" type="radio" name="inlineRadioOptions" id="inlineRadio1" value="1">
			  <label class="form-check-label" for="inlineRadio1">realizada</label>
			</div>
			<div class="form-check form-check-inline">
			  <input class="form-check-input" type="radio" name="inlineRadioOptions" id="inlineRadio2" value="2">
			  <label class="form-check-label" for="inlineRadio2">en proceso</label>
			</div>
			<div class="form-check form-check-inline">
			  <input class="form-check-input" type="radio" name="inlineRadioOptions" id="inlineRadio2" value="3">
			  <label class="form-check-label" for="inlineRadio2">descartada</label>
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