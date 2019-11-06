package com.servlet.view.edit;
import java.io.IOException;
import java.sql.*;
import java.util.Arrays;

import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.ServletException;
import java.util.*;
import javax.servlet.annotation.WebServlet;
@WebServlet("/control")
public class Edit extends HttpServlet {
		public void doGet(HttpServletRequest request,HttpServletResponse response) throws ServletException, IOException{
			try{
				Class.forName("com.mysql.jdbc.Driver");
				Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/stud_survey","root","");
				Statement stmt=con.createStatement();
				String reg=request.getParameter("reg");
				String sql="Select * from tbl_sur1 where reg="+reg+";";
				String sql1="Select * from tbl_sur2_quality_fac where reg="+reg+";";
				String sql2="Select * from tbl_sur2_quality_ins where reg="+reg+";";
				String sql3="Select * from tbl_sur2_quality_support where reg="+reg+";";
				String sql4="Select * from tbl_sur2_curriculum where reg="+reg+";";
				String sql5="Select * from tbl_sur3 where reg="+reg+";";
				String sql6="Select * from tbl_sur4 where reg="+reg+";";
				String dg="",st="";
				String mode=request.getParameter("mode");
				ResultSet rs=stmt.executeQuery(sql);				
				if(rs.next()){
					String nm=rs.getString(2);
					String rg=rs.getString(3);
					dg=rs.getString(4);
					String bt=rs.getString(5);
					String gd=rs.getString(6);
					if(gd.equals("M"))gd="Male";
					else if(gd.equals("F"))gd="Female";
					else gd="Others";
					String cg=rs.getString(7);
					st=rs.getString(8);
					request.setAttribute("name", nm);
					request.setAttribute("reg", rg);
					request.setAttribute("degree", dg);
					request.setAttribute("batch", bt);
					request.setAttribute("gender", gd);
					request.setAttribute("cgpa", cg);
					request.setAttribute("status", st);
					
				}
				ResultSet rs1=stmt.executeQuery(sql1);
				if(rs1.next()){
					String cr=rs1.getString(3);
					String lr=rs1.getString(4);
					String cm=rs1.getString(5);
					String li=rs1.getString(6);
					String ot=rs1.getString(7);
					System.out.println(cr);
					request.setAttribute("clas", cr);
					request.setAttribute("lab", lr);
					request.setAttribute("compute", cm);
					request.setAttribute("library",li );
					request.setAttribute("other", ot);
					
				}
				ResultSet rs2=stmt.executeQuery(sql2);
				if(rs2.next()){
					String mt=rs2.getString(3);
					String py=rs2.getString(4);
					String hm=rs2.getString(5);
					String cec=rs2.getString(6);
					String eci=rs2.getString(7);
					request.setAttribute("math", mt);
					request.setAttribute("physics", py);
					request.setAttribute("humanity", hm);
					request.setAttribute("coreeng",cec );
					request.setAttribute("engcourses", eci);
					
				}
				ResultSet rs3=stmt.executeQuery(sql3);
				if(rs3.next()){
					String ac=rs3.getString(3);
					String as=rs3.getString(4);
					String men=rs3.getString(5);
					String tra=rs3.getString(6);
					String hf=rs3.getString(7);
					String ct=rs3.getString(8);
					String trans=rs3.getString(9);
					String rc=rs3.getString(10);
					String cp=rs3.getString(11);
					request.setAttribute("acacell", ac);
					request.setAttribute("adminstion", as);
					request.setAttribute("mentor", men);
					request.setAttribute("training",tra );
					request.setAttribute("hostel", hf);
					request.setAttribute("canteen",ct );
					request.setAttribute("transport",trans );
					request.setAttribute("recreate",rc );
					request.setAttribute("campus",cp );
					
				}
				ResultSet rs4=stmt.executeQuery(sql4);
				if(rs4.next()){
					String c=rs4.getString(3);
					String a=rs4.getString(4);
					String ad=rs4.getString(5);
					String ade=rs4.getString(6);
					String aec=rs4.getString(7);
					String s=rs4.getString(8);
					request.setAttribute("curry", c);
					request.setAttribute("adeqg", a);
					request.setAttribute("adeqp", ad);
					request.setAttribute("adeqe",ade );
					request.setAttribute("adeqc", aec);
					request.setAttribute("sat", s);
				}
				ResultSet rs5=stmt.executeQuery(sql5);
				if(rs5.next()){
					String q1=rs5.getString(3);
					String q2=rs5.getString(4);
					String q3=rs5.getString(5);
					String q4=rs5.getString(6);
					String q5=rs5.getString(7);
					String q6=rs5.getString(8);
					String q7=rs5.getString(9);
					String q8=rs5.getString(10);
					String q9=rs5.getString(11);
					String q10=rs5.getString(12);
					String q11=rs5.getString(13);
					request.setAttribute("q1", q1);
					request.setAttribute("q2", q2);
					request.setAttribute("q3", q3);
					request.setAttribute("q4",q4 );
					request.setAttribute("q5", q5);
					request.setAttribute("q6", q6);
					request.setAttribute("q7", q7);
					request.setAttribute("q8", q8);
					request.setAttribute("q9",q9 );
					request.setAttribute("q10", q10);
					request.setAttribute("q11", q11);
				}
				ResultSet rs6=stmt.executeQuery(sql6);
				if(rs6.next()){
					String s1=rs6.getString(3);
					String s2=rs6.getString(4);
					String s3=rs6.getString(5);
					String s4=rs6.getString(6);
					request.setAttribute("s1", s1);
					request.setAttribute("s2", s2);
					request.setAttribute("s3", s3);
					request.setAttribute("s4", s4);
				}
				List<String> radio=Arrays.asList("Not Satisfied","Somewhat Satisfied","Satisfied","Very much Satisfied","Extremely Satisfied");
				List<String> gend=Arrays.asList("Male","Female","Others");
				List<String> radio2=Arrays.asList("Strongly Agree","Agree","Neutral","Disagree","Strongly Disagree");
				request.setAttribute("radio", radio);
				request.setAttribute("radio2", radio2);
				request.setAttribute("gend", gend);
				String currentPage=request.getParameter("currentPage");
				request.setAttribute("currentPage", currentPage);
				if(mode.equals("edit"))
				request.getRequestDispatcher("editor.jsp").forward(request, response);
				else
					request.getRequestDispatcher("view.jsp").forward(request, response);
				con.close();
			}catch(SQLException ex){
				System.out.println(ex);
			} catch (ClassNotFoundException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
}
