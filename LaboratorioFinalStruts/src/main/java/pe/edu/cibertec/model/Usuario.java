/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package pe.edu.cibertec.model;

import java.io.Serializable;

/**
 *
 * @author Miguel
 */
public class Usuario implements Serializable{
    /**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	
	
	private String username;
    private String password;
    
    
    public Usuario() {
	}

    public Usuario(String username, String password) {
		this.username = username;
		this.password = password;
	}

	public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

	@Override
	public String toString() {
		return "Usuario [username=" + username + ", password=" + password + "]";
	}
    
    
    
    
}
