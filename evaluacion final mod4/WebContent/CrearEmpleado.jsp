<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Agregar empleado</title>
</head>
<body>
<h1>Agregar empleado</h1>
<c:if test="${ccmensaje != null}">
	<h3><c:out value="${ccmensaje}"></c:out></h3>
</c:if>

<form method="post" action="AgregarEmpleado">
	ID Empleado: <input type="text" name="id" /><br/>
	Nombre: <input type="text" name="nombreempleado" /><br/>
	Especialidad: <input type="text" name="especialidad" /><br/>
	<input type="submit" value="Agregar empleado" />
</form>

</body>
</html>