package com.servlet.valid;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.*;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

//import com.servlet.GetCon.Dbconnection;
@WebServlet("/CheckSic")
public class CheckSic extends HttpServlet {
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException{
		try{
		String sic=request.getParameter("Sic");
		 Class.forName("com.mysql.jdbc.Driver");
		Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/stud_survey","root","");
		if(con!=null){
			Statement stmt=con.createStatement();
			String str="Select Reg,survey from tbl_reg where Reg="+sic+";";
			ResultSet rs=stmt.executeQuery(str);
			String error;
			if(rs.next()==false){
				error="Please enter a valid sic number";
				request.setAttribute("error", error);
				request.getRequestDispatcher("TkSurvey.jsp").forward(request, response);
			}else{
				if(rs.getInt(2)==1){
					error="This Sic is already given";
					request.setAttribute("error", error);
					request.getRequestDispatcher("TkSurvey.jsp").forward(request, response);
					
				}else{
					request.setAttribute("Sic", sic);
					request.getRequestDispatcher("proj.jsp").forward(request,response);
					
					
				}
			}
		}
		}catch(Exception e){System.out.println(e);}
	}
}

