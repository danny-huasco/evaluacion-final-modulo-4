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

public class CapacitacionDao implements InterfazDao {

	@Override
	public boolean agregar(Capacitacion capacitacion) {
		// TODO Auto-generated method stub
		boolean agregar = false;
		
		Statement stm = null;
		Connection con = null;
		
		String sql = "INSERT INTO Capacitaciones VALUES ('" + capacitacion.getIdcapacitacion() + "','" + capacitacion.getFecha()
		+ "','" + capacitacion.getHora() + "','" + capacitacion.getNumasistentes() + "','"+ capacitacion.getVisitaid() + "')";
		
		try {
			con = ConexionSingleton.getConnection();
			stm = con.createStatement();
			stm.execute(sql);
			agregar = true;
			stm.close();
			//con.close();
		}catch(SQLException e) {
			System.out.println("Error: Clase AsesoriaDao, método agregar");
			e.printStackTrace();
		}
		
		return agregar;
	}

	@Override
	public List<Capacitacion> listarCapacitacion() {
		// TODO Auto-generated method stub
		Connection con = null;
		Statement stm = null;
		ResultSet rs = null;
		
		String sql = "select * from Capacitaciones ORDER BY idcapacitacion";
		
		List<Capacitacion> listaCapacitacion= new ArrayList<Capacitacion>();
		
		try {
			con = ConexionSingleton.getConnection();
			stm = con.createStatement();
			rs = stm.executeQuery(sql);
			while (rs.next()) {
				Capacitacion a = new Capacitacion();
				a.setIdcapacitacion(rs.getInt(1));
				a.setFecha(rs.getString(2));
				a.setHora(rs.getString(3));
				a.setNumasistentes(rs.getInt(4));
				a.setVisitaid(rs.getInt(5));
				listaCapacitacion.add(a);
			}
			stm.close();
			rs.close();
			//con.close();
		} catch(SQLException e) {
			System.out.println("Error: Clase CapacitacionDao, método listar ");
			e.printStackTrace();
		}
		
		return listaCapacitacion;
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
	public boolean agregar(Empleado empleado) {
		// TODO Auto-generated method stub
		return false;
	}

	@Override
	public List<Empleado> listarEmpleado() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public boolean actualizar(Empleado empleado) {
		// TODO Auto-generated method stub
		return false;
	}

	@Override
	public boolean eliminar(Empleado empleado) {
		// TODO Auto-generated method stub
		return false;
	}

	@Override
	public Empleado buscarEmpleado(int empleadoid) {
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

}
