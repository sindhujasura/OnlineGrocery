package grocery.website.model;

public class UserGroceryList {
	
	public void setListId(long listId) {
		this.listId = listId;
	}
	public void setListName(String listName) {
		this.listName = listName;
	}
	public void setListDescription(String listDescription) {
		this.listDescription = listDescription;
	}
	public void setUserName(String userName) {
		this.userName = userName;
	}
	private long listId;
	private String listName;
	private String listDescription;
	private String userName;
	
	public long getListId() {
		return listId;
	}
	public String getListName() {
		return listName;
	}
	public String getListDescription() {
		return listDescription;
	}
	public String getUserName() {
		return userName;
	}
	
	

}
