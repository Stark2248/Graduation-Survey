package com.servlet.check;
import java.io.*;
import javax.servlet.*;
import javax.servlet.http.*;
import java.sql.*;
import javax.servlet.annotation.WebServlet;
@WebServlet("/dashboard2")
public class dashboard2 extends HttpServlet{

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	
	public void service(HttpServletRequest request,HttpServletResponse response){
		 try{
				Class.forName("com.mysql.jdbc.Driver");
				Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/stud_survey","root","");
				Statement stmt=con.createStatement();
				ResultSet rs=stmt.executeQuery("select count(*) from tbl_sur1 where batch=2018;");
				String str,str1;
				if(rs.next()!=false){
				 str=String.valueOf(rs.getInt(1));
				}else{
					str="0";
				}
				request.setAttribute("given1", str);
				ResultSet rs1=stmt.executeQuery("select count(*) from tbl_reg where batch=2018 and survey=0;");
				if(rs1.next()!=false){
					 str1=String.valueOf(rs1.getInt(1));
					}else{
						str1="0";
					}
				request.setAttribute("nott1", str1);
				request.getRequestDispatcher("dashboard2.jsp").forward(request, response);
			}catch(Exception e){
				System.out.println(e);
			}
	 }
}
