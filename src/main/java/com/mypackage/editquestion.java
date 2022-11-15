package com.mypackage;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/editquestion")
public class editquestion extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html");
		PrintWriter out=response.getWriter();
		
		out.print("<!DOCTYPE html>");
		out.print("<html>");
		out.println("<head>");
		out.println("<title>Edit Question here</title>");
		out.println("<link rel='stylesheet' href='bootstrap.min.css'/>");
		out.println("</head>");
		out.println("<body>");
		
		request.getRequestDispatcher("navadmin.html").include(request, response);
		out.println("<div class='container'>");
		String sid=request.getParameter("questionid");
		int questionid=Integer.parseInt(sid);
		
		questions bean=PaperDAO.viewById(questionid);
		
		out.print("<form action='update' method='post' style='width:300px'>");
		out.print("<div class='form-group'>");
		out.print("<input type='hidden' name='questionid' value='"+bean.getQuestionid()+"'/>");
		out.print("<label for='name1'>questionid</label>");
		out.print("<input type='text' class='form-control' value='"+bean.getQuestion()+"' name='question' id='name1' placeholder='question'/>");
		out.print("</div>");
		out.print("<div class='form-group'>");
		out.print("<label for='difficulty'>Difficulty</label>");
		out.print("<input type='text' class='form-control' value='"+bean.getDifficulty()+"'  name='difficulty' id='difficulty' placeholder='Email'/>");
		out.print("</div>");
		out.print("<div class='form-group'>");
		out.print("<label for='module'>Module</label>");
		out.print("<input type='text' class='form-control' value='"+bean.getModule()+"'  name='module' id='module' placeholder='Password'/>");
		out.print("</div>  ");
		out.print("<div class='form-group'>");
		out.print("<label for='semester'>Semester</label>");
		out.print("<input type='number' class='form-control' value='"+bean.getSemester()+"'  name='semester' id='semester' placeholder='Mobile'/>");
		out.print("</div>");
		out.print("<div class='form-group'>");
		out.print("<label for='subject'>Subject</label>");
		out.print("<input type='text' class='form-control' value='"+bean.getSubject()+"'  name='subject' id='subject' placeholder='Mobile'/>");
		out.print("</div>");
		out.print("<div class='form-group'>");
		out.print("<label for='branch'>Branch</label>");
		out.print("<input type='text' class='form-control' value='"+bean.getBranch()+"'  name='branch' id='branch' placeholder='Mobile'/>");
		out.print("</div>");
		out.print("<button type='submit' class='btn btn-primary'>Update</button>");
		out.print("</form>");
		
		out.println("</div>");
		
		out.close();
	}


}
