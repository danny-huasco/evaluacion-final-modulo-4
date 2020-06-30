package awl.modulo4.idao;

import java.util.List;

import awl.modulo4.model.*;
public interface InterfazDao {

	//Cliente
	public boolean agregar(Cliente cliente);
	public List<Cliente> listarCliente();
	public boolean actualizar(Cliente cliente);
	public boolean eliminar (Cliente cliente);
	public Cliente buscarCliente(int clienteid);
	//accidente
	public boolean agregar(Accidente accidente);
	public List<Accidente> listarAccidente();
	//asesoria
	public boolean agregar(Asesoria asesoria);
	public List<Asesoria> listarAsesoria();
	//capacitacion
	public boolean agregar(Capacitacion capacitacion);
	public List<Capacitacion> listarCapacitacion();
	//chequeo
	public boolean agregar(Chequeo chequeo);
	public List<Chequeo> listarChequeo();
	//empleado
	public boolean agregar(Empleado empleado);
	public List<Empleado> listarEmpleado();
	public boolean actualizar(Empleado empleado);
	public boolean eliminar (Empleado empleado);
<<<<<<< HEAD
	public Empleado buscarEmpleado(int empleadoid);
=======
	public Empleado buscarEmpleado(int idempleado);
>>>>>>> 15e1807ae10ab46b69bbdbb1f92180eaf265b8b7
	//mejora
	public boolean agregar(Mejora mejora);
	public List<Mejora> listarMejoras();
	//pago 
	public boolean agregar(Pago pago);
<<<<<<< HEAD

=======
>>>>>>> 15e1807ae10ab46b69bbdbb1f92180eaf265b8b7
	public List<Pago> listarPagos();
	//visita
	public boolean agregar(Visita visita);
	public List<Visita> listarVisita();
}

