package grocery.website.utilities;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Random;

import grocery.website.model.ProductItem;
import grocery.website.model.UserGroceryList;

public class UserGroceryListUtil {

	public UserGroceryList addListToUser(String listName,
										 String listDescription,										 
										String username) throws Exception {

				
		Connection con = ConnectionUtil.getConnection();
		Statement statement = con.createStatement();
		
		int id = getRandomInteger();
		StringBuffer strBuf = new StringBuffer();
		strBuf.append("insert into UserGroceryList (listId,listName,listDescription,isOrdered,userName) ");
		strBuf.append("values(");
		strBuf.append("'" + id + "', ");
		strBuf.append("'" + listName + "', ");
		strBuf.append("'" + listDescription + "', ");
		strBuf.append("'N', ");
		strBuf.append("'" + username + "'");
		strBuf.append(")");
		
		int i = statement.executeUpdate(strBuf.toString());
		
		UserGroceryList groceryList = null;

		if (i != 0) {
			groceryList = new UserGroceryList();
			groceryList.setListId(id);
			groceryList.setListDescription(listDescription);
			groceryList.setUserName(username);
			groceryList.setListName(listName);
			return groceryList;
		} else {
			return null;
		}
		
	}

	private int getRandomInteger() {
		Random random = new Random();
		int id = random.nextInt(1000);
		return id;
	}

	public List<UserGroceryList> getGroceryListForUserName(String username) throws Exception {
		List<UserGroceryList> groceryLists = new ArrayList<>();
		Connection con = ConnectionUtil.getConnection();
		Statement statement = con.createStatement();
		
		StringBuilder strBuf = new StringBuilder();
		strBuf.append("Select * from UserGroceryList where userName ='"+username+"' and isOrdered <> 'Y'");
		
		ResultSet rs = statement.executeQuery(strBuf.toString());
		while(rs.next()) {
			UserGroceryList groceryList = new UserGroceryList();
			groceryList.setListId(rs.getInt("listId"));
			groceryList.setListDescription(rs.getString("listDescription"));
			groceryList.setListName(rs.getString("listName"));
			groceryList.setUserName(rs.getString("userName"));
			groceryLists.add(groceryList);
		}
		return groceryLists;
	}

	public void addProductToList(String listId, String name,
								 String description, String quantity, 
								 String size, String username) throws Exception {
		Connection con = ConnectionUtil.getConnection();
		Statement statement = con.createStatement();
		
		
		int id = getRandomInteger();
		StringBuffer strBuf = new StringBuffer();
		strBuf.append("insert into ProductItem (itemId, listId, name, description, quantity, size, username) ");
		strBuf.append("values(");
		strBuf.append("'" + id + "', ");
		strBuf.append("'" + listId + "', ");
		strBuf.append("'" + name + "', ");
		strBuf.append("'" + description + "', ");
		strBuf.append("'" + quantity + "', ");
		strBuf.append("'" + size + "', ");
		strBuf.append("'" + username + "'");
		strBuf.append(")");
		
		statement.executeUpdate(strBuf.toString());		
	}
	
	public Map<String,List<ProductItem>> getProductItemsForAllListForUserName(String username) throws Exception {
		Map<String,List<ProductItem>> map = new HashMap<>();
		Connection con = ConnectionUtil.getConnection();
		Statement statement = con.createStatement();
		
		StringBuilder strBuf = new StringBuilder();
		strBuf.append("Select * from UserGroceryList ul, ProductItem pi where ul.listId = pi.listId and pi.username = '"+username+"' and ul.isOrdered <> 'Y'");
		
		ResultSet rs = statement.executeQuery(strBuf.toString());
		while(rs.next()) {
			ProductItem item = getProductItem(rs);
			String listName = rs.getString("listName");
			if (map.containsKey(listName)) {
				map.get(listName).add(item);
			}else {
				List<ProductItem> items = new ArrayList<>();
				items.add(item);
				map.put(listName, items);
			}
		}
		return map;		
	}
	
	public void updateGroceryListToOrdered(List<Integer> groceryListIds,
										   String orderId) throws Exception {
		Connection con = ConnectionUtil.getConnection();
		Statement statement = con.createStatement();
		
		
		String listIds = appendComma(groceryListIds);
		StringBuffer strBuf = new StringBuffer();
		String sql = "UPDATE UserGroceryList set isOrdered = 'Y', order_id = '"+orderId+"' where listId in ("+listIds+")";		
		statement.executeUpdate(sql);		
	
	}

	
	private String appendComma(List<Integer> groceryListIds) {
		StringBuilder builder = new StringBuilder();
		int i = 0;
		for (Integer groceryId:groceryListIds){
			builder.append(groceryId);
			if (i != groceryListIds.size()-1) {
				builder.append(",");
			}		
			i++;
		}
		// TODO Auto-generated method stub
		return builder.toString();
	}

	private ProductItem getProductItem(ResultSet rs) throws SQLException {
		ProductItem item = new ProductItem();
		item.setName(rs.getString("name"));
		item.setItemId(rs.getInt("itemId"));
		item.setListId(rs.getInt("listId"));
		item.setDescription(rs.getString("description"));
		item.setQuantity(rs.getInt("quantity"));
		item.setSize(rs.getInt("size"));
		item.setUsername(rs.getString("username"));
		return item;
	}
	
	
}
