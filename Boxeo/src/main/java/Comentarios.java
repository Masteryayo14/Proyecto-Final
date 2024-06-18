import java.io.*;
import java.util.*;
import java.sql.*;
import jakarta.ejb.EJB;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import ejbs.Comentario;


@WebServlet("/")
public class Comentarios extends HttpServlet {
    private static final long serialVersionUID = 1L;

    public Comentarios() {
        super();
    }

    @EJB
    Comentario comenta;

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        final String JDBC_DRIVER = "com.mysql.cj.jdbc.Driver";
        final String DB_URL = "jdbc:mysql://localhost:3306/boxeo";
        final String USER = "root";
        final String PASS = "Admin123";

        List<Map<String, String>> comentarios = new ArrayList<>();

        try {
            Class.forName(JDBC_DRIVER);
            Connection conn = DriverManager.getConnection(DB_URL, USER, PASS);
            Statement stmt = conn.createStatement();
            String sql = "SELECT comentario_id, comentario_usuario, comentario_descripcion FROM comentario;";
            ResultSet rs = stmt.executeQuery(sql);

            while (rs.next()) {
            	System.out.println("entra al while");
                Map<String, String> comentario = new HashMap<>();
                comentario.put("id", rs.getString("comentario_id"));
                comentario.put("usuario", rs.getString("comentario_usuario"));
                comentario.put("descripcion", rs.getString("comentario_descripcion"));
                comentarios.add(comentario);
            }

            rs.close();
            stmt.close();
            conn.close();
        } catch (SQLException se) {
        	System.out.println("entra al catch 1");
            se.printStackTrace();
        } catch (Exception e) {
        	System.out.println("entra al catch 2");
            e.printStackTrace();
        }
        
       
        request.setAttribute("comentarios", comentarios);
        request.getRequestDispatcher("index.jsp").forward(request, response);
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request, response);
        response.sendRedirect(request.getRequestURI());
        
    }
}
