<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link href="css/mystyle.css" rel="stylesheet" type="text/css" />
<title>Online Grocery</title>
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
			<%if (request.getAttribute("recipe") != null){
				%>
				<br> <br>
				<center>
					Title:
					<c:out value="${recipe.title}" />
					&nbsp;&nbsp; Description:
					<c:out value="${recipe.description}" />
					<br> 
					&nbsp;&nbsp; Ingredients:
					<c:out value="${recipe.ingredients}" />
					<br> Instructions:
					<c:out value="${recipe.instructions}" /> hrs
					<br> Notes: 
					<c:out value="${recipe.notes}" />
					&nbsp;&nbsp; Yield:
					<c:out value="${recipe.yield}" />
					<br> Prep Time:
					<c:out value="${recipe.preptime}" />
					&nbsp;&nbsp; Cook Time:
					<c:out value="${recipe.cooktime}" />
					<br> TotalTime:<b><c:out value="${recipe.totaltime}" /><br></b>

				</center>
				<%} else {
				%>				
				<p>Recipe not found.</p>
				<%} %>
			</div>
		</div>
	</div>
</body>
</html>