<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Listado de Mejoras</title>
</head>
<body>

<h1>Listado de Mejoras</h1>
<c:if test="${ccmensaje != null}">
	<h3><c:out value="${ccmensaje}"></c:out></h3>
</c:if>

<table>
	<tr>
		<th>Id </th>
		<th>Fecha</th>
		<th>Motivo</th>
		<th>Actividades</th>
		<th>Estado</th>
		<th>Id de Cliente</th>
	</tr>
	<c:forEach items="${listaMejoras}" var="mejora">
	<tr>
		<td>${mejora.getIdmejora()}</td>
		<td>${mejora.getFecha()}</td>
		<td>${mejora.getMotivo()}</td>
		<td>${mejora.getActividades()}</td>
		<td>${mejora.getEstado()}</td>
		<td>${mejora.getClienteid()}</td>		
	</tr>
	</c:forEach>
</table>
<br/>
<a href="${pageContext.request.contextPath}/AgregarActMejora">Agregar Actividad de Mejora</a>

</body>
</html>