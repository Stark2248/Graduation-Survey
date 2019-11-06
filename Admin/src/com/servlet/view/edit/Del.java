package com.servlet.view.edit;


import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;
import java.sql.*;
@WebServlet("/del")
public class Del extends HttpServlet {
	public void doGet(HttpServletRequest rq,HttpServletResponse rs)throws ServletException, IOException{
		try {
			Class.forName("com.mysql.jdbc.Driver");
			Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/stud_survey","root","");
			Statement stmt=con.createStatement();
			
			String str,str2,str3,str4,str5,str6,str7,s;
			str="DELETE FROM tbl_sur1 WHERE reg="+rq.getParameter("reg")+";";
			str2="DELETE FROM tbl_sur2_curriculum WHERE reg="+rq.getParameter("reg")+";";
			str3="DELETE FROM tbl_sur2_quality_fac WHERE reg="+rq.getParameter("reg")+";";
			str4="DELETE FROM tbl_sur2_quality_ins WHERE reg="+rq.getParameter("reg")+";";
			str5="DELETE FROM tbl_sur2_quality_support WHERE reg="+rq.getParameter("reg")+";";
			str6="DELETE FROM tbl_sur3 WHERE reg="+rq.getParameter("reg")+";";
			str7="DELETE FROM tbl_sur4 WHERE reg="+rq.getParameter("reg")+";";
			s="update tbl_reg set survey=0 where reg="+rq.getParameter("reg")+";";
			
			stmt.executeUpdate(s);
			stmt.executeUpdate(str);
			stmt.executeUpdate(str2);
			stmt.executeUpdate(str3);
			stmt.executeUpdate(str4);
			stmt.executeUpdate(str5);
			stmt.executeUpdate(str6);
			stmt.executeUpdate(str7);
			rs.sendRedirect("ReadStudent?currentPage=1&batch=2019");
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
}