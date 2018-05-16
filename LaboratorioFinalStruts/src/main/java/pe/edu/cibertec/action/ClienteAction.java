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
	private int codigo;
	
	
	
	

	public int getCodigo() {
		return codigo;
	}

	public void setCodigo(int codigo) {
		this.codigo = codigo;
	}

	public ClienteAction getCliente() {
		return cliente;
	}

	public void setCliente(ClienteAction cliente) {
		this.cliente = cliente;
	}
	
	
	public String eliminarCliente() {
		daoCliente.eliminarCliente(codigo);
		listaClientes = daoCliente.listarCliente();
		return SUCCESS;
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
