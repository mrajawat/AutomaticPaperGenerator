package com.mypackage;

import java.io.IOException;
import java.io.PrintWriter;
import java.net.URLEncoder;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class UserLoginServlet
 */
@WebServlet("/loginservlet")
public class UserLoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
 
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	
		
		response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();
        
        String email = request.getParameter("email");
        String pass = request.getParameter("password");
        
        if(Validate.checkUser(email, pass))
        {
        	 out.println("Welcome Admin");
        	 HttpSession session=request.getSession();  
             session.setAttribute("email",email);  
            RequestDispatcher rs = request.getRequestDispatcher("dashboard.jsp");
            rs.forward(request, response);
        }
        else
        {
           out.println("<h3>Username or Password incorrect</h3>");
           RequestDispatcher rs = request.getRequestDispatcher("home.jsp");
           rs.include(request, response);
        }
        
	}

}
