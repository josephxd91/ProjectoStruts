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
	private List<Cliente> listaClientes;
	private final DaoCliente daoCliente = new PersistenciaBDDaoCliente();
	private int codigo;
	private Cliente cliente;

	public int getCodigo() {
		return codigo;
	}

	public void setCodigo(int codigo) {
		this.codigo = codigo;
	}

	public Cliente getCliente() {
		return cliente;
	}

	public void setCliente(Cliente cliente) {
		this.cliente = cliente;
	}

	public String eliminarCliente() {
		daoCliente.eliminarCliente(codigo);
		listaClientes = daoCliente.listarCliente();
		return SUCCESS;
	}

	public String obtenerCliente() {
		// JSONSer
		cliente = daoCliente.obtenerCliente(codigo);
		System.out.println("cliente => " + cliente.toString());
		return SUCCESS;
	}

	public String updateClient() {

		System.out.println("cliente update ==> " + cliente.toString());
//		cliente.setPublicidad(false);
//		cliente.setGenero("Masculino");
//		cliente.setProfesion("doctor");

		if (cliente.getCodigo() > 0) {
			daoCliente.modificarCliente(cliente);
			return SUCCESS;
		} 
	
		daoCliente.insertarCliente(cliente);
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
