package com.servlet.GetCon;
import java.sql.*;
public class Dbconnection {
	public static Connection Getconnection() throws SQLException{
		Connection con=null;
		try{
			 Class.forName("com.mysql.jdbc.Driver");
			 con=DriverManager.getConnection("jdbc:mysql://localhost:3306/stud_survey","root","");
		}catch(Exception e){System.out.println(e);}
		return con;
		
	}
}
