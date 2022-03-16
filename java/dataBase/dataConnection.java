package dataBase;
import java.sql.*;
public class dataConnection{
	public static Connection databaseConnection() {
		try{
			Class.forName("com.mysql.cj.jdbc.Driver");
      		Connection connection=DriverManager.getConnection("jdbc:mysql://localhost:3306/web_app","root","Oviya@1380");
      		return connection;
		}
		catch(Exception e) {
			System.out.println(e);
			return null;
		}
	}
}
