<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Capacitaciones</title>
    <link rel="stylesheet" href="css.css">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css" integrity="sha384-9aIt2nRpC12Uk9gS9baDl411NQApFmC26EwAOH8WgZl5MYYxFfc+NcPb1dKGj7Sk" crossorigin="anonymous">
    <link href="https://fonts.googleapis.com/css2?family=Roboto:ital@1&display=swap" rel="stylesheet"> 
    <script src="https://unpkg.com/ionicons@5.0.0/dist/ionicons.js"></script>
    <link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
    <link rel="stylesheet" href="/resources/demos/style.css">
    <script src="https://code.jquery.com/jquery-1.12.4.js"></script>
    <script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
</head>
<body>

    <form action=""method = "post" >

        <h1 class=" text-lefth"> Regitro Capacitación</h1>
        <table class="container-fluid table text-left bg-" >
           
            <tr> 
                <td> <label for="nombre">ID Capacitación: </label> </td>
                <td><input type="text" name="id_capacitacion" id="id_capacitacion" > </td>
            </tr>
           
            <tr>

               <td> <script>
                $( function() {
                    $( "#datepicker" ).datepicker();
                } );
                </script> <p>Date: </p> </td>
                <td ><input type="text" id="datepicker"></td>
               
            </tr>
            <tr> 
                <td> <label for="nombre">Hora: </label> </td>
                <td><input type="text" name="hora" id="hora" placeholder="00:00"> </td>
            </tr>
            <tr> 
                <td> <label for="nombre">Numero Asistentes: </label> </td>
                <td><input type="number" name="asistentes" id="asistentes"> </td>
            </tr>
            <tr>
                <td  ><input type="submit" name="button" id="button" value="Enviar"></td>
            </tr>
        </table>
    </form>
   <a href="listarCapacitacines.html">Listar Capacitaciones</a>
  
</body>
</html>