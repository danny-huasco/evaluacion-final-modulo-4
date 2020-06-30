<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Agregar cliente</title>

</head>
<body>
<h1>Agregar cliente</h1>
<c:if test="${ccmensaje != null}">
	<h3><c:out value="${ccmensaje}"></c:out></h3>
</c:if>

<form method="post" action="AgregarCliente">
	ID Cliente: <input type="text" name="id" /><br/>
	Nombre: <input type="text" name="nombre" /><br/>
	Telefono: <input type="text" name="telefono" /><br/>
	Correo electrónico: <input type="text" name="correo" /><br/>
	Rubro: <input type="text" name="rubro" /><br/>
	Dirección: <input type="text" name="direccion" /><br/>
	<input type="submit" value="Agregar cliente" />
	<br>
	<input type="submit" value="Listado de Clientes" formaction="${pageContext.request.contextPath}/ListadoClientes"
	style="width: 150px; margin: 0; box-sizing: border-box;" />
</form>

</body>
</html>