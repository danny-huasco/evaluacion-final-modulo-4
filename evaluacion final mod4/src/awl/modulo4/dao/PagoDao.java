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

public class PagoDao implements InterfazDao {

	@Override
	public boolean agregar(Pago pago) {
		// TODO Auto-generated method stub
		boolean agregar = false;
		
		Statement stm = null;
		Connection con = null;
		
		String sql = "INSERT INTO Pagos VALUES ('" + pago.getIdpago() + "','" + pago.getMesanio() 
		+ "','" + pago.getMontoregular() + "','" + pago.getMontoadicionales() + "','"+ pago.getIdCliente() + "')";
		
		try {
			con = ConexionSingleton.getConnection();
			stm = con.createStatement();
			stm.execute(sql);
			agregar = true;
			stm.close();
			//con.close();
		}catch(SQLException e) {
			System.out.println("Error: Clase PagoDao, método agregar");
			e.printStackTrace();
		}
		
		return agregar;
	}
	
	@Override
	public List<Pago> listarPagos() {
		// TODO Auto-generated method stub
		Connection con = null;
		Statement stm = null;
		ResultSet rs = null;
		
		String sql = "select * from Pagos ORDER BY idpago";
		
		List<Pago> listaPago = new ArrayList<Pago>();
		
		try {
			con = ConexionSingleton.getConnection();
			stm = con.createStatement();
			rs = stm.executeQuery(sql);
			while (rs.next()) {
				Pago p = new Pago();
				p.setIdpago(rs.getInt(1));
				p.setMesanio(rs.getString(2));
				p.setMontoregular(rs.getInt(3));
				p.setMontoadicionales(rs.getInt(4));
				p.setIdCliente(rs.getInt(5));
				listaPago.add(p);
			}
			stm.close();
			rs.close();
			//con.close();
		} catch(SQLException e) {
			System.out.println("Error: Clase PagoDao, método listar ");
			e.printStackTrace();
		}
		
		return listaPago;
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
	public Empleado buscarEmpleado(int idempleado) {
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
