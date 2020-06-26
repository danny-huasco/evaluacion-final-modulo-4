package awl.modulo4.conexion;

import java.sql.*;

public class ConexionSingleton {

	private static Connection conn = null;
	private String driver;
	private String url;
	private String usuario;
	private String password;
	
	private ConexionSingleton() {
		url = "jdbc:oracle:thin:@clase003.ddns.net:1700:xe";
		driver = "oracle.jdbc.driver.OracleDriver";
		usuario = "UCH";
		password = "1234";
		
		try {
			Class.forName(driver);
			conn = DriverManager.getConnection(url, usuario, password);	
		}
		catch(ClassNotFoundException | SQLException e) {
			e.printStackTrace();
		}
	}
	
	public static Connection getConnection() {
		if (conn == null) {
			new ConexionSingleton();
		}
		return conn;
	}
}
