 <!doctype html>
<html lang="en">
  <head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="css/bootstrap.min.css">
    <script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
    <title>Solicitar Asesoria</title>
  </head>
  <body>
    <div class="jumbotron">
        <header class="text-center">
            <h2>Solicitar Asesoria </h2>
        </header>
    </div> 
     <form action="SolicitarAsesoria">  
      <div class="container">
          <div class="row">
             <label class="col-4" for="" name="idasesoria" required ><h5>Id Asesoria:</h5></label>
              <div class="input-group-prepend">
                <span class="input-group-text" id="basic-addon1"><b>></b></span>
              </div>              
              <input type=" text" class="col-6 input-group">
          </div>
          <br><br>
          <div class="row">
              <label class="col-4" for="" name="detalle" required><h5> Detalle:</h5></label>
              <div class="input-group-prepend">
                <span class="input-group-text" id="basic-addon1"><b>></b></span>
              </div>
              <input type=" text" class="col-6 input-group">
          </div>
          <br><br>
          <div class="row">
              <label class="col-4" for="" name="gestion" required><h5>Gestion:</h5></label>
              <div class="input-group-prepend">
                <span class="input-group-text" id="basic-addon1"><b>></b></span>
              </div>
              <input type=" text" class="col-6 input-group">
          </div>
          <br><br>
          <div class="row">
              <label class="col-4" for=""name="propuestas" required><h5> Propuestas:</h5></label>
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
              <label class="col-4" for=""name="especial" required><h5> Especial: </h5></label>
              <div class="input-group-prepend">
                <span class="input-group-text" id="basic-addon1"><b>></b></span>
              </div>
              <input type=" text" class="col-6 input-group">
          </div>
          <br><br>
          <div class="row">
              <label class="col-4" for="" name="visitaid" required ><h5> Visita id:</h5></label>
              <div class="input-group-prepend">
                <span class="input-group-text" id="basic-addon1"><b>></b></span>
              </div>
              <input type=" text" class="col-6 input-group">
          </div>
          <br><br><br>
           <div class="row">
               <div class="container" style="max-width:55%">
                <input type="submit" class="btn btn-warning col-4" value="volver" formaction="${pageContext.request.contextPath}/ListadoAsesoria">
                &nbsp;&nbsp;&nbsp;&nbsp;
                <input type="submit" class="btn btn-warning col-4" value="aceptar">
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