<!DOCTYPE html>
<html>
<head>
	<link href="css/mystyle.css" rel="stylesheet" type="text/css" />
	<title>Welcome to Online Grocery</title>
	<script type="text/javascript">

	function validateorderConfirmationForm() {
		var storeName = document.forms["orderConfirmationForm"]["storeName"].value;
	    var addressLine1 = document.forms["orderConfirmationForm"]["addressLine1"].value;
	    var city = document.forms["orderConfirmationForm"]["city"].value; // added 
	    var state = document.forms["orderConfirmationForm"]["state"].value;
	    var zip = document.forms["orderConfirmationForm"]["zip"].value;
	    var email = document.forms["orderConfirmationForm"]["email"].value;
	    var cc_name = document.forms["orderConfirmationForm"]["cc_name"].value;
	    var cc_num = document.forms["orderConfirmationForm"]["cc_num"].value;
	    var cvv = document.forms["orderConfirmationForm"]["cvv"].value;
	    var expiry_month = document.forms["orderConfirmationForm"]["expiry_month"].value;
	    var expiry_year = document.forms["orderConfirmationForm"]["expiry_year"].value;
	    
	    if (storeName == null || storeName == ""){
	    	alert("Store name is required!");
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
	    if (true) {
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
	}
	</script>
</head>

<body>
<h2 align="center"><b>Please Enter Store Information</b></h2>
<form name="orderConfirmationForm" method="post" action="AddItemsToListController" onsubmit="return validateorderConfirmationForm()">
<table align="left">
<tr>
<td align="right">Store Name<font color="red">*</font></td>
<td align="left"><input type="text" maxlength="45" name="storeName"></td>
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
<td align="right">Email</td> 
<td align="left"><input type="text" maxlength="100" name="email"></td>
</tr>
<tr>
<td>
</td>
<td/>
</tr>
<tr>
<td>
<h5>Payment Information:</h5>
</td>
<td/>
</tr>
<tr>
<td align="right">Name on the card<font color="red">*</font></td> 
<td align="left"><input type="text" maxlength="45" name="cc_name"></td>
</tr>
<tr>
<td align="right">Credit card number<font color="red">*</font></td> 
<td align="left"><input type="text" maxlength="16" name="cc_num"></td>
</tr>
<tr>
<td align="right">cvv<font color="red">*</font></td> 
<td align="left"><input type="text" maxlength="3" name="cvv"></td>
</tr>
<tr>
<td align="right">Expiry date<font color="red">*</font></td> 
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
	<option value="2019">2019</option>
	<option value="2020">2020</option>
	<option value="2021">2021</option>

	</select>
</td>
</tr>
<tr>
<td></td>
<td align="center">		
<input type="submit" value="Submit Order">
</td>
</tr>
<tr>
<td>
<h5>Fields with <font color="red">*</font> are mandatory</h5>
</td>
<td/>
</tr>	   
</table>
<input type="hidden" name="requestFromJSP" value="orderConfirmationJSP"/>
</form>
</body>
</html>
