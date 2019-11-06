package com.servlet.check;
import javax.servlet.*;
import javax.servlet.http.*;
import java.sql.*;
import javax.servlet.annotation.WebServlet;
@WebServlet("/dashboard")
public class dashboard extends HttpServlet{
 /**
	 * 
	 */
	private static final long serialVersionUID = 1L;

public void service(HttpServletRequest request,HttpServletResponse response){
	 try{
			Class.forName("com.mysql.jdbc.Driver");
			Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/stud_survey","root","");
			Statement stmt=con.createStatement();
			String batch=request.getParameter("batch");
			if(batch.equals(null))
				batch="2019";
			ResultSet rs=stmt.executeQuery("select count(*) from tbl_sur1 where batch="+batch+";");
			String str,str1;
			if(rs.next()!=false){
			 str=String.valueOf(rs.getInt(1));
			}else{
				str="0";
			}
			request.setAttribute("given", str);
			ResultSet rs1=stmt.executeQuery("select count(*) from tbl_reg where batch="+batch+" and survey=0;");
			if(rs1.next()!=false){
				 str1=String.valueOf(rs1.getInt(1));
				}else{
					str1="0";
				}
			request.setAttribute("nott", str1);
			if(batch.equals("2019"))
			request.getRequestDispatcher("dashboard.jsp").forward(request, response);
			if(batch.equals("2018"))
				request.getRequestDispatcher("dashboard2.jsp").forward(request, response);
			if(batch.equals("2017"))
				request.getRequestDispatcher("dashboard3.jsp").forward(request, response);
		}catch(Exception e){
			System.out.println(e);
		}
 }
}
