package grocery.website.controllers;

import grocery.website.model.AddRecipe;
import grocery.website.model.Recipe;
import grocery.website.model.SearchRecipe;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;



public class SearchRecipeController extends HttpServlet {
	private static final long serialVersionUID = 1L;
     
    public SearchRecipeController() {
        super();
    }

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		RequestDispatcher rd = null;
		SearchRecipe searchRecipe = new SearchRecipe();
		HttpSession session = request.getSession();
		String title = (String) request.getParameter("title");
		String username = (String) session.getAttribute("username");
		
		try {
			Recipe recipe = searchRecipe.search(title,username);
			if(recipe != null) {
				rd = request.getRequestDispatcher("/searchResult.jsp");
				request.getSession().setAttribute("recipe", recipe);
				request.setAttribute("recipe", recipe);
				
			} else {
				rd = request.getRequestDispatcher("/searchResult.jsp");
				request.getSession().setAttribute("recipe", null);
				request.setAttribute("recipe", null);				
			}
			
			rd.forward(request, response);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
	}

}
