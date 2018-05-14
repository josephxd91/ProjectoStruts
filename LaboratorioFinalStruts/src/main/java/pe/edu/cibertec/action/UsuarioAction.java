package pe.edu.cibertec.action;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;

import pe.edu.cibertec.model.Usuario;
import java.util.Map;
import org.apache.struts2.dispatcher.SessionMap;

public class UsuarioAction extends ActionSupport {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	private Usuario usuario;

	public String inicio() {
		return LOGIN;
	}

	public String login() throws Exception {
		if (usuario.getUsername().equals("admin") && usuario.getPassword().equals("admin")) {
			Map sesion = ActionContext.getContext().getSession();
			sesion.put("usuario", getUsuario().getUsername());
			addActionMessage("Hola");
			return SUCCESS;
		}
		return LOGIN;
	}

	public String logout() {
		Map sesion = ActionContext.getContext().getSession();
		SessionMap sesionmap = (SessionMap) sesion;
		sesionmap.invalidate();

		return LOGIN;
	}

	public Usuario getUsuario() {
		return usuario;
	}

	public void setUsuario(Usuario usuario) {
		this.usuario = usuario;
	}

}
