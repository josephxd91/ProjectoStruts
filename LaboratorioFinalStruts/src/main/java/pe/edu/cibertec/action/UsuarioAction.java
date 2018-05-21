package pe.edu.cibertec.action;

import com.opensymphony.xwork2.ActionSupport;

import pe.edu.cibertec.model.Usuario;
import java.util.Map;
import org.apache.struts2.dispatcher.SessionMap;
import org.apache.struts2.interceptor.SessionAware;

public class UsuarioAction extends ActionSupport implements SessionAware {
	private static final long serialVersionUID = 1L;

	private Usuario usuario;

	private SessionMap<String, Object> sessionMap;

	public String inicio() {
		return LOGIN;
	}

	
	
	
	public String login() throws Exception {
		clearFieldErrors();
		Usuario user = (Usuario) sessionMap.get("user");
		if(user!=null) {
			return SUCCESS;
		}else {
			
			if(usuario==null) {
				return LOGIN;
			}
					
			if(validateUser(usuario)) {
				sessionMap.put("user", usuario);
				return SUCCESS;
			}
			
			addFieldError("invalid", "Invalid username or password");
			return INPUT;
		}
	}
	
	private boolean validateUser(Usuario usuario) {
		if (usuario.getUsername().equals("admin") && usuario.getPassword().equals("admin") ) {
			return true;
		}
		return false;
	}
	
	
	
	
	

	public String logout() throws Exception {
		sessionMap.remove("user");
		sessionMap.invalidate();
		return LOGIN;
	}

	public Usuario getUsuario() {
		return usuario;
	}

	public void setUsuario(Usuario usuario) {
		this.usuario = usuario;
	}

	public String goPageHome() {
		return SUCCESS;
	}

	@Override
	public void setSession(Map<String, Object> session) {
		sessionMap = (SessionMap<String, Object>) session;

	}

}
