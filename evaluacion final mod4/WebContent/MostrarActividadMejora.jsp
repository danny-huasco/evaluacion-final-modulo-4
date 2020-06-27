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

    <title>Mostrar Actividad de Mejora</title>
  </head>
  <body>
  	<c:if test="${ccmensaje != null}">
		<h3><c:out value="${ccmensaje}"></c:out></h3>
	</c:if>
    <div class="container">
    	<h1 class="display-4">Actividad de Mejora</h1>
    	
    	<div class="input-group mb-3">
			  <div class="input-group-prepend">
			    <span class="input-group-text" id="basic-addon1">ID Cliente</span>
			  </div>
			  <input type="text" class="form-control" aria-label="Username" aria-describedby="basic-addon1" value="${mejora.getIdmejora()}" readonly>
			</div>
			<br />
	    	<div class="input-group mb-3">
			  <div class="input-group-prepend">
			    <span class="input-group-text" id="basic-addon1">fecha</span>
			  </div>
			  <input type="text" class="form-control"  aria-label="Username" aria-describedby="basic-addon1" value="${mejora.getFecha()}" readonly>
			</div>
			<br />
			<div class="input-group mb-3">
			  <div class="input-group-prepend">
			    <span class="input-group-text" id="basic-addon1">Motivo</span>
			  </div>
			  <input type="text" class="form-control"  aria-label="Username" aria-describedby="basic-addon1" value="${mejora.getMotivo()}" readonly>
			</div>
			<br />
			<div class="input-group">
	  			<div class="input-group-prepend">
	    			<span class="input-group-text">Actividades</span>
	  			</div>
	  			<textarea class="form-control" aria-label="actividades"  value="${mejora.getActividades()}" readonly></textarea>
			</div>
			<br /><br />
	    	<div class="input-group">
	  			<div class="input-group-prepend">
	    			<span class="input-group-text">Estado</span>
	  			</div>
	  			<textarea class="form-control" aria-label=""  value="${mejora.getEstado()}" readonly></textarea>
			</div>
			<br />
			<br />
			<a href="${pageContext.request.contextPath}/IngresarActMejora.jsp"><button type="button" class="btn btn-primary btn-lg">Ingresar otra actividad de mejora</button></a>
			 &nbsp&nbsp&nbsp
			<a href="${pageContext.request.contextPath}/index.jsp"><button type="button" class="btn btn-primary btn-lg">Aceptar y salir</button></a>
			<br />
    </div>
    
    
    <!-- Optional JavaScript -->
    <!-- jQuery first, then Popper.js, then Bootstrap JS -->
    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js" integrity="sha384-OgVRvuATP1z7JjHLkuOU7Xw704+h835Lr+6QL9UvYjZE3Ipu6Tp75j7Bh/kR0JKI" crossorigin="anonymous"></script>
  </body>
</html>