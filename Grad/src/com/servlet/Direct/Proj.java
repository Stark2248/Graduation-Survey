package com.servlet.Direct;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;
@WebServlet("/Proj")
public class Proj extends HttpServlet {
	

	public void doPost(HttpServletRequest rq,HttpServletResponse rs) throws ServletException, IOException{
		String str=rq.getParameter("Sic");
		rq.setAttribute("Sic", str);
		rq.getRequestDispatcher("proj.jsp").forward(rq, rs);
	}
}
