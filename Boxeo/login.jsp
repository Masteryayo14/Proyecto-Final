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
            <li><a href="index.jsp">Inicio</a>
                <ul>
                	<li><a href="login.jsp">Inicio de Sesi�n Admin</a></li>
                    <li><a href="#origen">Origen</a></li>
                    <li><a href="#implementos">Implementos</a></li>
                    <li><a href="#info">Mas informaci�n</a></li>
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
                    <li><a href="#introduccion">Introducci�n</a></li>
                    <li><a href="#tecnicas">Tecnica basicas</a></li>
                    <li><a href="#entrenamiento">Entrenamiento y rutinas</a></li>
                    <li><a href="#recursos">Recursos adicionales</a></li>
                </ul>
            </li>
        </ul>
    </nav>
<center>
	<p>.</p>

<div class="div5">
	<center>
    <h2>Iniciar Sesi�n</h2> 
    <form action="loginController.jsp" method="post">
        Usuario: <input type="text" name="usuario" required><br>
        Contrase�a: <input type="password" name="contrasena" required><br>
        <input type="submit" value="Iniciar Sesi�n">
    </form>


</div>



    
    
</body>
</html>