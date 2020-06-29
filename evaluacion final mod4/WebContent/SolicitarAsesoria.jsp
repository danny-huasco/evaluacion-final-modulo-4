<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
 <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    
    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css" integrity="sha384-9aIt2nRpC12Uk9gS9baDl411NQApFmC26EwAOH8WgZl5MYYxFfc+NcPb1dKGj7Sk" crossorigin="anonymous">
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
  <title>Solicitar Asesoria </title>
<!--================================================== -->

</head>
<body>


    <header class="jumbotron text-center" style="margin-bottom:0" id="cabeceracarlos">
    
    <c:if test="${ccmensaje != null}">
	<h3><c:out value="${ccmensaje}"></c:out></h3>
	</c:if>
	
        <h1> Solicitar Asesoria  </h1>
       
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
				
				
					<form id="contact-form" method="post" action="SolicitarAsesoria" role="form">
					
                        <div class="form-group">
                            <input type="number" placeholder="Id Asesoria" class="form-control" name="idasesoria" >
                        </div>
                        
                        <div class="form-group">
                            <input type="text" placeholder="Detalle " class="form-control" name="detalle" >
                        </div>

                        <div class="form-group">
                            <input type="text" placeholder="Gestion" class="form-control" name="gestion">
                        </div>


                        <div class="form-group">
                            <input type="text" placeholder="Propuestas" class="form-control" name="propuestas" >
                        </div>

                        <div class="form-group">
                            <input type="text" placeholder="fecha" class="form-control" name="fecha" >
                        </div>
                        
                        <div class="form-group">
                            <input type="text" placeholder="Asesoria especial" class="form-control" name="especial" >	
                        </div>

                       <div class="form-group">
                            <input type="number" placeholder="Visita id" class="form-control" name="visitaid" >	
                        </div>

                        <div id="cf-submit">
                                  <button type="submit" class="btn btn-transparent" id="contact-submit"> Enviar </button>
                        </div>
                        
						
					</form>
					
					
					
					<a href="${pageContext.request.contextPath}/ListadoAsesoria"> Volver al listado de Asesorias </a>
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