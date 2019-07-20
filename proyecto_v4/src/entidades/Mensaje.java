package entidades;

import java.io.Serializable;
import javax.persistence.*;
import java.util.Date;


/**
 * The persistent class for the mensajes database table.
 * 
 */
@Entity
@Table(name="mensajes")
@NamedQuery(name="Mensaje.findAll", query="SELECT m FROM Mensaje m")
public class Mensaje implements Serializable {
	private static final long serialVersionUID = 1L;

	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	private int idMensaje;

	private String email;

	@Temporal(TemporalType.TIMESTAMP)
	private Date fecha;

	private String mensaje;

	private String nombre;

	private int telefono;

	public Mensaje() {
	}

	public Mensaje(int idMensaje, String email, Date fecha, String mensaje, String nombre, int telefono) {
		super();
		this.idMensaje = idMensaje;
		this.email = email;
		this.fecha = fecha;
		this.mensaje = mensaje;
		this.nombre = nombre;
		this.telefono = telefono;
	}

	public int getIdMensaje() {
		return this.idMensaje;
	}

	public void setIdMensaje(int idMensaje) {
		this.idMensaje = idMensaje;
	}

	public String getEmail() {
		return this.email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public Date getFecha() {
		return this.fecha;
	}

	public void setFecha(Date fecha) {
		this.fecha = fecha;
	}

	public String getMensaje() {
		return this.mensaje;
	}

	public void setMensaje(String mensaje) {
		this.mensaje = mensaje;
	}

	public String getNombre() {
		return this.nombre;
	}

	public void setNombre(String nombre) {
		this.nombre = nombre;
	}

	public int getTelefono() {
		return this.telefono;
	}

	public void setTelefono(int telefono) {
		this.telefono = telefono;
	}

}