package entidades;

import java.io.Serializable;
import javax.persistence.*;
import java.util.List;


/**
 * The persistent class for the miembros database table.
 * 
 */
@Entity
@Table(name="miembros")
@NamedQuery(name="Miembro.findAll", query="SELECT m FROM Miembro m")
public class Miembro implements Serializable {
	private static final long serialVersionUID = 1L;

	@Id
	private String idDni;

	private String direccion;

	private String email;

	private int idRol;

	private String nombre;

	private String password;

	private int telefono;

	//bi-directional many-to-one association to Solicitud
	@OneToMany(mappedBy="miembro")
	private List<Solicitud> solicituds;

	public Miembro() {
	}
	
	public Miembro(String idDni, String direccion, String email, int idRol, String nombre, String password,
			int telefono) {
		super();
		this.idDni = idDni;
		this.direccion = direccion;
		this.email = email;
		this.idRol = idRol;
		this.nombre = nombre;
		this.password = password;
		this.telefono = telefono;
	}

	public String getIdDni() {
		return this.idDni;
	}

	public void setIdDni(String idDni) {
		this.idDni = idDni;
	}

	public String getDireccion() {
		return this.direccion;
	}

	public void setDireccion(String direccion) {
		this.direccion = direccion;
	}

	public String getEmail() {
		return this.email;
	}

	public void setEmail(String email) {
		this.email = email;
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

	public String getPassword() {
		return this.password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public int getTelefono() {
		return this.telefono;
	}

	public void setTelefono(int telefono) {
		this.telefono = telefono;
	}

	public List<Solicitud> getSolicituds() {
		return this.solicituds;
	}

	public void setSolicituds(List<Solicitud> solicituds) {
		this.solicituds = solicituds;
	}

	public Solicitud addSolicitud(Solicitud solicitud) {
		getSolicituds().add(solicitud);
		solicitud.setMiembro(this);

		return solicitud;
	}

	public Solicitud removeSolicitud(Solicitud solicitud) {
		getSolicituds().remove(solicitud);
		solicitud.setMiembro(null);

		return solicitud;
	}

}