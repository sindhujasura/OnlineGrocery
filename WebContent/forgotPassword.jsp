<!DOCTYPE html>
<html>
<head>
<link href="css/mystyle.css" rel="stylesheet" type="text/css" />
<title>Forgot your password?</title>
	<script type="text/javascript">

	function validateForgotPasswordForm() {
		var userName = document.forms["forgotPasswordForm"]["userName"].value;
		var securityQuestion = document.forms["forgotPasswordForm"]["securityQuestion"].value;
		var securityAnswer = document.forms["forgotPasswordForm"]["securityAnswer"].value;
	  	if (userName == null || userName == ""){
	    	alert("Username is required!");
	    	return false;
	    }
	  	if (securityQuestion == null || securityQuestion == ""){
	    	alert("Security Question is required!");
	    	return false;
	    }
	  	if (securityAnswer == null || securityAnswer == ""){
	    	alert("Security Answer is required!");
	    	return false;
	    }
	}
	</script>
</head>

<body>
	<h2 align="left">Forgot your password?</h2>
	<p>Enter your username, security question, and security answer that you selected during registration to retrieve your password.</p>
	
	<form method="post" name="forgotPasswordForm" action="retrievePassword.jsp" onsubmit="return validateForgotPasswordForm()">
	
	<table align="left">
	<tr>
	<td align="right"><b>Username<font color="red">*</font></b></td> 
	<td align="left"><input type="text" maxlength="45" name="userName"></td>
	</tr>
	<tr>
	<td align="right"><b>Security Question<font color="red">*</font></b></td> 
	<td align="left">
	<select name="securityQuestion">
		<option value=""></option>
		<option value="1">What was your first pet's name?</option>
		<option value="2">What make was your first car?</option>
		<option value="3">Where were your born?</option>
	</select>
	</td>
	</tr>
	<tr>
	<td align="right"><b>Security Answer<font color="red">*</font></b></td> 
	<td><input type="text" maxlength="45" name="securityAnswer"></td>
	</tr>
	<tr>
	<td align="right">		
	<input type="submit" value="Retrieve password">
	</td>
	</tr>
	</table>	   
	</form>
	</body>
</html>