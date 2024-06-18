<%@ page import="java.sql.*, java.io.*, jakarta.servlet.*, jakarta.servlet.http.*" %>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Resultado de inicio de sesión</title>
</head>
<body>
    <% 
        String nombre = request.getParameter("Nombre");
        String contraseña = request.getParameter("Contraseña");

        // Establecer la conexión con la base de datos (ejemplo con MySQL)
        String url = "jdbc:mysql://localhost:3306/boxeo";
        String user = "root";
        String password = "Admin123";

        try {
            Class.forName("com.mysql.jdbc.Driver");
            Connection con = DriverManager.getConnection(url, user, password);
            PreparedStatement ps = con.prepareStatement("select * from usuarios where nombre=? and contraseña=?");
            ps.setString(1, nombre);
            ps.setString(2, contraseña);
            
            ResultSet rs = ps.executeQuery();
            
            if (rs.next()) {
                // Usuario autenticado correctamente
                session.setAttribute("usuario", nombre);
                response.sendRedirect("adminComentario.jsp"); // Redirigir a la página autorizada
            } else {
                // Usuario no autorizado
                out.println("<p>Usuario no autorizado o contraseña invalida.</p>");
            }
            
            con.close();
        } catch (Exception e) {
            out.println(e);
        }
    %>
</body>
</html>
