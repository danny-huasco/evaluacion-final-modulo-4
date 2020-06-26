package awl.modulo4.dao;

import java.sql.Connection; 
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import awl.modulo4.conexion.ConexionSingleton;
import awl.modulo4.idao.IPagoDao;
import awl.modulo4.model.Pago;

public class PagoDao implements IPagoDao {

	@Override
	public boolean agregar(Pago pago) {
		// TODO Auto-generated method stub
		boolean agregar = false;
		
		Statement stm = null;
		Connection con = null;
		
		String sql = "INSERT INTO Pagos VALUES (null,'" + pago.getIdpago() + "','" + pago.getMesanio() 
		+ "','" + pago.getMontoregular() + "','" + pago.getMontoadicional() + "','"+ pago.getClienteid() + "')";
		
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
	public List<Pago> listar() {
		// TODO Auto-generated method stub
		Connection con = null;
		Statement stm = null;
		ResultSet rs = null;
		
		String sql = "select * from Pagos ORDER BY ID";
		
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
				p.setMontoadicional(rs.getInt(4));
				p.setClienteid(rs.getInt(5));
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
	public boolean actualizar(Pago pago) {
		// TODO Auto-generated method stub
		Connection con = null;
		Statement stm = null;
		
		boolean actualizar = false;
		
		String sql = "UPDATE Pago SET idpago = '" + pago.getIdpago() + "', mesanio = '" + pago.getMesanio() + "', montoregular = '" + pago.getMontoregular() + "', montoadicional = '" + pago.getMontoadicional() + "', clienteid = '" + pago.getClienteid() + "' WHERE id = '" + pago.getIdpago() + "'";
		
		try {
			con = ConexionSingleton.getConnection();
			stm = con.createStatement();
			stm.execute(sql);
			actualizar = true;
			stm.close();
			//con.close();
		}catch(SQLException e) {
			System.out.println("Error: Clase PagoDao, método actualizar");
			e.printStackTrace();
		}
		
		return actualizar;
	}

	@Override
	public boolean eliminar(Pago pago) {
		// TODO Auto-generated method stub
		Connection con = null;
		Statement stm = null;
		
		boolean eliminar = false;
		
		String sql = "DELETE FROM Pago WHERE id = " + pago.getIdpago();
		
		try {
			con = ConexionSingleton.getConnection();
			stm = con.createStatement();
			stm.execute(sql);
			eliminar = true;
			stm.close();
			//con.close();
		}catch(SQLException e) {
			System.out.println("Error: Clase PagoDao, método eliminar");
			e.printStackTrace();
		}
		
		return eliminar;
	}

	@Override
	public Pago buscar(int idpago) {
		// TODO Auto-generated method stub
		Connection con = null;
		Statement stm = null;
		ResultSet rs = null;
		
		String sql = "select * from Pagos WHERE id = '" + idpago + "'";
		
		Pago pa = new Pago();
		
		try {
			con = ConexionSingleton.getConnection();
			stm = con.createStatement();
			rs = stm.executeQuery(sql);
			while (rs.next()) {
				Pago p = new Pago();
				p.setIdpago(rs.getInt(1));
				p.setMesanio(rs.getString(2));
				p.setMontoregular(rs.getInt(3));
				p.setMontoadicional(rs.getInt(4));
				p.setClienteid(rs.getInt(5));
			}
			stm.close();
			rs.close();
			//con.close();
		} catch(SQLException e) {
			System.out.println("Error: Clase PagoDao, método buscar ");
			e.printStackTrace();
		}
		
		return pa;
	}

}
