<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="es">
	<head>		
		<meta charset="ISO-8859-1">
		<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
		<title>Inicio</title>
		<link rel="stylesheet" href="css/bootstrap.min.css" />
	</head>
<body>
<h1>Página de inicio</h1>

<h3>¿Qué acción desea realizar?</h3>

<ul>
<li><a href="${pageContext.request.contextPath}/ListadoClientes">Administrar clientes</a></li>
<li><a href="${pageContext.request.contextPath}/ListadoEmpleados">Administrar empleados</a></li>
<li><a href="${pageContext.request.contextPath}/ListadoMejoras">Listar actividades de Mejoras</a></li>
<li><a href="${pageContext.request.contextPath}/AgregarActMejora">Agregar Actividades de Mejoras</a></li>
<li><a href="${pageContext.request.contextPath}/ListarPago">Listar Pagos</a></li>
<li><a href="${pageContext.request.contextPath}/CrearAsesoria">Crear Asesoria</a></li>
</ul>

	<!-- jQuery first, then Popper.js, then Bootstrap JS -->
    <script src="js/jquery-3.5.1.min.js"></script>
    <script src="js/bootstrap.bundle.min.js"></script>
    <script src="js/bootstrap.min.js"></script>
</body>
</html>