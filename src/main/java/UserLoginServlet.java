

import java.io.IOException;

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
@WebServlet("/login")
public class UserLoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
 
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String email = request.getParameter("email");
		String password = request.getParameter("password");
		
		UserDao userdao = new UserDao();
		try {
			User user = userdao.checkLogin(email, password);
			String destPage = "home.jsp";
			if(user!=null) {
				HttpSession session = request.getSession();
				session.setAttribute("user", user);
				destPage = "dashboard.jsp";
			}
			else {
                String message = "Invalid email/password";
                request.setAttribute("message", message);

			}
			RequestDispatcher dispatcher = request.getRequestDispatcher(destPage);
            dispatcher.forward(request, response);
		} catch (Exception e) {
			// TODO: handle exception
			
		}
	}

}
