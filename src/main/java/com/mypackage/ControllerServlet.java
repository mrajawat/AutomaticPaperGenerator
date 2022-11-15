package com.mypackage;


import java.io.IOException;
import java.io.PrintWriter;
import java.net.URLEncoder;
import java.sql.SQLException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;

import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class ControllerServlet
 */

public class ControllerServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	 private PaperDAO paperdao;
    /**
     * @see HttpServlet#HttpServlet()
     */
	 public void init() {
	        String jdbcURL = getServletContext().getInitParameter("jdbcURL");
	        String jdbcUsername = getServletContext().getInitParameter("jdbcUsername");
	        String jdbcPassword = getServletContext().getInitParameter("jdbcPassword");
	 
	        paperdao = new PaperDAO(jdbcURL, jdbcUsername, jdbcPassword);
	 
	    }
	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String action = request.getServletPath();
		 
        try {
            switch (action) {
            case "/add":
                addQuestion(request, response);
                break;
            case "/create":
                createPaper(request, response);
                break;
            case "/delete":
                deletequestion(request, response);
                break;
            case "/update":
                edit(request, response);
                break;
            case "/signup":
                addadmin(request, response);
                break;
                
			/*
			 * case "/showquestion": Showquestion(request, response); break;
			 */
            }
        } catch (SQLException ex) {
            throw new ServletException(ex);
        }
	}

	
	private void addadmin(HttpServletRequest request, HttpServletResponse response)throws SQLException, IOException, ServletException  {
		response.setContentType("text/html"); 
		PrintWriter out=response.getWriter();
		String name = request.getParameter("name");
		String email = request.getParameter("email");
		String password = request.getParameter("password");
		
		AdminBean newadmin = new AdminBean(name,email,password);
		paperdao.addadmin(newadmin);
		request.getRequestDispatcher("home.jsp").include(request, response);
		
	}

	/*
	 * private void Showquestion(HttpServletRequest request, HttpServletResponse
	 * response)throws SQLException, IOException, ServletException {
	 * response.setContentType("text/html"); PrintWriter out = response.getWriter();
	 * List<questions> list = PaperDAO.questions(); request.setAttribute("list",
	 * list); RequestDispatcher dispatcher =
	 * request.getRequestDispatcher("show.jsp"); dispatcher.forward(request,
	 * response);
	 * 
	 * }
	 */
	private void edit(HttpServletRequest request, HttpServletResponse response)throws SQLException, IOException, ServletException {
		
		int questionid = Integer.parseInt(request.getParameter("questionid"));
		request.getRequestDispatcher("editquestion").include(request, response);
		
	}
	private void deletequestion(HttpServletRequest request, HttpServletResponse response)throws SQLException, IOException, ServletException  {
		int questionid = Integer.parseInt(request.getParameter("questionid"));
		 
        questions que = new questions(questionid);
        paperdao.deleteQuestion(que);
        response.sendRedirect("show.jsp");
		
	}
	private void createPaper(HttpServletRequest request, HttpServletResponse response)throws SQLException, IOException, ServletException {
		
			
	}
	private void addQuestion(HttpServletRequest request, HttpServletResponse response)throws SQLException, IOException, ServletException {
		response.setContentType("text/html"); 
		PrintWriter out=response.getWriter();
		String question = request.getParameter("question");
		String difficulty = request.getParameter("difficulty");
		String module = request.getParameter("module");
		int semester = Integer.parseInt(request.getParameter("semester"));
		String subject = request.getParameter("subject");
		String branch = request.getParameter("branch");
		
		questions newquestion = new questions(question,difficulty,module,semester,subject,branch);
		paperdao.insertQuestion(newquestion);
	
		out.print("<h3> Question Inserted Successfully </h3>");
		request.getRequestDispatcher("dashboard.jsp").include(request, response);
		
		
	}
	
	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
