<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
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
<li><a href="${pageContext.request.contextPath}/ListadoClientes">Administrar Clientes</a></li>
<li><a href="${pageContext.request.contextPath}/ListadoEmpleados">Administrar Empleados</a></li>
<li><a href="${pageContext.request.contextPath}/ListarCapacitacion">Gestionar Capacitaciones</a></li>
<li><a href="${pageContext.request.contextPath}/ListadoAccidente">Gestionar Accidentes</a></li>
<li><a href="${pageContext.request.contextPath}/ListadoAsesoria">Gestionar Asesorias</a></li>
<li><a href="${pageContext.request.contextPath}/ListadoMejoras">Gestionar Actividades de Mejoras</a></li>
<li><a href="${pageContext.request.contextPath}/ListarPago">Gestionar Pagos</a></li>
<li><a href="${pageContext.request.contextPath}/IngresarAsesoria">Ingresar Asesoria</a></li>
</ul>

	<!-- jQuery first, then Popper.js, then Bootstrap JS -->
    <script src="js/jquery-3.5.1.min.js"></script>
    <script src="js/bootstrap.bundle.min.js"></script>
    <script src="js/bootstrap.min.js"></script>
</body>
</html>