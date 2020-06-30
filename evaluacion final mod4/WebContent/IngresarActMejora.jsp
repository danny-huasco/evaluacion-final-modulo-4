<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="es">
  <head>
    <!-- Required meta tags -->
    <meta charset="utf-8">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="css/bootstrap.min.css">
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
			  <input type="number" name="idMejora" class="form-control" aria-label="id actividad" aria-describedby="basic-addon1">
			</div>
			<br />

	    	<div class="input-group mb-3">
			  <div class="input-group-prepend">
			    <span class="input-group-text" id="basic-addon1">ID Cliente</span>
			  </div>
			  <input type="number" name="idCliente" class="form-control" aria-label="id cliente" aria-describedby="basic-addon1">
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
			<br /><br />
			<a href="${pageContext.request.contextPath}/index.jsp"><button type="button" class="btn btn-primary btn-lg">Volver al inicio</button></a>
			&nbsp;&nbsp;&nbsp;&nbsp;<button type="submit" class="btn btn-primary btn-lg">Crear</button>

    	</form>
    </div>
    

        <!-- Optional JavaScript -->
    <!-- jQuery first, then Popper.js, then Bootstrap JS -->
    <script src="js/jquery-3.5.1.min.js"></script>
    <script src="js/popper.min.js"></script>
    <script src="js/bootstrap.min.js"></script>
  </body>
</html>