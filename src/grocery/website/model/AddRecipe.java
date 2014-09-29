package grocery.website.model;

import java.sql.Connection;
import java.sql.Statement;
import java.util.Random;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import grocery.website.utilities.ConnectionUtil;

public class AddRecipe {

	public boolean add(HttpServletRequest request, HttpSession session) throws Exception {
		
		String title = request.getParameter("title");
		String description = request.getParameter("description");
		String ingredients = request.getParameter("ingredients");
		String instructions = request.getParameter("instructions");
		String notes = request.getParameter("notes");
		String yield =  request.getParameter("yield");
		String cooktime =  request.getParameter("cooktime");
		String preptime = request.getParameter("preptime");
		String totaltime =  request.getParameter("totaltime");
		String source = request.getParameter("source");
		String userid = (String) session.getAttribute("username");
		
		Connection con = ConnectionUtil.getConnection();
		Statement statement = con.createStatement();
		
		int id = getRandomInteger();
		StringBuffer strBuf = new StringBuffer();
		strBuf.append("insert into Recipe (recipeId,user_name,title,description,ingredients,instructions,notes,yield,preptime,cooktime,totaltime,recipesource) ");
		strBuf.append("values(");
		strBuf.append("'" + id + "', ");
		strBuf.append("'" + userid + "', ");
		strBuf.append("'" + title + "', ");
		strBuf.append("'" + description + "', ");
		strBuf.append("'" + ingredients + "', ");
		strBuf.append("'" + instructions + "', ");
		strBuf.append("'" + notes + "', ");
		strBuf.append("'" + yield + "', ");
		strBuf.append("'" + cooktime + "', ");
		strBuf.append("'" + preptime + "', ");
		strBuf.append("'" + totaltime + "', ");
		strBuf.append("'" + source + "'");
		strBuf.append(")");
		
		int i = statement.executeUpdate(strBuf.toString());					

		if (i != 0) {
			return true;
		} else {
			return false;
		}
		
	}

	private int getRandomInteger() {
		Random random = new Random();
		int id = random.nextInt(1000);
		return id;
	}
	
}
