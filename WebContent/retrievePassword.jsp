<%@ page import="java.sql.*" %>
<%
	try {
		String passwordFromDB = "";
		String driverName = "com.mysql.jdbc.Driver";
		Class.forName(driverName);
		Connection conn = DriverManager.getConnection(
				"jdbc:mysql://104.130.88.118:3306/onlineGrocery",
				"surasindhu", "surasindhu");
	

		Statement stmt = conn.createStatement();
		
		String userName = request.getParameter("userName");
		String question = request.getParameter("securityQuestion");
		String answer = request.getParameter("securityAnswer");
		
		if (userName == "") {
			/*
			out.println("User Name cannot be blank!");
			out.println("<a href=forgotPassword.jsp> Back </a>");
			*/
			%>
			<script type="text/javascript">
			alert("User Name cannot be blank!");
			window.back();
			</script>
			<% 
		} else if (question == "") {
			%>
			<script>
			alert("Security Question cannot be blank!");
			window.back();
			</script>
			<%
		} else if (answer == "") {
			%>
			<script>
			alert("Security Answer cannot be blank!");
			window.back();
			</script>
			<%
		} else {
			
			StringBuffer strBuf = new StringBuffer();
			strBuf.append("select user_name, password, security_question, security_answer ");
			strBuf.append("  from user where user_name = '" + userName + "'");
			strBuf.append("   and security_question = '" + question + "'");
			strBuf.append("   and UPPER(security_answer) = UPPER('" + answer + "')");
			
			ResultSet rs = stmt.executeQuery(strBuf.toString());
			
			if (!rs.next()) {
				%>
				<script>
				alert("Invalid input - combination not found!");	
				</script>
				<%@ include file="forgotPasswordLandingPage.jsp" %> 
				<% 
			} else {
				passwordFromDB = rs.getString(2);
				request.setAttribute("passwordFromDB", passwordFromDB);
				%>
				<%@ include file="displayRetrievedPassword.jsp" %> 
				<% 
			}
		}
	} catch (Exception e) {
		out.println("Please Enter Details Properly " + e.getMessage());
		out.println("<a href=forgotPassword.jsp> Back </a>");
	}
%>
