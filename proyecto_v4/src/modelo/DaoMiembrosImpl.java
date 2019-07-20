package modelo;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.NoResultException;
import javax.persistence.PersistenceContext;
import javax.persistence.Query;

import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import entidades.Miembro;

@Repository("DaoMiembros")
public class DaoMiembrosImpl implements DaoMiembros {
	@PersistenceContext(unitName = "proyectoPU")
	EntityManager em;
	
	@Override
	public Miembro loginMiembro(String email, String password) {
		try {
		Query qr=em.createQuery("select m from Miembro m where m.email=?1 and m.password=?2");
		qr.setParameter(1, email);
		qr.setParameter(2, password);
		return (Miembro) qr.getSingleResult();
		}catch(NoResultException e){
			return null;
		}
	}
	
	@Transactional
	@Override
	public void registrarMiembro(Miembro miembro) {
		em.persist(miembro);
	}
	
	@Transactional
	@Override
	public void actualizarMiembro(String idDni, String nombre, int telefono, String direccion, String email) {
		Miembro m = em.find(Miembro.class, idDni);
		m.setNombre(nombre);
		m.setTelefono(telefono);
		m.setDireccion(direccion);
		m.setEmail(email);
		em.merge(m);
	}

	@Transactional
	@Override
	public boolean actualizarPassword(String idDni, String antiguo, String nuevo) {
		Miembro m = em.find(Miembro.class, idDni);
		if(m.getPassword().equals(antiguo)) {
			m.setPassword(nuevo);
			em.merge(m);
			return true;
		}else {
			return false;
		}
	}
	
	@Override
	public List<Miembro> getVoluntarios() {
		return em.createQuery("select m from Miembro m where idRol=3").getResultList();
	}

}
