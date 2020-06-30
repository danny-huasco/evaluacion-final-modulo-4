

 <!doctype html>
<html lang="en">
  <head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css" integrity="sha384-9aIt2nRpC12Uk9gS9baDl411NQApFmC26EwAOH8WgZl5MYYxFfc+NcPb1dKGj7Sk" crossorigin="anonymous">
    <script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
    <title>Solicitar Asesoría</title>
  </head>
  <body>
    <div class="jumbotron">
        <header class="text-center">
            <h2>Solicitar Asesoría </h2>
        </header>
    </div> 
     <form action="AgregarCapacitacion">  
      <div class="container">
          <div class="row">
             <label class="col-4" for="" name="idcapacitacion" required ><h5>Id Capacitación:</h5></label>
              <div class="input-group-prepend">
                <span class="input-group-text" id="basic-addon1"><b>></b></span>
              </div>              
              <input type=" text" class="col-6 input-group">
          </div>
          <br><br>
          <div class="row">
              <label class="col-4" for="" name="fecha" required><h5> Fecha:</h5></label>
              <div class="input-group-prepend">
                <span class="input-group-text" id="basic-addon1"><b>></b></span>
              </div>
              <input type=" text" class="col-6 input-group">
          </div>
          <br><br>
          <div class="row">
              <label class="col-4" for="" name="hora" required><h5>Hora:</h5></label>
              <div class="input-group-prepend">
                <span class="input-group-text" id="basic-addon1"><b>></b></span>
              </div>
              <input type=" text" class="col-6 input-group">
          </div>
          <br><br>
          <div class="row">
              <label class="col-4" for="" name="numasistentes" required><h5> Número de Asistentes:</h5></label>
              <div class="input-group-prepend">
                <span class="input-group-text" id="basic-addon1"><b>></b></span>
              </div>
              <input type=" text" class="col-6 input-group">
          </div>
          <br><br>
          <div class="row">
              <label class="col-4" for="" name="visitaid" required><h5> Id Visitas:</h5></label>
              <div class="input-group-prepend">
                <span class="input-group-text" id="basic-addon1"><b>></b></span>
              </div>
              <input type=" text" class="col-6 input-group">
          </div>
          <br><br><br>
           <div class="row">
               <div class="container" style="max-width:55%">
                <input type="submit" class="btn btn-warning col-4" value="volver" formaction="${pageContext.request.contextPath}/ListarCapacitacion">
                &nbsp;&nbsp;&nbsp;&nbsp;
                <input type="submit" class="btn btn-warning col-4" value="aceptar">
               </div>
           </div>          
        </div>
      </form> 
      <div class="container" style="height: 50px;"></div>
    
    <!-- Optional JavaScript -->
    <!-- jQuery first, then Popper.js, then Bootstrap JS -->
    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js" integrity="sha384-OgVRvuATP1z7JjHLkuOU7Xw704+h835Lr+6QL9UvYjZE3Ipu6Tp75j7Bh/kR0JKI" crossorigin="anonymous"></script>
  </body>
</html>

			
	


	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	<form action="AgregarCapacitacion" method="post">
		<table class="container-fluid table text-left bg-">
			<tr>
				<td><label for="nombre">ID Capacitación: </label></td>
				<td><input type="number" name="idcapacitacion" id="idcapacitacion"></td>
			</tr>

			<tr>
				<td><p>Fecha:</p></td>
				<td><input type="text" name="fecha" id="fecha"></td>

			</tr>
			<tr>
				<td><label>Hora: </label></td>
				<td><input type="text" name="hora" id="hora" placeholder="00:00"></td>
			</tr>
			<tr>
				<td><label>Numero Asistentes: </label></td>
				<td><input type="number" name="numasistentes" id="numasistentes"></td>
			</tr>
			<tr>
				<td><label>Id Visitante: </label></td>
				<td><input type="number" name="visitaid" id="idvisita">
				</td>
			</tr>
			<tr>
				<td><input type="submit" value="Grabar"></td>
			</tr>
		</table>
	</form>
		<a href="${pageContext.request.contextPath}/ListarCapacitacion">Listar Capacitaciones</a>
			
