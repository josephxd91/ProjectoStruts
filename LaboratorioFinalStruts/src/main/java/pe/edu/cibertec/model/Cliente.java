package pe.edu.cibertec.model;

import java.io.Serializable;

public class Cliente  implements Serializable{
    /**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	
	
	private int codigo;
    private String nombre;
    private String apellido;
    private String genero;
    private String profesion;
    private String numeroMovil;
    private Boolean publicidad;
    private String correo;


    

    public int getCodigo() {
        return codigo;
    }

    public void setCodigo(int codigo) {
        this.codigo = codigo;
    }

 

    public String getNombre() {
        return nombre;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    public String getApellido() {
        return apellido;
    }

    public void setApellido(String apellido) {
        this.apellido = apellido;
    }

    public String getGenero() {
        return genero;
    }

    public void setGenero(String genero) {
        this.genero = genero;
    }

   

    public String getProfesion() {
        return profesion;
    }

    public void setProfesion(String profesion) {
        this.profesion = profesion;
    }

    public String getNumeroMovil() {
        return numeroMovil;
    }

    public void setNumeroMovil(String numeroMovil) {
        this.numeroMovil = numeroMovil;
    }

    public Boolean getPublicidad() {
        return publicidad;
    }

    public void setPublicidad(Boolean publicidad) {
        this.publicidad = publicidad;
    }

    public String getCorreo() {
        return correo;
    }

    public void setCorreo(String correo) {
        this.correo = correo;
    }

	@Override
	public String toString() {
		return "Cliente [codigo=" + codigo + ", nombre=" + nombre + ", apellido=" + apellido + ", genero=" + genero
				+ ", profesion=" + profesion + ", numeroMovil=" + numeroMovil + ", publicidad=" + publicidad
				+ ", correo=" + correo + "]";
	}

    

}
