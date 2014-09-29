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
				<form id="addItemsToListForm" method="post" 
					action="AddItemsToListController">
					
					<input type="hidden" name="requestFromJSP" id="requestFromAddListName" value = "AddListName"></input>
					<table>					 
					<tr><td>List Name: </td><td><input type="text" name="listName" id="listName"></input></td></tr>
					<tr><td>List Description: </td><td> <input type="text" name="listDescription" id="listDescription"></input></td></tr>
					<tr><td/><td><button type="submit">Create List</button></td></tr>
					</table>
				</form>
			</div>
			<div id="right">
			 	<%@ include file="login.jsp"%>
			</div>
		</div>
		</div>
</body>
</html>