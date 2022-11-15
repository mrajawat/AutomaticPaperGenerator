package com.mypackage;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.darwinsys.spdf.*;

/**
 * Servlet implementation class createpap
 */
@WebServlet("/createpap")
public class createpap extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public createpap() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		  try {
			  response.setContentType("application/pdf");
			  PrintWriter out = response.getWriter();
			  String branch = request.getParameter("branch");
			  String semester = request.getParameter("semester");
			  String subject = request.getParameter("subject");
			  String difficulty = request.getParameter("difficulty");
			  String modules = request.getParameter("modules");
			  String qpm = request.getParameter("qpm");
			  String qpname = request.getParameter("qpname");
			  String code = request.getParameter("code");
			  String marks = request.getParameter("marks");
			  String mmarks = request.getParameter("mmarks");
			  String choice = request.getParameter("choice");
			  String time = request.getParameter("time");
			  
		
			 	
						
						
					
			  response.setHeader("Content-disposition", "inline; filename='Downloaded.pdf'");
			  PDF pdf = new PDF(out);
			  Page pag = new Page(pdf);
			  pag.add(new MoveTo(pdf, 60, 730));
			  pag.add(new Text(pdf, "ChitkaraUniversity"));
			  pag.add(new Text(pdf, ""));
			  pag.add(new Text(pdf, ""));
			  pag.add(new Text(pdf, "Subject:"+qpname+"       "+"CourseCode:"+code ));
			  pag.add(new Text(pdf, "Time:"+time+"              "+"MaximumMarks:"+mmarks));
			  pag.add(new Text(pdf, "Branch:"+branch));
			  pag.add(new Text(pdf, ""));
			 
			  
			  pdf.add(pag);
	
			  pdf.writePDF();
			  out.close();
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
