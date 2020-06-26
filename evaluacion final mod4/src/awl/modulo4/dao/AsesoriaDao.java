package awl.modulo4.dao;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import awl.modulo4.conexion.ConexionSingleton;
import awl.modulo4.idao.IAsesoriaDao;
import awl.modulo4.model.Asesoria;

public class AsesoriaDao implements IAsesoriaDao {

	@Override
	public boolean agregar(Asesoria asesoria) {
		// TODO Auto-generated method stub
		boolean agregar = false;
		
		Statement stm = null;
		Connection con = null;
		
		String sql = "INSERT INTO Asesorias VALUES (null,'" + asesoria.getIdasesoria() + "','" + asesoria.getDetalle() 
		+ "','" + asesoria.getGestion() + "','" + asesoria.getPropuestas() + "','"+ asesoria.getFecha() + "','"+ asesoria.getEspecial() + "','"+ asesoria.getVisitaid() + "')";
		
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
	public List<Asesoria> listar() {
		// TODO Auto-generated method stub
		Connection con = null;
		Statement stm = null;
		ResultSet rs = null;
		
		String sql = "select * from Asesorias ORDER BY ID";
		
		List<Asesoria> listaAsesoria= new ArrayList<Asesoria>();
		
		try {
			con = ConexionSingleton.getConnection();
			stm = con.createStatement();
			rs = stm.executeQuery(sql);
			while (rs.next()) {
				Asesoria a = new Asesoria();
				a.setIdasesoria(rs.getInt(1));
				a.setDetalle(rs.getString(2));
				a.setGestion(rs.getString(3));
				a.setPropuestas(rs.getString(4));
				a.setFecha(rs.getString(5));
				a.setEspecial(rs.getString(6));
				a.setVisitaid(rs.getInt(7));
				listaAsesoria.add(a);
			}
			stm.close();
			rs.close();
			//con.close();
		} catch(SQLException e) {
			System.out.println("Error: Clase AsesoriaDao, método listar ");
			e.printStackTrace();
		}
		
		return listaAsesoria;
	}

	@Override
	public boolean actualizar(Asesoria asesoria) {
		// TODO Auto-generated method stub
		Connection con = null;
		Statement stm = null;
		
		boolean actualizar = false;
		
		String sql = "UPDATE Asesorias SET idasesoria = '" + asesoria.getIdasesoria() + "', detalle = '" + asesoria.getDetalle() + "', gestion = '" + asesoria.getGestion() + "', propuestas = '" + asesoria.getPropuestas() + "', fecha = '" + asesoria.getFecha() + "', especial = '" + asesoria.getEspecial() + "', visitaid = '" + asesoria.getVisitaid() + "' WHERE id = '" + asesoria.getIdasesoria() + "'";
		
		try {
			con = ConexionSingleton.getConnection();
			stm = con.createStatement();
			stm.execute(sql);
			actualizar = true;
			stm.close();
			//con.close();
		}catch(SQLException e) {
			System.out.println("Error: Clase AsesoriaDao, método actualizar");
			e.printStackTrace();
		}
		
		return actualizar;
	}

	@Override
	public Asesoria buscar(int idasesoria) {
		// TODO Auto-generated method stub
		Connection con = null;
		Statement stm = null;
		ResultSet rs = null;
		
		String sql = "select * from Asesorias WHERE id = '" + idasesoria + "'";
		
		Asesoria ase = new Asesoria();
		
		try {
			con = ConexionSingleton.getConnection();
			stm = con.createStatement();
			rs = stm.executeQuery(sql);
			while (rs.next()) {
				ase.setIdasesoria(rs.getInt(1));
				ase.setDetalle(rs.getString(2));
				ase.setGestion(rs.getString(3));
				ase.setPropuestas(rs.getString(4));
				ase.setFecha(rs.getString(5));
				ase.setEspecial(rs.getString(6));
				ase.setVisitaid(rs.getInt(7));
			}
			stm.close();
			rs.close();
			//con.close();
		} catch(SQLException e) {
			System.out.println("Error: Clase AsesoriaDao, método buscar ");
			e.printStackTrace();
		}
		
		return ase;
	}

}
