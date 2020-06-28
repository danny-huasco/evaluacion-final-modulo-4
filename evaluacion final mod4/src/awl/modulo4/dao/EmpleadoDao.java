package awl.modulo4.dao;

import java.sql.Connection; 
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import awl.modulo4.conexion.ConexionSingleton;
import awl.modulo4.idao.InterfazDao;
import awl.modulo4.model.*;

public class EmpleadoDao implements InterfazDao {

	@Override
	public boolean agregar(Empleado empleado) {
		// TODO Auto-generated method stub
		boolean agregar = false;
		
		Statement stm = null;
		Connection con = null;
		
		String sql = "INSERT INTO Empleado VALUES ('" + empleado.getIdEmpleado()  + "','" + empleado.getNombreempleado() + "','" + empleado.getEspecialidad() + "')";
		
		try {
			con = ConexionSingleton.getConnection();
			stm = con.createStatement();
			stm.execute(sql);
			agregar = true;
			stm.close();
			//con.close();
		}catch(SQLException e) {
			System.out.println("Error: Clase EmpleadoDao, método agregar");
			e.printStackTrace();
		}
		
		return agregar;
	}

	@Override
	public List<Empleado> listarEmpleado() {//ListadoEmpleados
		// TODO Auto-generated method stub
		Connection con = null;
		Statement stm = null;
		ResultSet rs = null;
		
		String sql = "select * from Empleado ORDER BY idempleado";
		
		List<Empleado> listaEmpleado = new ArrayList<Empleado>();
		
		try {
			con = ConexionSingleton.getConnection();
			stm = con.createStatement();
			rs = stm.executeQuery(sql);
			while (rs.next()) {
				Empleado e = new Empleado();
				e.setIdEmpleado(rs.getInt(1));
				e.setNombreempleado(rs.getString(2));
				e.setEspecialidad(rs.getString(3));
				listaEmpleado.add(e);
			}
			stm.close();
			rs.close();
			//con.close();
		} catch(SQLException e) {
			System.out.println("Error: Clase EmpleadoDao, método listar ");
			e.printStackTrace();
		}
		
		return listaEmpleado;
	}

	@Override
	public boolean actualizar(Empleado empleado) {
		// TODO Auto-generated method stub
		Connection con = null;
		Statement stm = null;
		
		boolean actualizar = false;
		
		String sql = "UPDATE Empleado SET  idempleado = '" + empleado.getIdEmpleado() + "', nombre = '" + empleado.getNombreempleado() + "', especialidad = '" + empleado.getEspecialidad() + "' WHERE idempleado = '" + empleado.getIdEmpleado() + "'";
		
		try {
			con = ConexionSingleton.getConnection();
			stm = con.createStatement();
			stm.execute(sql);
			actualizar = true;
			stm.close();
			//con.close();
		}catch(SQLException e) {
			System.out.println("Error: Clase EmpleadoDao, método actualizar");
			e.printStackTrace();
		}
		
		return actualizar;
	}

	@Override
	public boolean eliminar(Empleado empleado) {
		// TODO Auto-generated method stub
		Connection con = null;
		Statement stm = null;
		
		boolean eliminar = false;
		
		String sql = "DELETE FROM Empleado WHERE idempleado = " + empleado.getIdEmpleado();
		
		try {
			con = ConexionSingleton.getConnection();
			stm = con.createStatement();
			stm.execute(sql);
			eliminar = true;
			stm.close();
			//con.close();
		}catch(SQLException e) {
			System.out.println("Error: Clase EmpleadoDao, método eliminar");
			e.printStackTrace();
		}
		
		return eliminar;
	}

	@Override
	public Empleado buscarEmpleado(int empleadoid) {//ListadoEmpleados
		// TODO Auto-generated method stub
		Connection con = null;
		Statement stm = null;
		ResultSet rs = null;
		
		String sql = "select * from Empleado WHERE idempleado = '" + empleadoid + "'";
		
		Empleado emp = new Empleado();
		
		try {
			con = ConexionSingleton.getConnection();
			stm = con.createStatement();
			rs = stm.executeQuery(sql);
			while (rs.next()) {
				emp.setIdEmpleado(rs.getInt(1));
				emp.setNombreempleado(rs.getString(2));
				emp.setEspecialidad(rs.getString(3));
			}
			stm.close();
			rs.close();
			//con.close();
		} catch(SQLException e) {
			System.out.println("Error: Clase EmpleadoDao, método buscar ");
			e.printStackTrace();
		}
		
		return emp;
	}

	@Override
	public boolean agregar(Cliente cliente) {
		// TODO Auto-generated method stub
		return false;
	}

	@Override
	public List<Cliente> listarCliente() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public boolean actualizar(Cliente cliente) {
		// TODO Auto-generated method stub
		return false;
	}

	@Override
	public boolean eliminar(Cliente cliente) {
		// TODO Auto-generated method stub
		return false;
	}

	@Override
	public Cliente buscarCliente(int clienteid) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public boolean agregar(Accidente accidente) {
		// TODO Auto-generated method stub
		return false;
	}

	@Override
	public List<Accidente> listarAccidente() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public boolean agregar(Asesoria asesoria) {
		// TODO Auto-generated method stub
		return false;
	}

	@Override
	public List<Asesoria> listarAsesoria() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public boolean agregar(Capacitacion capacitacion) {
		// TODO Auto-generated method stub
		return false;
	}

	@Override
	public List<Capacitacion> listarCapacitacion() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public boolean agregar(Chequeo chequeo) {
		// TODO Auto-generated method stub
		return false;
	}

	@Override
	public List<Chequeo> listarChequeo() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public boolean agregar(Mejora mejora) {
		// TODO Auto-generated method stub
		return false;
	}

	@Override
	public List<Mejora> listarMejoras() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public boolean agregar(Pago pago) {
		// TODO Auto-generated method stub
		return false;
	}

	@Override
	public List<Pago> listarPagos() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public boolean agregar(Visita visita) {
		// TODO Auto-generated method stub
		return false;
	}

	@Override
	public List<Visita> listarVisita() {
		// TODO Auto-generated method stub
		return null;
	}

}
