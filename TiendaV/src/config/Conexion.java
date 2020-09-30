package config;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLDataException;
import java.sql.SQLException;

import com.mysql.jdbc.PreparedStatement;

public class Conexion {
	Connection con;
	String url = "jdbc:mysql://localhost:3306/t-virtual";
	String Driver = "com.mysql.jdbc.Driver";
	String user = "root";
	String clave = "";

	public Connection conectarBD() {
		try {
			Class.forName(Driver);
			con = DriverManager.getConnection(url, user, clave);

		} catch (Exception e) {
		}
		return con;
	}

	// probar conexion
	public boolean conected(Connection con) {
		if (con != null) {
			return true;
		} else {
			return false;
		}
	}

	public static void main(String[] args) {
		Conexion c = new Conexion();
		System.out.println("Conected : "+c.conected(c.conectarBD()));
	}
}
