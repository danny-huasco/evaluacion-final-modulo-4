<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Capacitaciones</title>
<link rel="stylesheet" href="css.css">
<link href="css/bootstrap.min.css">
<link href="https://fonts.googleapis.com/css2?family=Roboto:ital@1&display=swap" rel="stylesheet">
<script src="https://unpkg.com/ionicons@5.0.0/dist/ionicons.js"></script>
<link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
<link rel="stylesheet" href="/resources/demos/style.css">
<script src="https://code.jquery.com/jquery-1.12.4.js"></script>
<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
</head>
<body>

<h1 class=" text-lefth">Regitro Capacitación</h1>
<c:if test="${ccmensaje != null}">
	<h3><c:out value="${ccmensaje}"></c:out></h3>
</c:if>

	<form action="AgregarCapacitacion" method="post">
		<table class="container-fluid table text-left bg-">
			<tr>
				<td><label for="nombre">ID Capacitación: </label></td>
				<td><input type="number" name="idcapacitacion" id="idcapacitacion"></td>
			</tr>

			<tr>
				<td><p>Fecha:</p></td>
				<td><input type="text" name="fecha" id="fecha"></td>

			</tr>
			<tr>
				<td><label>Hora: </label></td>
				<td><input type="text" name="hora" id="hora" placeholder="00:00"></td>
			</tr>
			<tr>
				<td><label>Numero Asistentes: </label></td>
				<td><input type="number" name="numasistentes" id="numasistentes"></td>
			</tr>
			<tr>
				<td><label>Id Visitante: </label></td>
				<td><input type="number" name="visitaid" id="idvisita">
				</td>
			</tr>
			<tr>
				<td><input type="submit" value="Grabar"></td>
			</tr>
		</table>
	</form>
		<a href="${pageContext.request.contextPath}/ListarCapacitacion">Listar Capacitaciones</a>
			
<script>
	$(function() {
		$("#fecha").datepicker();
	});
</script>

</body>
</html>