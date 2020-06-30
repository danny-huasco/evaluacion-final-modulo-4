<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <title>Mostrar Actividad de Mejora</title>
    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="css/bootstrap.min.css">

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
			  <input type="text" class="form-control" aria-label="Username" aria-describedby="basic-addon1" value="${mejora.getFecha()}" readonly>
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
	  			<textarea class="form-control" aria-label="actividades" value="${mejora.getActividades()}" readonly></textarea>
			</div>
			<br /><br />
	    	<div class="input-group">
	  			<div class="input-group-prepend">
	    			<span class="input-group-text">Estado</span>
	  			</div>
	  			<textarea class="form-control" value="${mejora.getEstado()}" readonly></textarea>
			</div>
			<br />
			<br />
			<a href="${pageContext.request.contextPath}/IngresarActMejora.jsp"><button type="button" class="btn btn-primary btn-lg">Ingresar otra actividad de mejora</button></a>&nbsp;&nbsp;&nbsp;
			<a href="${pageContext.request.contextPath}/index.jsp"><button type="button" class="btn btn-primary btn-lg">Aceptar y salir</button></a>
			<br />
    </div>
    
    
    <!-- Optional JavaScript -->
    <!-- jQuery first, then Popper.js, then Bootstrap JS -->
    <script src="js/jquery-3.5.1.min.js"></script>
    <script src="js/popper.min.js"></script>
    <script src="js/bootstrap.min.js"></script>
  </body>
</html>