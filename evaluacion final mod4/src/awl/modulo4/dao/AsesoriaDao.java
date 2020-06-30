package awl.modulo4.dao;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import awl.modulo4.conexion.ConexionSingleton;
import awl.modulo4.idao.InterfazDao;
<<<<<<< HEAD
import awl.modulo4.model.*;
=======
import awl.modulo4.model.Accidente;
import awl.modulo4.model.Asesoria;
import awl.modulo4.model.Capacitacion;
import awl.modulo4.model.Chequeo;
import awl.modulo4.model.Cliente;
import awl.modulo4.model.Empleado;
import awl.modulo4.model.Mejora;
import awl.modulo4.model.Pago;
import awl.modulo4.model.Visita;
>>>>>>> 15e1807ae10ab46b69bbdbb1f92180eaf265b8b7

public class AsesoriaDao implements InterfazDao {

	@Override
	public boolean agregar(Asesoria asesoria) {
		// TODO Auto-generated method stub
		boolean agregar = false;
		
		Statement stm = null;
		Connection con = null;
		
<<<<<<< HEAD
		String sql = "INSERT INTO Asesorias VALUES ('" + asesoria.getIdasesoria() + "','" + asesoria.getDetalle() 
		+ "','" + asesoria.getGestion() + "','" + asesoria.getPropuestas() + "','"+ asesoria.getFecha() + "','"+ asesoria.getEspecial() + "','"+ asesoria.getVisitaid() + "')";
=======
		String sql = "INSERT INTO Asesorias VALUES ('" + asesoria.getIdasesoria() + "','" + asesoria.getDetalle() + "','" + asesoria.getGestion() 
		+ "','" + asesoria.getPropuestas() + "','"+ asesoria.getFecha() + "','" + asesoria.getEspecial() 
		+ "','" + asesoria.getVisitaid() +"')";
>>>>>>> 15e1807ae10ab46b69bbdbb1f92180eaf265b8b7
		
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

<<<<<<< HEAD
	@Override
	public List<Asesoria> listarAsesoria() {
=======
	public List<Asesoria> listar() {
>>>>>>> 15e1807ae10ab46b69bbdbb1f92180eaf265b8b7
		// TODO Auto-generated method stub
		Connection con = null;
		Statement stm = null;
		ResultSet rs = null;
		
		String sql = "select * from Asesorias ORDER BY idasesoria";
		
<<<<<<< HEAD
		List<Asesoria> listaAsesoria= new ArrayList<Asesoria>();
=======
		List<Asesoria> listaAsesoria = new ArrayList<Asesoria>();
>>>>>>> 15e1807ae10ab46b69bbdbb1f92180eaf265b8b7
		
		try {
			con = ConexionSingleton.getConnection();
			stm = con.createStatement();
			rs = stm.executeQuery(sql);
			while (rs.next()) {
<<<<<<< HEAD
				Asesoria a = new Asesoria();
				a.setIdasesoria(rs.getInt(1));
				a.setDetalle(rs.getString(2));
				a.setGestion(rs.getString(3));
				a.setPropuestas(rs.getString(4));
				a.setFecha(rs.getString(5));
				a.setEspecial(rs.getString(6));
				a.setVisitaid(rs.getInt(7));
				listaAsesoria.add(a);
=======
				Asesoria ase = new Asesoria();
				ase.setIdasesoria(rs.getInt(1));
				ase.setDetalle(rs.getString(2));
				ase.setGestion(rs.getString(3));
				ase.setPropuestas(rs.getString(4));
				ase.setFecha(rs.getString(5));
				ase.setVisitaid(rs.getInt(6));
				listaAsesoria.add(ase);
>>>>>>> 15e1807ae10ab46b69bbdbb1f92180eaf265b8b7
			}
			stm.close();
			rs.close();
			//con.close();
		} catch(SQLException e) {
			System.out.println("Error: Clase AsesoriaDao, método listar ");
			e.printStackTrace();
		}
		
		return listaAsesoria;
<<<<<<< HEAD
	}
=======
}
>>>>>>> 15e1807ae10ab46b69bbdbb1f92180eaf265b8b7

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
<<<<<<< HEAD
=======
	public List<Asesoria> listarAsesoria() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
>>>>>>> 15e1807ae10ab46b69bbdbb1f92180eaf265b8b7
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
<<<<<<< HEAD
	public Empleado buscarEmpleado(int empleadoid) {
=======
	public Empleado buscarEmpleado(int idempleado) {
>>>>>>> 15e1807ae10ab46b69bbdbb1f92180eaf265b8b7
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

<<<<<<< HEAD
}
=======
}
>>>>>>> 15e1807ae10ab46b69bbdbb1f92180eaf265b8b7
