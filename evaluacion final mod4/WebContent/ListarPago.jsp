<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Gestionar Pagos de Clientes</title>
</head>
<body style="border: 1px solid; padding-left: 15px; padding: 10px;">

	<h1>Listar Pagos de Clientes</h1>
	<c:if test="${ccmensaje != null}">
		<h2>
			<c:out value="${ccmensaje}"></c:out>
		</h2>
	</c:if>

	<table>
		<tr>
			<th>ID Pago</th>
			<th>Mes/Año</th>
			<th>Monto Regular</th>
			<th>Monto Adicional</th>
			<th>ID Cliente</th>
		</tr>
		<!--JSTL para cada campo en la variable items-->
		<c:forEach items="${listapago}" var="pago">
			<tr>
				<td>${item.getIdpago()}</td>
				<td>${item.getMesanio()}</td>
				<td>${item.getMontoregular()}</td>
				<td>${item.getMontoadicional()}</td>
				<td>${item.getClienteid()}</td>
			</tr>
		</c:forEach>
	</table>
	<br />
<a href="${pageContext.request.contextPath}/AgregarPago">Agregar pago</a>

</body>
</html>