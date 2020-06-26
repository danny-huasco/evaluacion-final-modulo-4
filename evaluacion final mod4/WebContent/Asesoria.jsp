<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Asesorías</title>
<!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css" integrity="sha384-9aIt2nRpC12Uk9gS9baDl411NQApFmC26EwAOH8WgZl5MYYxFfc+NcPb1dKGj7Sk" crossorigin="anonymous">
</head>

<body class="bg-light">

<h1 class="display-4 p-2 font">Formulario Registro de Asesorías</h1>
  <form action="Asesoria" method="post" class="form pt-3">
  	<table class="table-bordered">
       	<tr>
            <td class="p-3">
            <label>ID Asesoría:</label>
            <input type="text" name="IDAsesoria" placeholder="Ingresar ID Asesoría">&nbsp;
            <label>Fecha: </label>
            <input type="date" name="fecha" placeholder="dd-mm-aaaa">
            <br><br>
            <label>ID Visitas:</label>
            <input type="text" name="IDVisita" placeholder="Ingresar ID Visitas">
            <br><br>     
            <label>Detalle: </label><br>
            <textarea name="Detalle" rows="5" cols="60" placeholder="Ingresar detalle de la asesoría con un máximo hasta 500 caracteres"></textarea>
            <br>
            <label>Gestión: </label><br>
            <textarea name="Gestion" rows="5" cols="60" placeholder="Ingresar gestión de la asesoría con un máximo hasta 500 caracteres"></textarea>
            <br>
            <label>Propuestas: </label><br>
            <textarea name="Propuestas" rows="5" cols="60" placeholder="hasta 500 caracteres"></textarea>
            <br>
            <label>Asesoria Especial: </label>&nbsp;
            <div class="form-check-inline">
                <label class="form-check-label">
                  <input type="radio" class="form-check-input" name="Asesoria">Sí
                </label>
            </div>
            <div class="form-check-inline">
                <label class="form-check-label">
                  <input type="radio" class="form-check-input" name="Asesoria">No
                </label>
            </div>
            <br>
            <input type="submit" value="Crear Asesoría" class="btn btn-outline-primary"
            formaction="${pageContext.request.contextPath}/Asesoria"/>
            </td>
        </tr>
    </table>
   </form>
</body>
</html>