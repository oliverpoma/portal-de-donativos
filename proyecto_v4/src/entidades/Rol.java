package entidades;

import java.io.Serializable;
import javax.persistence.*;


/**
 * The persistent class for the rols database table.
 * 
 */
@Entity
@Table(name="rols")
@NamedQuery(name="Rol.findAll", query="SELECT r FROM Rol r")
public class Rol implements Serializable {
	private static final long serialVersionUID = 1L;

	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	private int idRol;

	private String nombre;

	public Rol() {
	}

	public Rol(int idRol, String nombre) {
		super();
		this.idRol = idRol;
		this.nombre = nombre;
	}

	public int getIdRol() {
		return this.idRol;
	}

	public void setIdRol(int idRol) {
		this.idRol = idRol;
	}

	public String getNombre() {
		return this.nombre;
	}

	public void setNombre(String nombre) {
		this.nombre = nombre;
	}

}