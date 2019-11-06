package com.servlet.insert;
import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;
import java.sql.*;

import com.servlet.GetCon.*;
@WebServlet("/table")
public class table extends HttpServlet {
	public void doGet(HttpServletRequest rq,HttpServletResponse rs)throws ServletException, IOException{
		try {
			Connection con=Dbconnection.Getconnection();
			Statement stmt=con.createStatement();
			String deg=rq.getParameter("cmb_degree");
			String sat=rq.getParameter("cmb_status");
			if(deg=="Others"){
				deg=rq.getParameter("otherdeg");
			}
			if(sat=="Others"){
				sat=rq.getParameter("otherstat");
			}
			String gen=rq.getParameter("rb_gen");
			System.out.println(gen);
			if(gen.equals("Male")){
				gen="M";
			}else if(gen.equals("Female")){
				gen="F";
			}else{
				gen="O";
			}
			System.out.println(rq.getParameter("txt_reg"));
			String str="INSERT INTO tbl_sur1 (`ID`, `Name`, `Reg`, `Degree`, `Batch`, `Gender`, `CGPA`, `Status`) VALUES (NULL,'"+rq.getParameter("txt_nm")+"', '"+rq.getParameter("txt_reg")+"', '"+deg+"', '"+rq.getParameter("cmb_year")+"', '"+gen+"', '"+rq.getParameter("txt_cgpa")+"', '"+sat+"');";
			String str2="INSERT INTO tbl_sur2_quality_ins (`ID`, `Reg`, `Mathematics`, `Physics`, `Humanity`, `Cec`, `eci`) VALUES (NULL, '"+rq.getParameter("txt_reg")+"', '"+rq.getParameter("rb_mt")+"', '"+rq.getParameter("rb_ps")+"', '"+rq.getParameter("rb_hm")+"', '"+rq.getParameter("rb_cec")+"', '"+rq.getParameter("rb_eco")+"');";
			String str3="INSERT INTO tbl_sur2_quality_fac (`ID`, `Reg`, `Classroom`, `Laboratories`, `Computing`, `Library`, `Other`) VALUES (NULL, '"+rq.getParameter("txt_reg")+"', '"+rq.getParameter("rb_class")+"', '"+rq.getParameter("rb_lab")+"', '"+rq.getParameter("rb_cf")+"', '"+rq.getParameter("rb_lib")+"', '"+rq.getParameter("rb_others")+"');";
			String str4="INSERT INTO `tbl_sur2_quality_support` (`ID`, `Reg`, `AdmissionC`, `Administration`, `Mentoring`, `Training`, `Hostel`, `Canteen`, `Transport`, `Recreation`, `Campus`) VALUES (NULL, '"+rq.getParameter("txt_reg")+"', '"+rq.getParameter("rb_ac")+"', '"+rq.getParameter("rb_admin")+"', '"+rq.getParameter("rb_mentor")+"', '"+rq.getParameter("rb_train")+"', '"+rq.getParameter("rb_hostel")+"', '"+rq.getParameter("rb_canteen")+"', '"+rq.getParameter("rb_trans")+"', '"+rq.getParameter("rb_recreate")+"', '"+rq.getParameter("rb_campuss")+"');";
			String str5="INSERT INTO `tbl_sur2_curriculum` (`ID`, `Reg`, `Cur`, `AdeqG`, `AdeqP`, `AdeqE`, `AdeqC`, `Sat`) VALUES (NULL, '"+rq.getParameter("txt_reg")+"', '"+rq.getParameter("rb_courses")+"', '"+rq.getParameter("rb_adequency")+"', '"+rq.getParameter("rb_madequency")+"', '"+rq.getParameter("rb_eadequency")+"', '"+rq.getParameter("rb_actech")+"' , '"+rq.getParameter("rb_satisfied")+"');";
			String str6="INSERT INTO `tbl_sur3` (`ID`, `Reg`, `Q1`, `Q2`, `Q3`, `Q4`, `Q5`, `Q6`, `Q7`, `Q8`, `Q9`, `Q10`, `Q11`) VALUES (NULL, '"+rq.getParameter("txt_reg")+"', '"+rq.getParameter("rb_feelconfident")+"', '"+rq.getParameter("rb_writtenoral")+"', '"+rq.getParameter("rb_academicprog")+"', '"+rq.getParameter("rb_academicsucceed")+"', '"+rq.getParameter("rb_trainingcomp")+"', '"+rq.getParameter("rb_ethical")+"', '"+rq.getParameter("rb_extracurricular")+"', '"+rq.getParameter("rb_evaluateinf")+"', '"+rq.getParameter("rb_professional")+"', '"+rq.getParameter("rb_satexperience")+"', '"+rq.getParameter("rb_aother")+"');";
			String str7="INSERT INTO `tbl_sur4` (`ID`, `Reg`, `S1`, `S2`, `S3`, `S4`) VALUES (NULL, '"+rq.getParameter("txt_reg")+"', '"+rq.getParameter("txt_becourse")+"', '"+rq.getParameter("txt_beprac")+"', '"+rq.getParameter("txt_advice")+"', '"+rq.getParameter("txt_suggestion")+"');";
			stmt.executeUpdate(str);
			stmt.executeUpdate(str2);
			stmt.executeUpdate(str3);
			stmt.executeUpdate(str4);
			stmt.executeUpdate(str5);
			stmt.executeUpdate(str6);
			stmt.executeUpdate(str7);
			String s="Update tbl_reg set survey=1 where reg="+rq.getParameter("txt_reg")+";";
			stmt.executeUpdate(s);
			rs.sendRedirect("TkSurvey.jsp");
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
}
