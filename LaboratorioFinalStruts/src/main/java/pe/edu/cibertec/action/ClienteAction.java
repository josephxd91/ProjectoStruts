package pe.edu.cibertec.action;

import com.opensymphony.xwork2.ActionSupport;

public class ClienteAction extends ActionSupport{
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private ClienteAction cliente;

	public ClienteAction getCliente() {
		return cliente;
	}

	public void setCliente(ClienteAction cliente) {
		this.cliente = cliente;
	}
	
	public String listadoClientes() {
		 return SUCCESS;
	}
	
	
	
}
