package com.servlet.view.edit;
import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;
import java.sql.*;
@WebServlet("/Update")
public class Update extends HttpServlet {
	public void doGet(HttpServletRequest rq,HttpServletResponse rs)throws ServletException, IOException{
		try {
			Class.forName("com.mysql.jdbc.Driver");
			Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/stud_survey","root","");
			Statement stmt=con.createStatement();
			String deg=rq.getParameter("txt_degree");
			String sat=rq.getParameter("txt_status");
			String gen=rq.getParameter("rb_gen");
			System.out.println(gen);
			if(gen.equals("Male")){
				gen="M";
			}else if(gen.equals("Female")){
				gen="F";
			}else{
				gen="O";
			}
			System.out.println(gen);
			String str,str2,str3,str4,str5,str6,str7;
			str="UPDATE tbl_sur1 SET Name='"+rq.getParameter("txt_nm")+"',Degree='"+deg+"',Batch='"+rq.getParameter("txt_batch")+"',Gender='"+gen+"',CGPA='"+rq.getParameter("txt_cgpa")+"',Status='"+sat+"' WHERE reg='"+rq.getParameter("txt_rg")+"';";
			str2="UPDATE tbl_sur2_quality_ins SET Mathematics='"+rq.getParameter("rb_math")+"',Physics='"+rq.getParameter("rb_physics")+"',Humanity='"+rq.getParameter("rb_hm")+"',Cec='"+rq.getParameter("rb_cec")+"',eci='"+rq.getParameter("rb_eco")+"' WHERE reg='"+rq.getParameter("txt_rg")+"';";
			str3="UPDATE tbl_sur2_quality_fac SET Classroom='"+rq.getParameter("rb_class")+"',Laboratories='"+rq.getParameter("rb_lab")+"',Computing='"+rq.getParameter("rb_comp")+"',Library='"+rq.getParameter("rb_lib")+"',Other='"+rq.getParameter("rb_osl")+"' WHERE reg='"+rq.getParameter("txt_rg")+"';";
			str4="UPDATE tbl_sur2_quality_support SET AdmissionC='"+rq.getParameter("rb_cell")+"',Administration='"+rq.getParameter("rb_admin")+"',Mentoring='"+rq.getParameter("rb_ment")+"',Training='"+rq.getParameter("rb_train")+"',Hostel='"+rq.getParameter("rb_hostel")+"',Canteen='"+rq.getParameter("rb_can")+"',Transport='"+rq.getParameter("rb_transport")+"',Recreation='"+rq.getParameter("rb_sprt")+"',Campus='"+rq.getParameter("rb_camp")+"' WHERE reg='"+rq.getParameter("txt_rg")+"';";
			str5="UPDATE tbl_sur2_curriculum SET Cur='"+rq.getParameter("rb_curri")+"',AdeqG='"+rq.getParameter("rb_adeqg")+"',AdeqP='"+rq.getParameter("rb_adeqp")+"',AdeqE='"+rq.getParameter("rb_adeqe")+"',AdeqC='"+rq.getParameter("rb_adeqc")+"',Sat='"+rq.getParameter("rb_sat")+"' WHERE reg='"+rq.getParameter("txt_rg")+"';";
			str6="UPDATE tbl_sur3 SET Q1='"+rq.getParameter("rb_q1")+"',Q2='"+rq.getParameter("rb_q2")+"',Q3='"+rq.getParameter("rb_q3")+"',Q4='"+rq.getParameter("rb_q4")+"',Q5='"+rq.getParameter("rb_q5")+"',Q6='"+rq.getParameter("rb_q6")+"',Q7='"+rq.getParameter("rb_q7")+"',Q8='"+rq.getParameter("rb_q8")+"',Q9='"+rq.getParameter("rb_q9")+"',Q10='"+rq.getParameter("rb_q10")+"',Q11='"+rq.getParameter("rb_q11")+"' WHERE reg='"+rq.getParameter("txt_rg")+"';";
			str7="UPDATE tbl_sur4 SET S1='"+rq.getParameter("txt_sug1")+"',S2='"+rq.getParameter("txt_sug2")+"',S3='"+rq.getParameter("txt_sug3")+"',S4='"+rq.getParameter("txt_sug4")+"' WHERE  reg='"+rq.getParameter("txt_rg")+"';";
			
			stmt.executeUpdate(str);
			stmt.executeUpdate(str2);
			stmt.executeUpdate(str3);
			stmt.executeUpdate(str4);
			stmt.executeUpdate(str5);
			stmt.executeUpdate(str6);
			stmt.executeUpdate(str7);
			String currentpage=rq.getParameter("currentPage");
			rs.sendRedirect("ReadStudent?currentPage="+currentpage+"&batch="+rq.getParameter("txt_batch"));
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
}