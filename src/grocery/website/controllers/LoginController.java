package grocery.website.controllers;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import grocery.website.model.Authenticator;
import grocery.website.model.User;


public class LoginController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public LoginController() {
		super();
	}

	protected void doPost(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {

		String username = request.getParameter("userName");
		String password = request.getParameter("password");
		RequestDispatcher rd = null;

		Authenticator authenticator = new Authenticator();
		String result;
		try {
			result = authenticator.authenticate(username, password);
			if (result.equals("success")) {
				rd = request.getRequestDispatcher("/index.jsp");

				User user = new User(username, password);
				request.setAttribute("user", user);
				
				HttpSession session = request.getSession();
				session.setAttribute("username", username);
				session.setAttribute("userid", username);
				
			} else {
				if (result.equalsIgnoreCase("userNameCannotBeBlank")) {
					request.setAttribute("errorMessage", "Username cannot be blank!");
				} else {
					request.setAttribute("errorMessage", "Invalid login!");
				}
				rd = request.getRequestDispatcher("/error.jsp");
			}
			rd.forward(request, response);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

}
