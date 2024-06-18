<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="ISO-8859-1">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <!--Llamado al archivo css de nuestro proyecto-->
    <link rel="stylesheet" type="text/css" href="css/styles.css">
    <!--Llamado a la imagen que va en el favicon-->
    <link rel="icon" type="image/x-icon" href="img\guante.jpg">
    <title>Admin</title>
</head>
<body>
<div class="bloque"> 

    <!-- Bot�n para salir -->
    <p style="text-align:center"><a class="boton" href="index.jsp">INICIO</a></p>
    <center><p>.</p></center>
    <p style="text-align:center"><a class="boton" href="logoutServlet">Cerrar Sesi�n</a></p>
    
    <center><p>.</p></center>
    <div class="div5">
        <!-- Verificar si hay una sesi�n activa y mostrar contenido protegido -->
        <c:if test="${not empty sessionScope.usuario}">
            <h2>Bienvenido, ${sessionScope.usuario}</h2>
            <h2>Actualizar Comentarios</h2>
            <p style="text-align:center"><a class="boton" href="actualizarComentario.jsp">ACTUALIZAR COMENTARIOS</a></p>

            <center>
                <p>.</p>
            </center>
            
            <!-- Aqu� va el eliminar comentarios -->
            <h2>Eliminar Comentarios</h2>
            <p style="text-align:center"><a class="boton" href="eliminarComentario.jsp">ELIMINAR COMENTARIOS</a></p>
        </c:if>

        <!-- Si no hay sesi�n activa, mostrar mensaje o redirigir -->
        <c:if test="${empty sessionScope.usuario}">
            <p>No has iniciado sesi�n. Por favor <a href="login.jsp">inicia sesi�n</a>.</p>
        </c:if>
    </div>

    <!--El footer debe de ir siempre en todas las paginas-->
    <footer>
        <div class="container">
            <p>Derechos de autor &copy; 2024. Todos los derechos reservados.</p>
            <ul>
                <li><a href="#">Pol�tica de privacidad</a></li>
                <li><a href="#">T�rminos de uso</a></li>
                <li><a href="#">Contacto</a></li>
            </ul>
        </div>
    </footer>

    <script src="js/main.js"></script>
    
</body>
</html>
