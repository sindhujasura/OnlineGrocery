<!--   <frameset rows="30%,*" border=0 noresize>
 <frame src="frame1.jsp" name="f1" scrolling="no">
    <frameset cols="20%,*" border=0 noresize>
	  <frame src="leftNav.jsp" name="f2" scrolling="no">
	  <frame src="bodycontent.jsp" name="f3">
	  <frame src="login.jsp" name="f4">
	 </frameset>
 </frameset> -->
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
				<table cellspacing="10" align="left" valign="middle">
					<tr>
						<td>
						</td>
					</tr>
					<tr></tr>
					<tr>
						<td>
					Select Country (with states):  
						</td>
						<td>
					<select id="country" name ="country"></select>
						</td>
					</tr>
					<tr>
					<td>
					Select State: 
					</td>
					<td><select name ="state" id ="state"></select>
					 <script type="text/javascript">
					populateCountries("country", "state");
					 </script>
					</td>
					</tr>
					<tr>
							<td align="center">
								<input type="button" value="Search Stores">
							</td>
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
--