<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<c:if test="${ccmensaje != ''}">
		<h2>
			<c:out value="${ccmensaje}"></c:out>
		</h2>
	</c:if>
	<form action="AgregarPago" method="post"
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
			Monto Adicionales: <input type="number" name="montoadicionales"
				maxlength="2"
				style="width: 150px; margin: 0; box-sizing: border-box;" />
		</p>
		
		<p>
			ID Cliente: <input type="number" name="idcliente"
				maxlength="2"
				style="width: 150px; margin: 0; box-sizing: border-box;" />
		</p>
		
		<p>
			<input type="submit" value="Grabar Pago"
				style="width: 150px; margin: 0; box-sizing: border-box;" />
		</p>

		<p>
			<input type="submit" value="Listar Pago de Clientes"
				formaction="${pageContext.request.contextPath}/ListarPago"
				style="width: 150px; margin: 0; box-sizing: border-box;" />
		</p>
	</form>

</body>
</html>