package entidades;

import java.io.Serializable;
import javax.persistence.*;


/**
 * The persistent class for the categorias database table.
 * 
 */
@Entity
@Table(name="categorias")
@NamedQuery(name="Categoria.findAll", query="SELECT c FROM Categoria c")
public class Categoria implements Serializable {
	private static final long serialVersionUID = 1L;

	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	private int idCategorias;

	private String nombreC;

	public Categoria() {
	}
	
	public Categoria(int idCategorias, String nombreC) {
		super();
		this.idCategorias = idCategorias;
		this.nombreC = nombreC;
	}

	public int getIdCategorias() {
		return this.idCategorias;
	}

	public void setIdCategorias(int idCategorias) {
		this.idCategorias = idCategorias;
	}

	public String getNombreC() {
		return this.nombreC;
	}

	public void setNombreC(String nombreC) {
		this.nombreC = nombreC;
	}

}