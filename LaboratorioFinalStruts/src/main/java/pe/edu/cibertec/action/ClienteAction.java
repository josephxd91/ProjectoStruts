package pe.edu.cibertec.action;

import java.util.List;

import com.opensymphony.xwork2.ActionSupport;

import pe.edu.cibertec.dao.DaoCliente;
import pe.edu.cibertec.dao.implement.PersistenciaBDDaoCliente;
import pe.edu.cibertec.model.Cliente;

public class ClienteAction extends ActionSupport {
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private ClienteAction cliente;
	private List<Cliente> listaClientes;
	private final DaoCliente daoCliente = new PersistenciaBDDaoCliente();

	public ClienteAction getCliente() {
		return cliente;
	}

	public void setCliente(ClienteAction cliente) {
		this.cliente = cliente;
	}

	public String listadoClientes() {
		listaClientes = daoCliente.listarCliente();
		return SUCCESS;
	}

	public List<Cliente> getListaClientes() {
		return listaClientes;
	}

	public void setListaClientes(List<Cliente> listaClientes) {
		this.listaClientes = listaClientes;
	}

}
