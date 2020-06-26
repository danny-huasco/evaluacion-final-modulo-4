<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Gestionar Pagos de Clientes</title>
</head>
<body style="border: 1px solid; padding-left: 15px; padding: 10px;">

	<h1>Gestionar Pagos de Clientes</h1>
	<c:if test="${cimensaje != ''}">
		<h2>
			<c:out value="${cimensaje}"></c:out>
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
		<!--JSTL para cada campo en la variable litems-->
		<c:forEach Pago="${lpago}" var="pago">
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
	<br />

	<form action="agregar" method="post"
		style="border: 1px solid; padding-left: 15px;">
		<p>
			ID Pago: &nbsp;<input type="number" name="idpago"
				maxlength="60"
				style="width: 150px; margin: 0; box-sizing: border-box;" />
		</p>
		<p>
			Mes/Año: <input type="text" name="mesanio"
				maxlength="10"
				style="width: 150px; margin: 0; box-sizing: border-box;" />
		</p>
		<p>
			Monto Regular: <input type="number" name="montoregular"
				maxlength="2"
				style="width: 150px; margin: 0; box-sizing: border-box;" />
		</p>
		
		<p>
			Monto Adicionales: <input type="number" name="montoadicional"
				maxlength="2"
				style="width: 150px; margin: 0; box-sizing: border-box;" />
		</p>
		
		<p>
			ID Cliente: <input type="number" name="idcliente"
				maxlength="2"
				style="width: 150px; margin: 0; box-sizing: border-box;" />
		</p>
		
		<p>
			<input type="submit" value="Guardar Pago"
				style="width: 150px; margin: 0; box-sizing: border-box;" />
		</p>
		<p>
			<input type="hidden" name="hdnidpago" value="${idpago}"
				style="width: 150px; margin: 0; box-sizing: border-box;" />
		</p>
		<p>
			<input type="submit" value="Listar Pago de Clientes"
				formaction="${pageContext.request.contextPath}/ListarClientes"
				style="width: 150px; margin: 0; box-sizing: border-box;" />
		</p>
	</form>

</body>
</html>