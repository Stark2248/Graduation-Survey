package com.servlet.check;
import java.io.*;
import javax.servlet.*;
import javax.servlet.http.*;
import java.sql.*;
import javax.servlet.annotation.WebServlet;
@WebServlet("/login")
public class Login extends HttpServlet {
 
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();
        
        String username = request.getParameter("uname");
        String password = request.getParameter("upass");
        
        if(Validate.checkUser(username, password))
        {
        	HttpSession ses=request.getSession();
        	ses.setAttribute("uname", username);
            request.getRequestDispatcher("dashboard?batch=2019").forward(request, response);
        }
        else
        {
           out.println("<script>alert('Username or Password incorrect');</script>");
           RequestDispatcher rs = request.getRequestDispatcher("login.html");
           rs.include(request, response);
        }
    }  
}