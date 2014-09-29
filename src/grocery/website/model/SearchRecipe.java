package grocery.website.model;

import grocery.website.utilities.ConnectionUtil;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;


public class SearchRecipe {

	public Recipe search(String title, String username) {
		
		String strQuery = "select * from Recipe where title='"+title+"'";
		
		Connection con;
		try {
			con = ConnectionUtil.getConnection();
			Statement statement = con.createStatement();
			ResultSet rs = statement.executeQuery(strQuery);
			Recipe resultRecipe=addToObject(rs);
			con.close();
			return resultRecipe;
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		
		return null;
	}

	private Recipe addToObject(ResultSet rs) throws SQLException {
		if(rs.next()) {
			Recipe recipe = new Recipe();
			recipe.setTitle(rs.getString("title"));
			recipe.setDescription(rs.getString("description"));
			recipe.setCooktime(rs.getString("cooktime"));
			recipe.setInstructions(rs.getString("instructions"));
			recipe.setIngredients(rs.getString("ingredients"));
			recipe.setNotes(rs.getString("notes"));
			recipe.setPreptime(rs.getString("preptime"));
			recipe.setSource(rs.getString("recipesource"));
			recipe.setTotaltime(rs.getString("totaltime"));
			recipe.setYield(rs.getString("yield"));
			
			return recipe;
		}
		
		return null;
	}

}
