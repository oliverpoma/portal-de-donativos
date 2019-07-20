package entidades;

import java.io.Serializable;
import javax.persistence.*;


/**
 * The persistent class for the subcategorias database table.
 * 
 */
@Entity
@Table(name="subcategorias")
@NamedQuery(name="Subcategoria.findAll", query="SELECT s FROM Subcategoria s")
public class Subcategoria implements Serializable {
	private static final long serialVersionUID = 1L;

	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	private int idSubcategorias;

	private int idCategorias;

	private String nombreS;

	public Subcategoria() {
	}

	public Subcategoria(int idSubcategorias, int idCategorias, String nombreS) {
		super();
		this.idSubcategorias = idSubcategorias;
		this.idCategorias = idCategorias;
		this.nombreS = nombreS;
	}

	public int getIdSubcategorias() {
		return this.idSubcategorias;
	}

	public void setIdSubcategorias(int idSubcategorias) {
		this.idSubcategorias = idSubcategorias;
	}

	public int getIdCategorias() {
		return this.idCategorias;
	}

	public void setIdCategorias(int idCategorias) {
		this.idCategorias = idCategorias;
	}

	public String getNombreS() {
		return this.nombreS;
	}

	public void setNombreS(String nombreS) {
		this.nombreS = nombreS;
	}

}