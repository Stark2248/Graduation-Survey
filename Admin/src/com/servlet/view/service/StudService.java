package com.servlet.view.service;

import java.util.ArrayList;
import java.util.List;
import java.sql.*;

import com.servlet.view.bean.Stud;
import java.util.logging.*;
import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.datasource.SimpleDriverDataSource;
public class StudService implements IStud {

	@Override
	public List<Stud> findStud(int currentpage, int recordsperpage,String batch) {
		// TODO Auto-generated method stub
		List<Stud> student=new ArrayList<>();
		int start=currentpage*recordsperpage - recordsperpage;
		String strt,rec;
		strt=String.valueOf(start);
		rec=String.valueOf(recordsperpage);
		try{
			String sql="Select Reg,name,branch from tbl_reg where batch="+batch+" and survey=1 LIMIT "+strt+", "+rec+";";
			 Class.forName("com.mysql.jdbc.Driver");
			Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/stud_survey","root","");
			Statement stmt=con.createStatement();
			ResultSet rs=stmt.executeQuery(sql);
			while(rs.next()){
				Stud s=new Stud();
				s.setReg(rs.getString(1));
				s.setName(rs.getString(2));
				s.setBranch(rs.getString(3));
				student.add(s);
			}
			}catch(SQLException ex){
			Logger.getLogger(StudService.class.getName()).log(Level.SEVERE,null,ex);
		} catch (ClassNotFoundException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		return student;
	}

	@Override
	public int getNumberOfRows(String batch) {
		// TODO Auto-generated method stub
		int  numOfRows=0;
		try{
			Class.forName("com.mysql.jdbc.Driver");
			String sql="Select count(Id) from tbl_reg where batch="+batch+" and survey=1;";
			Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/stud_survey","root","");
			Statement stmt=con.createStatement();
			ResultSet rs=stmt.executeQuery(sql);
			while(rs.next()){
				numOfRows=rs.getInt(1);
			}
		}catch(SQLException ex){
			Logger.getLogger(StudService.class.getName()).log(Level.SEVERE,null,ex);
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return numOfRows;
	}

}
