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


public class UserRegistrationController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public UserRegistrationController() {
		super();
	}

	protected void doPost(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {

		Authenticator authenticator = new Authenticator();
		RequestDispatcher rd = null;
		try {
			String result = authenticator.createNewUser(request);
			if (result.equals("success")) {
		
				rd = request.getRequestDispatcher("/userRegistrationSuccess.jsp");
				
				HttpSession session = request.getSession();
				String userName = request.getParameter("userName");
				session.setAttribute("username", userName);				
			} else {
				rd = request.getRequestDispatcher("/error.jsp");
			}
			rd.forward(request, response);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
}
