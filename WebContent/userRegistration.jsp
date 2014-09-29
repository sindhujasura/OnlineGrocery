<!DOCTYPE html>
<html>
<head>
	<link href="css/mystyle.css" rel="stylesheet" type="text/css" />
	<title>New User Registration</title>
	<script type="text/javascript">

	function validateUserRegistrationForm() {
		var firstName = document.forms["userRegistrationForm"]["firstName"].value;
	    var lastName = document.forms["userRegistrationForm"]["lastName"].value;
	    var addressLine1 = document.forms["userRegistrationForm"]["addressLine1"].value;
	    var city = document.forms["userRegistrationForm"]["city"].value; // added 
	    var state = document.forms["userRegistrationForm"]["state"].value;
	    var zip = document.forms["userRegistrationForm"]["zip"].value;
	    var email = document.forms["userRegistrationForm"]["email"].value;
	    var cc_name = document.forms["userRegistrationForm"]["cc_name"].value;
	    var cc_num = document.forms["userRegistrationForm"]["cc_num"].value;
	    var cvv = document.forms["userRegistrationForm"]["cvv"].value;
	    var expiry_month = document.forms["userRegistrationForm"]["expiry_month"].value;
	    var expiry_year = document.forms["userRegistrationForm"]["expiry_year"].value;
	    var userName = document.forms["userRegistrationForm"]["userName"].value;
	    var password = document.forms["userRegistrationForm"]["password"].value;
	    var securityQuestion = document.forms["userRegistrationForm"]["securityQuestion"].value;
	    var securityAnswer = document.forms["userRegistrationForm"]["securityAnswer"].value;
	    
	    if (firstName == null || firstName == "") {
	    	alert("First name is required!");
	    	return false;
	    }
	    if (lastName == null || lastName == ""){
	    	alert("Last name is required!");
	    	return false;
	    } 
	    if (addressLine1 == null || addressLine1 == ""){
	    	alert("Address line 1 name is required!");
	    	return false;
	    }
	    if (city == null || city == ""){
	    	alert("City is required!");
	    	return false;
	    }
	    if (state == null || state == ""){
	    	alert("State is required!");
	    	return false;
	    }
	    if (zip == null || zip == ""){
	    	alert("Zip is required!");
	    	return false;
	    }
	    if (email == null || email == ""){
	    	alert("Email is required!");
	    	return false;
	    }
	    if (email.indexOf("@") == -1) {
	    	alert("Invalid email format!");
	    	return false;
	    }
	    if (false) {
	    	if (cc_name == null || cc_name == ""){
		    	alert("Name on credit card is required!");
		    	return false;
		    }
		    if (cc_num == null || cc_num == ""){
		    	alert("Credit card number is required!");
		    	return false;
		    }
		    if (cvv == null || cvv == ""){
		    	alert("CVV is required!");
		    	return false;
		    }
		    if (expiry_month == null || expiry_month == ""){
		    	alert("Expiry month of credit card is required!");
		    	return false;
		    }
		    if (expiry_year == null || expiry_year == ""){
		    	alert("Expiry year of credit card  is required!");
		    	return false;
		    }	    	
	    }
	    
	    if (userName == null || userName == ""){
	    	alert("Username is required!");
	    	return false;
	    }
	    if (password == null || password == ""){
	    	alert("Password is required!");
	    	return false;
	    }
	    if (securityQuestion == null || securityQuestion == ""){
	    	alert("Please select one security question!");
	    	return false;
	    }
	    if (securityAnswer == null || securityAnswer == ""){
	    	alert("Please answer the security question!");
	    	return false;
	    }
	}
	</script>
</head>

<body>
<h2 align="center"><b>New User Registration</b></h2>
<h5>Fields with <font color="red">*</font> are mandatory</h5>

<form name="userRegistrationForm" method="post" action="UserRegistrationController" onsubmit="return validateUserRegistrationForm()">

<table align="left">
<tr>
<td align="right">First Name<font color="red">*</font></td>
<td align="left"><input type="text"  maxlength="45" name="firstName"></td>
</tr>
<tr>
<td align="right">Middle Name</td>
<td align="left"> <input type="text" maxlength="45" name="middleName"></td>
</tr>
<tr>
<td align="right">Last Name<font color="red">*</font></td>
<td align="left"><input type="text" maxlength="45" name="lastName"></td>
</tr>
<tr>
<td align="right">Address line 1<font color="red">*</font></td>
<td align="left"><input type="text"maxlength="100" name="addressLine1"></td>
</tr>
<tr>
<td align="right">Address line 2</td> 
<td align="left"><input type="text" maxlength="100" name="addressLine2"></td>
</tr>
<tr>
<td align="right">City<font color="red">*</font></td>
<td align="left"><input type="text" maxlength="50" name="city"></td>
</tr>
<tr>
<td align="right">State<font color="red">*</font></td>
<td align="left">
<select name="state">
	<option value=""></option>
	<option value="AL">AL</option>
	<option value="AK">AK</option>
	<option value="AZ">AZ</option>
	<option value="AR">AR</option>
	<option value="CA">CA</option>
	<option value="CO">CO</option>
	<option value="CT">CT</option>
	<option value="DE">DE</option>
	<option value="DC">DC</option>
	<option value="FL">FL</option>
	<option value="GA">GA</option>
	<option value="HI">HI</option>
	<option value="ID">ID</option>
	<option value="IL">IL</option>
	<option value="IN">IN</option>
	<option value="IA">IA</option>
	<option value="KS">KS</option>
	<option value="KY">KY</option>
	<option value="LA">LA</option>
	<option value="ME">ME</option>
	<option value="MD">MD</option>
	<option value="MA">MA</option>
	<option value="MI">MI</option>
	<option value="MN">MN</option>
	<option value="MS">MS</option>
	<option value="MO">MO</option>
	<option value="MT">MT</option>
	<option value="NE">NE</option>
	<option value="NV">NV</option>
	<option value="NH">NH</option>
	<option value="NJ">NJ</option>
	<option value="NM">NM</option>
	<option value="NY">NY</option>
	<option value="NC">NC</option>
	<option value="ND">ND</option>
	<option value="OH">OH</option>
	<option value="OK">OK</option>
	<option value="OR">OR</option>
	<option value="PA">PA</option>
	<option value="RI">RI</option>
	<option value="SC">SC</option>
	<option value="SD">SD</option>
	<option value="TN">TN</option>
	<option value="TX">TX</option>
	<option value="UT">UT</option>
	<option value="VT">VT</option>
	<option value="VA">VA</option>
	<option value="WA">WA</option>
	<option value="WV">WV</option>
	<option value="WI">WI</option>
	<option value="WY">WY</option>
</select>
</td>
</tr>
<tr>
<td align="right">Zip code<font color="red">*</font></td> 
<td align="left"><input type="text" maxlength="5" name="zip"></td>
</tr>
<tr>
<td align="right">Email<font color="red">*</font></td> 
<td align="left"><input type="text" maxlength="100" name="email"></td>
</tr>
<tr>
<td align="right">Name on the card</td> 
<td align="left"><input type="text" maxlength="45" name="cc_name"></td>
</tr>
<tr>
<td align="right">Credit card number</td> 
<td align="left"><input type="text" maxlength="16" name="cc_num"></td>
</tr>
<tr>
<td align="right">cvv</td> 
<td align="left"><input type="text" maxlength="3" name="cvv"></td>
</tr>
<tr>
<td align="right">Expiry date</td> 
<td align="left">
<select name="expiry_month">
	<option value=""></option>
	<option value="JAN">Jan</option>
	<option value="FEB">Feb</option>
	<option value="MAR">Mar</option>
	<option value="APR">Apr</option>
	<option value="MAY">May</option>
	<option value="JUN">Jun</option>
	<option value="JUL">Jul</option>
	<option value="AUG">Aug</option>
	<option value="SEP">Sep</option>
	<option value="OCT">Oct</option>
	<option value="NOV">Nov</option>
	<option value="DEC">Dec</option>
	</select>
<select name="expiry_year">
	<option value=""></option>
	<option value="2014">2014</option>
	<option value="2015">2015</option>
	<option value="2016">2016</option>
	<option value="2017">2017</option>
	<option value="2018">2018</option>
	</select>
</td>
</tr>
<br>

<tr>
<td align="right">User Name<font color="red">*</font></td> 
<td align="left"><input type="text" maxlength="45" name="userName"></td>
</tr>
<tr>
<td align="right">Password<font color="red">*</font></td> 
<td align="left"><input type="password" maxlength="45" name="password"></td>
</tr>
<tr>
<td align="right">Security Question<font color="red">*</font></td> 
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
<td align="right">Security Answer<font color="red">*</font></td> 
<td><input type="text" maxlength="45" name="securityAnswer"></td>
</tr>

<br/>
<br/>
<tr>
<td></td>
<td align="center">		
<input type="submit" value="Submit">
</td>
</tr>

</table>	   
</form>
</body>
</html>
