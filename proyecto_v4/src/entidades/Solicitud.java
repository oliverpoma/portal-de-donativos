package entidades;

import java.io.Serializable;
import javax.persistence.*;
import java.util.Date;


/**
 * The persistent class for the solicituds database table.
 * 
 */
@Entity
@Table(name="solicituds")
@NamedQuery(name="Solicitud.findAll", query="SELECT s FROM Solicitud s")
public class Solicitud implements Serializable {
	private static final long serialVersionUID = 1L;

	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	private int idDonativo;

	private String conceptoProducto;

	@Temporal(TemporalType.TIMESTAMP)
	private Date fecha;

	private int idSubcategoria;

	//bi-directional many-to-one association to Miembro
	@ManyToOne
	@JoinColumn(name="idDni")
	private Miembro miembro;

	public Solicitud() {
	}
	
	public Solicitud(int idDonativo, String conceptoProducto, Date fecha, int idSubcategoria, Miembro miembro) {
		super();
		this.idDonativo = idDonativo;
		this.conceptoProducto = conceptoProducto;
		this.fecha = fecha;
		this.idSubcategoria = idSubcategoria;
		this.miembro = miembro;
	}

	public int getIdDonativo() {
		return this.idDonativo;
	}

	public void setIdDonativo(int idDonativo) {
		this.idDonativo = idDonativo;
	}

	public String getConceptoProducto() {
		return this.conceptoProducto;
	}

	public void setConceptoProducto(String conceptoProducto) {
		this.conceptoProducto = conceptoProducto;
	}

	public Date getFecha() {
		return this.fecha;
	}

	public void setFecha(Date fecha) {
		this.fecha = fecha;
	}

	public int getIdSubcategoria() {
		return this.idSubcategoria;
	}

	public void setIdSubcategoria(int idSubcategoria) {
		this.idSubcategoria = idSubcategoria;
	}

	public Miembro getMiembro() {
		return this.miembro;
	}

	public void setMiembro(Miembro miembro) {
		this.miembro = miembro;
	}

}