package grocery.website.controllers;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import grocery.website.model.AddRecipe;

public class AddRecipeController extends HttpServlet {
	private static final long serialVersionUID = 1L;
	HttpSession session;
	public AddRecipeController() {
		super();
	} 

	protected void doPost(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {

		
		RequestDispatcher rd = null;
		AddRecipe addRecipe = new grocery.website.model.AddRecipe();
		boolean success;
		HttpSession httpSession = request.getSession();
		try {
			success = addRecipe.add(request,httpSession);
			if(success) {
				rd = request.getRequestDispatcher("/addedRecipe.jsp");
				
			} else {
				rd = request.getRequestDispatcher("/error.jsp");
				request.setAttribute("message", "Couldn't add recipe. Please try again later.");
				
			}
			
			rd.forward(request, response);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
	
	}

}
