<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link href="css/mystyle.css" rel="stylesheet" type="text/css" />
<%@ taglib uri="http://java.sun.com/jstl/core" prefix="c" %>
<title>Retrieve Password</title>
</head>
<%
	String password = (String) request.getAttribute("passwordFromDB");
%>
<body>
	<div id="wrapper">
		<%@include file="header.jsp"%>
		<div></div>
		<div id="contains_body">
			<div id="leftNav">
				<%@ include file="leftNav.jsp"%>
			</div>
			<div id="body_content">
				<table>
					<tr>
						<td>Your password is <%=password %></td>
					</tr>
				</table>
			</div>
			<div id="right">
			 	<%@ include file="login.jsp"%>
			</div>
		</div>
		</div>
</body>
</html>