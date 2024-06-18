package ejbs;

import jakarta.ejb.LocalBean;
import jakarta.ejb.Stateless;

/**
 * Session Bean implementation class Comentario
 */
@Stateless
@LocalBean
public class Comentario implements ComentarioRemote {
	public String comentario_usuario;
	public String comentario_email;
	public String comentario_descripcion;
    
    public Comentario() {
        // TODO Auto-generated constructor stub
    }
    
    public void setInfo(String comentario_usuario, String comentario_email, String comentario_descripcion) {
    	this.comentario_usuario = comentario_usuario;
    	this.comentario_email = comentario_email;
    	this.comentario_descripcion = comentario_descripcion;
    	
    }

}

