<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!doctype html>
<html lang="en">
  <head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="css/bootstrap.min.css">
    <script src="js/jquery-3.5.1.min.js"></script>
    <title>Editar Cliente</title>
  </head>
  <body>
    <div class="jumbotron">
        <header class="text-center">
            <h2>Editar Cliente</h2>
        </header>
    </div> 
     <form method="post" action="EditarCliente">
      <div class="container">
          <div class="row">
             <label class="col-4"><h5>Nombre:</h5></label>
              <div class="input-group-prepend">
                <span class="input-group-text" id="basic-addon1"><b>></b></span>
              </div>              
              <input type="text" class="col-6 input-group" name="nombre" value="${regcli.getNombre()}">
          </div>
          <br><br>
          <div class="row">
              <label class="col-4"><h5>Telefono:</h5></label>
              <div class="input-group-prepend">
                <span class="input-group-text" id="basic-addon1"><b>></b></span>
              </div>
              <input type=" text" class="col-6 input-group" name="telefono" value="${regcli.getTelefono()}">
          </div>
          <br><br>
          <div class="row">
              <label class="col-4"><h5>Correo electrónico:</h5></label>
              <div class="input-group-prepend">
                <span class="input-group-text" id="basic-addon1"><b>></b></span>
              </div>
              <input type="text" class="col-6 input-group" name="correo" value="${regcli.getCorreoelectronico()}">
          </div>
          <br><br>
          <div class="row">
              <label class="col-4"><h5>Rubro:</h5></label>
              <div class="input-group-prepend">
                <span class="input-group-text" id="basic-addon1"><b>></b></span>
              </div>
              <input type=" text" class="col-6 input-group" name="rubro" value="${regcli.getRubro()}">
          </div>
          <br><br>
          <div class="row">
              <label class="col-4"><h5>Dirección:</h5></label>
              <div class="input-group-prepend">
                <span class="input-group-text" id="basic-addon1"><b>></b></span>
              </div>
              <input type=" text" class="col-6 input-group" name="direccion" value="${regcli.getDireccion()}">
          </div>
          <br><br>
                <c:if test="${ccmensaje != null}">
					<h3><c:out value="${ccmensaje}"></c:out></h3>
				</c:if>
          <br><br><br>
           <div class="row">
               <div class="container" style="max-width:55%">
               <input type="submit" class="btn btn-warning col-4" value="Volver" formaction="${pageContext.request.contextPath}/ListadoClientes">
                <input type="hidden" class="btn btn-warning col-4" name="idcliente" value="${regcli.getIdCliente()}">
                &nbsp;&nbsp;&nbsp;&nbsp;
                <input type="submit" class="btn btn-warning col-4" value="Agregar Cliente" value="${regcli.getNombre()}">
               </div>
           </div>          
        </div>
      </form> 
      <div class="container" style="height: 50px;"></div>
    
    <!-- Optional JavaScript -->
    <!-- jQuery first, then Popper.js, then Bootstrap JS -->
    <script src="js/jquery-3.5.1.slim.min.js"></script>
    <script src="js/popper.min.js"></script>
    <script src="js/bootstrap.min.js"></script>
  </body>
</html>