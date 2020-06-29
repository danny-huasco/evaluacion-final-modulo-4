<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title> Listar Capacitaciones</title>
    <link href="css/bootstrap.min.css">
</head>
<body>
  		<h1>Listar Capacitación</h1>
		<c:if test="${ccmensaje != null}">
			<h3><c:out value="${ccmensaje}"></c:out></h3>
		</c:if>
		
		<br>
		<table class="table">
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