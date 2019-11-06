package com.servlet.view.web;

import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.servlet.view.bean.*;
import com.servlet.view.service.StudService2;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
@WebServlet("/ReadStudent1")
public class ReadStud2 extends HttpServlet {
	

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request,HttpServletResponse response) throws ServletException, IOException{
		response.setContentType("text/html;charset=UTF-8");
		int currentPage=Integer.parseInt(request.getParameter("currentPage"));
		String batch=request.getParameter("batch");
		int recordsPerPage=10;
		StudService2 studentservice=new StudService2();
		List<Stud> Student=studentservice.findStud(currentPage, recordsPerPage,batch);
		request.setAttribute("student", Student);
		int rows=studentservice.getNumberOfRows(batch);
		int nofpages=rows/recordsPerPage;
		if(nofpages%recordsPerPage>0){
			nofpages++;
		}
		request.setAttribute("noOfpages", nofpages);
		request.setAttribute("currentPage", currentPage);
		request.setAttribute("batch", batch);
		request.getRequestDispatcher("View12.jsp").forward(request, response);
	}
}
