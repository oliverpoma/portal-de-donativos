package entidades;

import java.io.Serializable;
import javax.persistence.*;
import java.util.Date;


/**
 * The persistent class for the donativos database table.
 * 
 */
@Entity
@Table(name="donativos")
@NamedQuery(name="Donativo.findAll", query="SELECT d FROM Donativo d")
public class Donativo implements Serializable {
	private static final long serialVersionUID = 1L;

	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	private int idDonativo;

	private String conceptoProducto;

	@Temporal(TemporalType.TIMESTAMP)
	private Date fecha;

	private String idDni;

	private int idSubcategorias;

	public Donativo() {
	}

	public Donativo(int idDonativo, String conceptoProducto, Date fecha, String idDni, int idSubcategorias) {
		super();
		this.idDonativo = idDonativo;
		this.conceptoProducto = conceptoProducto;
		this.fecha = fecha;
		this.idDni = idDni;
		this.idSubcategorias = idSubcategorias;
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

	public String getIdDni() {
		return this.idDni;
	}

	public void setIdDni(String idDni) {
		this.idDni = idDni;
	}

	public int getIdSubcategorias() {
		return this.idSubcategorias;
	}

	public void setIdSubcategorias(int idSubcategorias) {
		this.idSubcategorias = idSubcategorias;
	}

}