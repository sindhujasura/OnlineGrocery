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
	<form name="addRecipeForm" method="post" action="AddRecipeController">

		<table align="left">
			<tr>
				<td align="right">Title</td>
				<td align="left"><input type="text" maxlength="45" name="title"></td>
			</tr>
			<tr>
				<td align="right">Description</td>
				<td align="left"><input type="text" maxlength="45"
					name="description"></td>
			</tr>
			<tr>
				<td align="right">Ingredients</td>
				<td align="left"><textarea name="ingredients" rows="5" cols="15" spellcheck="true"></textarea></td>
			</tr>
			<tr>
				<td align="right">Instructions</td>
				<td align="left"><textarea name="instructions" rows="5" cols="15" spellcheck="true"></textarea></td>
			</tr>
			<tr>
				<td align="right">Notes</td>
				<td align="left"><textarea name="notes" rows="5" cols="15" spellcheck="true"></textarea></td>
			</tr>
			<tr>
				<td align="right">Yield</td>
				<td align="left"><input type="text" maxlength="15" name="yield"></td>
			</tr>
			<tr>
				<td align="right">Preptime(in min)</td>
				<td align="left"><input type="text" maxlength="15"
					name="preptime"></td>
			</tr>
			<tr>
				<td align="right">Cook Time(in min)</td>
				<td align="left"><input type="text" maxlength="10"
					name="cooktime"></td>
			</tr>
			<tr>
				<td align="right">Total Time(in min)</td>
				<td align="left"><input type="text" maxlength="10"
					name="totaltime"></td>
			</tr>
			<tr>
				<td align="right">Recipe Source</td>
				<td align="left"><input type="text" maxlength="45"
					name="source"></td>
			</tr>
			<tr>
				<td></td>
				<td align="center"><input type="submit" value="Add Recipe">
				</td>
			</tr>

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