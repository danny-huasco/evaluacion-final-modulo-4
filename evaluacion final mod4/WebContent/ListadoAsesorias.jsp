<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Listado Asesorias</title>
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

<h1>Listado de Asesorias</h1>
<c:if test="${ccmensaje != null}">
	<h3><c:out value="${ccmensaje}"></c:out></h3>
</c:if>

<table id="tabla" class="table table-striped table-bordered" style="width: 100%; ">
	<thead>
	<tr>
		<th>ID Asesoria</th>
		<th>Detalle</th>
		<th>Gestion</th>
		<th>Propuestas</th>
		<th>Fecha</th>
		<th>Especial</th>
		<th>VisitaID</th>
	</tr>
	</thead>
	<tbody>
	<c:forEach items="${listaasesoria}" var="asesoria">
	<tr>
		<td>${asesoria.getIdasesoria()}</td>
		<td>${asesoria.getDetalle()}</td>
		<td>${asesoria.getGestion()}</td>
		<td>${asesoria.getPropuestas()}</td>
		<td>${asesoria.getFecha()}</td>
		<td>${asesoria.getEspecial()}</td>
		<td>${asesoria.getVisitaid()}</td>
	</tr>	
	</c:forEach>
	</tbody>
</table>
<br/>
	<a href="${pageContext.request.contextPath}/SolicitarAsesoria">Solicitar Asesoria</a>&nbsp;&nbsp;
	<a href="${pageContext.request.contextPath}/index.jsp">Volver al inicio</a>
</body>
</html>