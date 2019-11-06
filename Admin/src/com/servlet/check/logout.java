package com.servlet.check;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


@WebServlet("/logout")
public class logout extends HttpServlet{
	 private static final long serialVersionUID = 1L;

	   protected void doGet(HttpServletRequest request,
	         HttpServletResponse response) throws ServletException, IOException {
	      // TODO Auto-generated method stub
	      response.setContentType("text/html");
	      PrintWriter out = response.getWriter();
	      out.println("<script>alert('thank you for visit!!, logout successfully!!');</script>");
	      HttpSession session = request.getSession(false);
	      // session.setAttribute("user", null);
	      session.removeAttribute("uname");
	      session.getMaxInactiveInterval();
	      try {
			Thread.sleep(500);
		} catch (InterruptedException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	      request.getRequestDispatcher("login.html").forward(request,response);
	      //out.println("<script>alert('thank you for visit!!, logout successfully!!');</script>");
	   }
}
