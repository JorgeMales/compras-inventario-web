package com.distribuida.entities;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

import org.springframework.stereotype.Component;

@Component
@Entity
@Table(name="provedores")
public class Provedores {
	// Atributos 
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name="id_provedores")
	private int idProvedores;
	@Column(name="Nombre")
	private String nombre;
	@Column(name="Dirección")
	private String direccion;
	@Column(name="Teléfono")
	private String telefono;
	@Column(name="Email")
	private String email;
	
	
	public Provedores() {}


	public Provedores(int idProvedores, String nombre, String direccion, String telefono, String email) {
		this.idProvedores = idProvedores;
		this.nombre = nombre;
		this.direccion = direccion;
		this.telefono = telefono;
		this.email = email;
	}


	public int getIdProvedores() {
		return idProvedores;
	}


	public void setIdProvedores(int idProvedores) {
		this.idProvedores = idProvedores;
	}


	public String getNombre() {
		return nombre;
	}


	public void setNombre(String nombre) {
		this.nombre = nombre;
	}


	public String getDireccion() {
		return direccion;
	}


	public void setDireccion(String direccion) {
		this.direccion = direccion;
	}


	public String getTelefono() {
		return telefono;
	}


	public void setTelefono(String telefono) {
		this.telefono = telefono;
	}


	public String getEmail() {
		return email;
	}


	public void setEmail(String email) {
		this.email = email;
	}


	@Override
	public String toString() {
		return "Provedores [idProvedores=" + idProvedores + ", nombre=" + nombre + ", direccion=" + direccion
				+ ", telefono=" + telefono + ", email=" + email + "]";
	}
	
	
	
	

}
