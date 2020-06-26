package awl.modulo4.idao;

import java.util.List;

import awl.modulo4.model.Asesoria;

public interface IAsesoriaDao {

	public boolean agregar(Asesoria asesoria);
	public List<Asesoria> listar();
	public boolean actualizar(Asesoria asesoria);

	public Asesoria buscar(int idasesoria);
	
}
