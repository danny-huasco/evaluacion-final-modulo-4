<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Editar empleado</title>
</head>
<body>

<h1>Editar empleado</h1>
<c:if test="${ccmensaje != null}">
	<h3><c:out value="${ccmensaje}"></c:out></h3>
</c:if>

<form method="post" action="EditarEmpleado">
	Nombre: <input type="text" name="nombreempleado" value="${regemp.getNombreempleado()}" /><br/>
	Especialidad: <input type="text" name="especialidad" value="${regemp.getEspecialidad()}" /><br/>
	<input type="hidden" name="idempleado" value="${regemp.getIdEmpleado()}" />
	<input type="submit" value="Agregar empleado" value="${regemp.getNombreempleado()}" />
</form>

</body>
</html>