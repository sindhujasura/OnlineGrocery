<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Login</title>
<style>
	 #login{
			width:30%;
			
}
</style>
<script type="text/javascript">

	function validateLoginForm() {
		var userName = document.forms["loginForm"]["userName"].value;
		var password = document.forms["loginForm"]["password"].value;
		if (userName == null || userName == "") {
			alert("Username is required!");
			return false;
		}

		if (password == null || password == "") {
			alert("Password is required!");
			return false;
		}
	}
</script>

<%
	String username = (String) session.getAttribute("username");
%>
</head>
<body">
	
	<%
	 if (username != null && username != "") {
	 %> 
	 <form method="post" action="LogoutController">
	 <table align="left">
	 <tr><td align="center">Welcome <%=username%>!</td></tr>
	 <tr><td align="center"><input type="submit" value="Sign out"/></td></tr>
	 </table>
	 </form>
	 <% 
   	 } else {
	 %>
	 	<div id="login">
		<form name="loginForm" method="post" action="LoginController" onsubmit="return validateLoginForm()">
				<table>
					<tr>
						<td><b>Username<font color="red">*</font></b></td>
						<td><input type="text" maxlength="45"
							name="userName"></td>
					</tr>

					<tr>
						<td><b>Password<font color="red">*</font></b></td>
						<td><input type="password" maxlength="45"
							name="password"></td>
					</tr>

					<tr>
						<td colspan="2" align="center"><input type="submit" value="Sign in"
							name="login"></td>
					</tr>

					<tr>
						<td colspan="2" align="center"><a href="forgotPasswordLandingPage.jsp">Forgot your password?</a></td>
					</tr>

					<tr>
						<td colspan="2" align="center"><a href="userRegistrationLandingPage.jsp"> New User?</a></td>
					</tr>
				</table>
			</form>
		</div>
		<% } %>
	
</body>
</html>