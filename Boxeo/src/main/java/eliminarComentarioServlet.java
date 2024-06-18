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

@WebServlet("/eliminarComentarioServlet")
public class eliminarComentarioServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    private static final String JDBC_URL = "jdbc:mysql://localhost:3306/boxeo";
    private static final String JDBC_USER = "root";
    private static final String JDBC_PASS = "Admin123";

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String comentarioId = request.getParameter("Id");

        try (Connection conn = DriverManager.getConnection(JDBC_URL, JDBC_USER, JDBC_PASS)) {
            String sql = "DELETE FROM comentario WHERE comentario_id = ?";
            PreparedStatement pstmt = conn.prepareStatement(sql);
            pstmt.setString(1, comentarioId);

            int rowsAffected = pstmt.executeUpdate();
            pstmt.close();

            if (rowsAffected > 0) {
                request.setAttribute("message", "Comentario eliminado correctamente.");
            } else {
                request.setAttribute("message", "No se encontró ningún comentario con el ID proporcionado.");
            }
        } catch (SQLException e) {
            e.printStackTrace();
            request.setAttribute("message", "Error al intentar eliminar el comentario: " + e.getMessage());
        }

        request.getRequestDispatcher("eliminarComentario.jsp").forward(request, response);
    }
}
