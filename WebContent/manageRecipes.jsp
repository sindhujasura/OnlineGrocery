 <%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link href="css/mystyle.css" rel="stylesheet" type="text/css" />
<title>Welcome to Online Grocery</title>
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
				<div id="getstarted">
                    <h3>Get Started!</h3>
                    <ol>
                        <li><p><strong><a href="addrecipe.jsp">Add a Recipe</a> to your account.</strong> Copy recipes from your favorite cookbooks, web sites, or from friends and family.</p></li>
                        <li><p><strong><a href="searchRecipe.jsp">Search a Recipe.</a><strong></p></li>
                        <li><p><strong><a href="manageGroceryList.jsp">Go to Manage Grocery List.</a></strong> Create a shopping list from your recipes, then pop open One tsp. on your phone when you head to the grocery store.</p></li>
                    </ol>
                </div>
			</div>
			<div id="right">
			 	<%@ include file="login.jsp"%>
			</div>
		</div>
		</div>
</body>
</html>