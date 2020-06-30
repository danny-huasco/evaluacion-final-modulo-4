<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Listado de Mejoras</title>

<!-- CSS Bootstrap -->
	<link rel="stylesheet" href="css/bootstrap.min.css">
    <link rel="stylesheet" type="text/css" href="css/datatables.css">
    <link rel="stylesheet" type="text/css" href="css/dataTables.bootstrap4.css">
    <!-- jQuery, datatable -->
    <script src="js/jquery-3.5.1.min.js"></script>
	<!-- jQuery, datatable -->
    <script type="text/javascript" charset="utf8" src="js/jquery.dataTables.js"></script>
    <script type="text/javascript" src="js/jquery.dataTables.es.js"></script>
</head>
<body style="padding: 10px;">

<h1>Listado de Mejoras</h1>
<c:if test="${ccmensaje != null}">
	<h3><c:out value="${ccmensaje}"></c:out></h3>
</c:if>

<table id="tabla" class="table table-striped table-bordered" style="width:100%;">
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
<a href="${pageContext.request.contextPath}/AgregarActMejora">Agregar Actividad de Mejora</a>&nbsp;&nbsp;
	<a href="${pageContext.request.contextPath}/index.jsp">Volver al inicio</a>


</body>
</html>