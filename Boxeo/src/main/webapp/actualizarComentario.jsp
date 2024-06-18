<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
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
    <title>Actualizar Comentarios</title>
</head>
<body>
<div class="bloque"> 

    <!-- Botón para regresar al inicio del admin -->
    <p style="text-align:center"><a class="boton" href="adminComentario.jsp">INICIO ADMIN</a></p>
    <center><p>.</p></center>
    <div class="div5">
        <!-- Verificar si hay una sesión activa y mostrar contenido protegido -->
        <c:if test="${not empty sessionScope.usuario}">
            <h2>Bienvenido, ${sessionScope.usuario}</h2>
            <!-- Aquí va la tabla de comentarios -->
            <sql:setDataSource var="dbSource" driver="com.mysql.cj.jdbc.Driver"
                                url="jdbc:mysql://localhost:3306/boxeo"
                                user="root" password="Admin123"/>

            <sql:query dataSource="${dbSource}" var="result">
                SELECT comentario_id, comentario_usuario, comentario_descripcion FROM comentario;
            </sql:query>
            
            <center>
                <span style="color: red;"> Comentarios </span>
                <table border="1">
                    <tr>
                        <th>Id</th>
                        <th>Usuario</th>
                        <th>Descripción</th>
                        <th>Acción</th>
                    </tr>
                    <c:forEach var="row" items="${result.rows}">
                        <tr>
                            <td>${row.comentario_id}</td>
                            <td>${row.comentario_usuario}</td>
                            <td>${row.comentario_descripcion}</td>
                            <td>
                                <!-- Formulario para actualizar comentarios -->
                                <form action="actualizarComentarioServlet" method="post">
                                    <input type="hidden" name="Id" value="${row.comentario_id}" />
                                    <input type="text" name="Usuario" value="${row.comentario_usuario}" required />
                                    <input type="text" name="Descripcion" value="${row.comentario_descripcion}" required />
                                    <input type="submit" value="Actualizar" />
                                </form>
                            </td>
                        </tr>
                    </c:forEach>
                </table>
            </center>
        </c:if>

        <!-- Si no hay sesión activa, mostrar mensaje o redirigir -->
        <c:if test="${empty sessionScope.usuario}">
            <p>No has iniciado sesión. Por favor <a href="login.jsp">inicia sesión</a>.</p>
        </c:if>
    </div>

    <!--El footer debe de ir siempre en todas las páginas-->
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

    <script src="js/main.js"></script>
    
</body>
</html>
