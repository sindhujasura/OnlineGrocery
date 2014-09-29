 <%@page import="grocery.website.model.ProductItem"%>
<%@page import="grocery.website.utilities.UserGroceryListUtil"%>
<%@page import="grocery.website.model.UserGroceryList"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<style>
.tableborder {
    border: 1px solid black;
}
</style>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link href="css/mystyle.css" rel="stylesheet" type="text/css" />
<title>Welcome to Online Grocery</title>
<script type="text/javascript">
function validateForm() {
	return true;
}

</script>
</head>

<body>
	<div id="wrapper">
		<%@include file="header.jsp"%>
		<div></div>
		<div id="contains_body">
			<div id="leftNav">
				<%@ include file="leftNav.jsp"%>
			</div>
			<div id="body_content">
			<form name="addItemsToListForm" method="post" 
					action="AddItemsToListController" >			
				<p>Available Grocery Lists:</p>
				<table>
				<%
					java.util.Map<String, List<ProductItem>> map = (new UserGroceryListUtil()).getProductItemsForAllListForUserName((String)session.getAttribute("username"));
					java.util.Set<String> listNamesSet = map.keySet();
					if (listNamesSet != null
							&& listNamesSet.size() > 0) {
						for (String groceryList:listNamesSet) {
							java.util.List<ProductItem> productItems = map.get(groceryList);
							String listId = groceryList;
							if (productItems.size() != 0) {
								listId = String.valueOf(productItems.get(0).getListId());
							}
							%>
							<tr>
								<td><%=groceryList%>:</td><td><input type="checkbox" name=<%="checkbox#"+groceryList%> value=<%=listId%>></td>
								<td>																					
									<br/><br/>														
									<table border="1" align="center">
										<tr><th>Product Name</th><th>Description</th><th>Quantity</th><th>Weight</th></tr>
									<% for (ProductItem productItem: productItems) { %>
										<tr><td align="center"><%=productItem.getName()%></td><td align="center"><%=productItem.getDescription()%></td><td align="center"><%=productItem.getQuantity()%></td><td align="center"><%=productItem.getSize()%></td></tr>
									<%} %>
									</table>
								</td>
							</tr>
							<%
						}%>
						<tr>
						<td>
						<input type="submit" align="right" value="Place Order To Store"/>
						</td>
						<td/>
						</tr>
				<%
					}
					
				%>
				</table>
				<br/>
				<br/>
				<input type="hidden" name="requestFromJSP" value="placeOrder">
				</form>
				
				<p>Add Items to your List</p>
				<form name="addItemsToListForm" method="post" 
					action="AddItemsToListController" 
					onsubmit="return validateForm()">
					<input type="hidden" name="requestFromJSP" value="manageGroceryList"/>
					<table align="left">
						<tr>
						<td align="right">List Name<font color="red">*</font></td>
							<td align="left">
								<select name="listId">
									<option value="">Select a Value</option>								
								<%								
									List<UserGroceryList> groceryLists = (new UserGroceryListUtil()).getGroceryListForUserName((String)session.getAttribute("username"));
									
									if (groceryLists != null
											&& groceryLists.size() > 0) {
										for (UserGroceryList groceryList: groceryLists) {
									%>
									<option value=<%=groceryList.getListId()%>><%=groceryList.getListName()%></option>
									<%			
										}
									}
									%>
								  
								</select>						
							</td>
							<td><a href="AddListName.jsp">Click here to add New List</a></td>
						</tr>					
						<tr>
						<td align="right">Product Name<font color="red">*</font></td>
						<td align="left"><input type="text"  maxlength="45" name="name"></td>
						</tr>
						<tr>
						<td align="right">Description</td>
						<td align="left"><input type="text" maxlength="45" name="description"></td>
						</tr>
						<tr>
						<td align="right">Quantity<font color="red">*</font></td>
						<td align="left"><input type="text" maxlength="100" name="quantity"></td>
						</tr>
						<tr>
						<td align="right">Weight</td> 
						<td align="left"><input type="text" maxlength="100" name="size"></td>
						</tr>
						<tr>
						<td></td>
						<td align="center">		
							<input type="submit" value="Add Item to List">
						</td>
						</tr>
					</table>	   
				</form>				
<!-- 				<div>
					<input type="text" id="inputItem" value="Enter Grocery Item" 
							onfocus="if(this.value=='Enter Grocery Item') {this.value='';}" 
							onblur="if(this.value=='') {this.value='Enter Grocery Item';}"
							autocomplete="off" class="ac_input"> <button value="Add to List" onclick="">Add to List</button>
				</div>
 -->			</div>
			<div id="right">
			 	<%@ include file="login.jsp"%>
			</div>
		</div>
		</div>
</body>
</html>