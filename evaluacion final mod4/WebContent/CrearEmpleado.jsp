<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
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
    <title>Agregar Empleado</title>
  </head>
  <body>
    <div class="jumbotron">
        <header class="text-center">
            <h2>Agregar Empleado</h2>
        </header>
    </div> 
     <form method="post" action="AgregarEmpleado">
      <div class="container">
                <div class="row">
             <label class="col-4"><h5>ID Empleado:</h5></label>
              <div class="input-group-prepend">
                <span class="input-group-text" id="basic-addon1"><b>></b></span>
              </div>              
              <input type="number" class="col-6 input-group" name="id">
          </div>
          <br><br>
          <div class="row">
             <label class="col-4"><h5>Nombre:</h5></label>
              <div class="input-group-prepend">
                <span class="input-group-text" id="basic-addon1"><b>></b></span>
              </div>              
              <input type="text" class="col-6 input-group" name="nombreempleado">
          </div>
          <br><br>
          <div class="row">
              <label class="col-4"><h5>Especialidad:</h5></label>
              <div class="input-group-prepend">
                <span class="input-group-text" id="basic-addon1"><b>></b></span>
              </div>
              <input type=" text" class="col-6 input-group" name="especialidad">
          </div>
          <br><br>
                <c:if test="${ccmensaje != null}">
					<h3><c:out value="${ccmensaje}"></c:out></h3>
				</c:if>
          <br><br><br>
           <div class="row">
               <div class="container" style="max-width:55%">
               <input type="submit" class="btn btn-warning col-4" value="Volver" formaction="${pageContext.request.contextPath}/ListadoEmpleados">
                &nbsp;&nbsp;&nbsp;&nbsp;
                <input type="submit" class="btn btn-warning col-4" value="Agregar Empleado">
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