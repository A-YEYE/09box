package kr.or.connect;

import java.sql.Connection;
import java.sql.DriverManager;

import org.junit.Test;

public class MysqlConnectTest {
	private String driverClassName = "com.mysql.cj.jdbc.Driver";
	private static String url = "jdbc:mysql://localhost:3306/connectdb?serverTimezone=Asia/Seoul&useSSL=false";
	private static String username = "connectuser";
	private static String password = "connect123!@#";
	
	@Test
	public void testConnection() throws Exception{

		Class.forName(driverClassName);

		try (Connection con = DriverManager.getConnection(url, username, password))	{

			System.out.println(con);

			

		}catch(Exception e){

			System.err.println(e);
		}
	}
}
