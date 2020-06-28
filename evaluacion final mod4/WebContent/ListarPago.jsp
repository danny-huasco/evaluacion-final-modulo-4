<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Gestionar Pagos de Clientes</title>
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

	<h1>Listar Pagos de Clientes</h1>
	<c:if test="${ccmensaje != null}">
		<h2>
			<c:out value="${ccmensaje}"></c:out>
		</h2>
	</c:if>

<table id="tabla" class="table table-striped table-bordered" style="width: 100%; ">
	<thead>		
	<tr>
	<!-- <th>ID Pago</th> -->
		<th>Mes/Año</th>
		<th>Monto Regular</th>
		<th>Monto Adicional</th>
		<th>ID Cliente</th>
	</tr>
	</thead>
	<tbody>
	<!--JSTL para cada campo en la variable items-->
	<c:forEach items="${listapagos}" var="pago">
		<tr>
		<!--<td>${item.getIdpago()}</td> -->
			<td>${pago.getMesanio()}</td>
			<td>${pago.getMontoregular()}</td>
			<td>${pago.getMontoadicionales()}</td>
			<td>${pago.getIdCliente()}</td>
		</tr>
	</c:forEach>
	</tbody>
</table>
<br/>
	<a href="${pageContext.request.contextPath}/AgregarPago?id=${pago.getIdPago()}">Agregar nuevo Pago</a>&nbsp;&nbsp;
	<a href="${pageContext.request.contextPath}/index.jsp">Volver al inicio</a>

</body>
</html>