package dao;

import java.sql.*;

public class DBManager {
	public static Connection getConnection(){
		Connection con = null;
		try{
			Class.forName("com.mysql.jdbc.Driver").newInstance();
			//MySQLÇ…ê⁄ë±
			con = DriverManager.getConnection("jdbc:mysql://localhost:3306/user", "root", "11233112");
			return con;
		}catch(Exception e){
			throw new IllegalStateException(e);
		}

	}

}
