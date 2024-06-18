import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet("/actualizarComentarioServlet")
public class actualizarComentarioServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    private static final String JDBC_URL = "jdbc:mysql://localhost:3306/boxeo";
    private static final String JDBC_USER = "root";
    private static final String JDBC_PASS = "Admin123";

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String comentarioId = request.getParameter("Id");
        String usuario = request.getParameter("Usuario");
        String descripcion = request.getParameter("Descripcion");

        try (Connection conn = DriverManager.getConnection(JDBC_URL, JDBC_USER, JDBC_PASS)) {
            String sql = "UPDATE comentario SET comentario_usuario = ?, comentario_descripcion = ? WHERE comentario_id = ?";
            PreparedStatement pstmt = conn.prepareStatement(sql);
            pstmt.setString(1, usuario);
            pstmt.setString(2, descripcion);
            pstmt.setString(3, comentarioId);

            int rowsAffected = pstmt.executeUpdate();
            pstmt.close();

            if (rowsAffected > 0) {
                request.setAttribute("message", "Comentario actualizado correctamente.");
            } else {
                request.setAttribute("message", "No se pudo actualizar el comentario.");
            }
        } catch (SQLException e) {
            e.printStackTrace();
            request.setAttribute("message", "Error al intentar actualizar el comentario: " + e.getMessage());
        }

        request.getRequestDispatcher("actualizarComentario.jsp").forward(request, response);
    }
}
