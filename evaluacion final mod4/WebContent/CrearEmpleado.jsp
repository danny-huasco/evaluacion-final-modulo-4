<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Agregar Empleado</title>
</head>
<body>
<h1>Agregar Empleado</h1>
<c:if test="${ccmensaje != null}">
	<h3><c:out value="${ccmensaje}"></c:out></h3>
</c:if>

<form method="post" action="AgregarEmpleado">
	ID Empleado: <input type="text" name="id" /><br/>
	Nombre: <input type="text" name="nombreempleado" /><br/>
	Especialidad: <input type="text" name="especialidad" /><br/><br/>
	<input type="submit" value="Agregar empleado" /><br><br>
	<input type="submit" value="Listado de Empleados" formaction="${pageContext.request.contextPath}/ListadoEmpleados"
	style="width: 150px; margin: 0; box-sizing: border-box;" />
</form>

</body>
</html>