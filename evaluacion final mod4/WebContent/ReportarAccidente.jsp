<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
 <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    
    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="css/bootstrap.min.css">
    <link rel="stylesheet" href="estilos.css">
      <!-- CSS
  ================================================== -->
  <!-- Themefisher Icon font -->
  <link rel="stylesheet" href="plugins/themefisher-font.v-2/style.css">
  <!-- bootstrap.min css -->
  <link rel="stylesheet" href="plugins/bootstrap/dist/css/bootstrap.min.css">
  <!-- Slick Carousel -->
  <link rel="stylesheet" href="plugins/slick-carousel/slick/slick.css">
  <link rel="stylesheet" href="plugins/slick-carousel/slick/slick-theme.css">
  <!--================================================== -->
  <title>Reportar Accidente </title>
<!--================================================== -->

</head>
<body>

    <header class="jumbotron text-center" style="margin-bottom:0" id="cabeceracarlos">
        <h1> Reportar accidente </h1>
        <c:if test="${ccmensaje != null}">
		<h2>
			<c:out value="${ccmensaje}"></c:out>
		</h2>
	</c:if>
       
    </header>

    <div id="preloader">
        <div class="preloader">
          <div class="sk-circle1 sk-child"></div>
          <div class="sk-circle2 sk-child"></div>
          <div class="sk-circle3 sk-child"></div>
          <div class="sk-circle4 sk-child"></div>
          <div class="sk-circle5 sk-child"></div>
          <div class="sk-circle6 sk-child"></div>
          <div class="sk-circle7 sk-child"></div>
          <div class="sk-circle8 sk-child"></div>
          <div class="sk-circle9 sk-child"></div>
          <div class="sk-circle10 sk-child"></div>
          <div class="sk-circle11 sk-child"></div>
          <div class="sk-circle12 sk-child"></div>
        </div>
      </div> 

      <!-- Srart Contact Us =========================================== -->		
	<section class="contact-us section bg-gray" id="contact">
		<div class="container">
			<div class="row">
				<div class="col">
					<div class="title text-center">
						
						<span class="border"></span>
                    </div>
				</div>
			</div>
			<div class="row">
				<!-- Contact Form -->
				<div class="contact-form col-12 col-md-6  mx-auto" >
				
				
					<form id="contact-form" method="post" action="AgregarAccidente" role="form">
					
                        <div class="form-group">
                            <input type="number" placeholder="Id cliente" class="form-control" name="idcliente" >
                        </div>
                        
                        <div class="form-group">
                            <input type="number" placeholder="Id accidente" class="form-control" name="idaccidente" >
                        </div>

                        <div class="form-group">
                            <input type="text" placeholder="Fecha" class="form-control" name="fecha">
                        </div>


                        <div class="form-group">
                            <input type="text" placeholder="Hora" class="form-control" name="hora" >
                        </div>

                        <div class="form-group">
                            <input type="text" placeholder="Lugar" class="form-control" name="lugar" >
                        </div>
                        
                        <div class="form-group">
                            <input type="text" placeholder="Suceso" class="form-control" name="suceso" >	
                        </div>

                        <div id="cf-submit">
                            <button type="submit" class="btn btn-transparent" id="contact-submit"> Enviar </button>
                        </div>
                        
						
					</form>
					
				<a href="${pageContext.request.contextPath}/ListadoAccidente"> Ir al listado de accidentes </a>
				</div>
			</div> <!-- end row -->
			
		</div> <!-- end container -->
	</section> <!-- end section -->

      <!-- Main jQuery -->
    <script src="plugins/jquery/dist/jquery.min.js"></script>
    <!-- Bootstrap -->
    <script src="plugins/bootstrap/dist/js/popper.min.js"></script>
    <script src="plugins/bootstrap/dist/js/bootstrap.min.js"></script>
    <!-- Owl Carousel -->
    <script src="plugins/slick-carousel/slick/slick.min.js"></script>
    <script src="https://cdn.plot.ly/plotly-latest.min.js"></script>
    <!-- Smooth Scroll js -->
    <script src="plugins/smooth-scroll/dist/js/smooth-scroll.min.js"></script>
    
    <!-- Custom js -->
    <script src="js/script.js"></script>
  

</body>
</html>