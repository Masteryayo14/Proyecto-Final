<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    



<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix = "c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<!--Llamado al archivo css de nuestro proyecto-->
<link rel="stylesheet" type="text/css" href="css/styles.css">
<!--Llamado a la imagen que va en el favicon-->
<link rel="icon" type="image/x-icon" href="img\guante.jpg">
<title>Login</title>
</head>
<body>
<div class="bloque"> 

	<h4>
        <div id="saludo"></div>
    </h4>
    <!--El nav debe de ir siempre en todas las paginas-->
    <nav class="nav">
        <ul>
            <li><a href="adminComentario.jsp">Inicio</a>
                <ul>
                	<li><a href="login.jsp">Inicio de Sesión Admin</a></li>
                    <li><a href="#origen">Origen</a></li>
                    <li><a href="#implementos">Implementos</a></li>
                    <li><a href="#info">Mas información</a></li>
                    <li><a href="#js">Funciones JS</a></li>
                </ul>
            </li>
            <li><a href="boxeo.jsp">Mejores Boxeadores De La Historia</a>
                <ul>
                    <li><a href="#ma">Muhammad Ali</a></li>
                    <li><a href="#mt">Mike Tyson</a></li>
                    <li><a href="#rm">Rocky Marciano</a></li>
                    <li><a href="#srr">Sugar Ray Robinson</a></li>
                    <li><a href="#fmjr">Floyd Mayweather Jr.</a></li>
                    <li><a href="#anime">Anime</a></li>
                    <li><a href="#im">Ippo Makunouchi</a></li>
                    <li><a href="#bh">Baki Hanma</a></li>
                    <li><a href="#rb">Rocky Balboa</a></li>
                </ul>
            </li>
            <li><a href="aprendeBoxear.jsp">Aprende A Boxear</a>
                <ul>
                    <li><a href="#introduccion">Introducción</a></li>
                    <li><a href="#tecnicas">Tecnica basicas</a></li>
                    <li><a href="#entrenamiento">Entrenamiento y rutinas</a></li>
                    <li><a href="#recursos">Recursos adicionales</a></li>
                </ul>
            </li>
        </ul>
    </nav>
<center>
	<p>.</p>
</center>
<div class="div5">
	
    <h2>Iniciar Sesión</h2> 
    <form action="loginController.jsp" method="post">
    	<label for="nombre">Usuario:</label><br>
		<input type="text" id="nombre" name="Nombre" required><br>
    	
    	<label for="contraseña">Contraseña:</label><br>
		<input type="text" id="contraseña" name="Contraseña" required><br>
         
        <input type="submit" value="Iniciar Sesión">
    </form>



</div>


			<!--El footer debe de ir siempre en todas las paginas-->
        <footer>
            <div class="container">
                <p>Derechos de autor &copy; 2024. Todos los derechos reservados.</p>
                <ul>
                    <li><a href="#">Política de privacidad</a></li>
                    <li><a href="#">Términos de uso</a></li>
                    <li><a href="#">Contacto</a></li>
                </ul>
            </div>
        </footer>
    
    
</body>
</html>