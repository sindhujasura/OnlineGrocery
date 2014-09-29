package grocery.website.controllers;

import grocery.website.model.Authenticator;
import grocery.website.model.User;
import grocery.website.model.UserGroceryList;
import grocery.website.utilities.UserGroceryListUtil;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import java.util.UUID;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

public class AddItemsToListController extends HttpServlet {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	public AddItemsToListController() {
		super();
	}

	protected void doPost(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		String username = (String) request.getSession().getAttribute("username");
		RequestDispatcher rd = null;
		String result = "success";
		UserGroceryListUtil groceryListUtil = new UserGroceryListUtil();

		try {
			if (request.getParameter("requestFromJSP") != null
					&& request.getParameter("listName") != null
					&& request.getParameter("requestFromJSP").equalsIgnoreCase("AddListName")) {
				//Add New List to UserGroceryList and redirect the page to manageGroceryList.jsp
				UserGroceryList groceryList = groceryListUtil.addListToUser(request.getParameter("listName"),
																			request.getParameter("listDescription"),
																			username);
				List<UserGroceryList> groceryLists = groceryListUtil.getGroceryListForUserName(username);

				rd = request.getRequestDispatcher("/manageGroceryList.jsp");
				HttpSession session = request.getSession();
				session.setAttribute("username", username);
				session.setAttribute("userid", username);
				session.setAttribute("groceryLists", groceryLists);	
			}else if (request.getParameter("requestFromJSP") != null
						&& request.getParameter("requestFromJSP").equalsIgnoreCase("manageGroceryList")) {
				groceryListUtil.addProductToList(request.getParameter("listId"),
												 request.getParameter("name"),
												 request.getParameter("description"),
												 request.getParameter("quantity"),
												 request.getParameter("size"),
												 username);
				List<UserGroceryList> groceryLists = groceryListUtil.getGroceryListForUserName(username);

				
				rd = request.getRequestDispatcher("/manageGroceryList.jsp");

				HttpSession session = request.getSession();
				session.setAttribute("username", username);
				session.setAttribute("userid", username);
				session.setAttribute("groceryLists", groceryLists);	

				
			}else if (request.getParameter("requestFromJSP") != null
					&& request.getParameter("requestFromJSP").equalsIgnoreCase("placeOrder")) {
				java.util.Set<String> parameterSet = request.getParameterMap().keySet();
				List<Integer> selectedListIds = new ArrayList<>();
				for (String key:parameterSet) {
					if (key.startsWith("checkbox#")
							&& request.getParameter(key) != null){
						selectedListIds.add(Integer.valueOf(request.getParameter(key)));
					}
				}
				
				rd = request.getRequestDispatcher("/orderConfirmationLandingPage.jsp");

				HttpSession session = request.getSession();
				session.setAttribute("username", username);
				session.setAttribute("userid", username);
				session.setAttribute("selectedListIds", selectedListIds);	
			}else if (request.getParameter("requestFromJSP") != null
					&& request.getParameter("requestFromJSP").equalsIgnoreCase("orderConfirmationJSP")) {
				HttpSession session = request.getSession();
				String orderId = UUID.randomUUID().toString();
				List<Integer> selectedListIds = (List<Integer>) session.getAttribute("selectedListIds");				
				groceryListUtil.updateGroceryListToOrdered(selectedListIds, orderId);
				rd = request.getRequestDispatcher("/orderConfirmationSucess.jsp");
				session.setAttribute("confirmationId", orderId);				
			}			
			else {
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
