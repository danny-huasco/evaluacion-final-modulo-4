<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title> Listar Capacitaciones</title>
    <!-- CSS Bootstrap -->
	<link rel="stylesheet" href="css/bootstrap.min.css">
    <link rel="stylesheet" type="text/css" href="css/datatables.css">
    <link rel="stylesheet" type="text/css" href="css/dataTables.bootstrap4.css">
    <!-- jQuery, datatable -->
    <script src="js/jquery-3.5.1.min.js"></script>
    <script type="text/javascript" charset="utf8" src="js/jquery.dataTables.js"></script>
    <script type="text/javascript" src="js/jquery.dataTables.es.js"></script>
</head>
<body style="padding: 10px;">
  		<h1>Listar Capacitación</h1>
		<c:if test="${ccmensaje != null}">
			<h3><c:out value="${ccmensaje}"></c:out></h3>
		</c:if>
		
		<br>
		<table id="tabla" class="table table-striped table-bordered" style="width: 100%; ">
		<thead>
		   <tr>
		     <th>ID Capacitación</th>
		     <th>Fecha</th>
		     <th>Hora</th>
		     <th>Asistentes</th>
		     <th>Visitas ID</th>
		   </tr>
		</thead>
		<c:forEach items="${listarcapacitacion}" var="capacitacion">
		<tr>
			<td>${capacitacion.getIdcapacitacion()}</td>
			<td>${capacitacion.getFecha()}</td>
			<td>${capacitacion.getHora()}</td>
			<td>${capacitacion.getNumasistentes()}</td>
			<td>${capacitacion.getVisitaid()}</td>
		</tr>
		</c:forEach>
		</table>
		<br>
			<a href="${pageContext.request.contextPath}/AgregarCapacitacion">Crear nueva Capacitación</a>&nbsp;&nbsp;
			<a href="${pageContext.request.contextPath}/index.jsp">Volver al inicio</a>
</body>
</html>