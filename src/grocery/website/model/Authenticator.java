package grocery.website.model;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import com.mysql.jdbc.StringUtils;

import grocery.website.utilities.ConnectionUtil;
public class Authenticator {
	
	public String authenticate(String username, String password) throws Exception {
		
		try {
			Connection con = ConnectionUtil.getConnection();
			Statement statement = con.createStatement();
			
			if (username == null || username == "") {
				return "userNameCannotBeBlank";
			} else {
				if (password == null || password == "") {
					return "passwordCannotBeBlank";
				}
			}
			ResultSet rs = statement.executeQuery("select user_id from user where user_name='"+username+"' and password='"+password+"' ");
			
			if (rs.next()) {
				return "success";
			} else {
				return "failure";
			}
				
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return "failure";
    }

	public String createNewUser(HttpServletRequest request) throws Exception {
		try {
			String fname = request.getParameter("firstName");
			String lname = request.getParameter("lastName");
			String mname = request.getParameter("middleName");
			String addressLine1 = request.getParameter("addressLine1");
			String addressLine2 = request.getParameter("addressLine2");
			String city =  request.getParameter("city");
			String state =  request.getParameter("state");
			String zip = request.getParameter("zip");
			String email = request.getParameter("email");
			String cc_name = request.getParameter("cc_name");
			String cc_num = request.getParameter("cc_num");
			String cvv = null;
			if (StringUtils.isNullOrEmpty(request.getParameter("cvv"))) {
				cvv = "0";
			} else {
				cvv = request.getParameter("cvv");
			}			
			String ccExpiryMonth = request.getParameter("expiry_month");
			String ccExpiryYear = request.getParameter("expiry_year");
			String userName = request.getParameter("userName");
			String password = request.getParameter("password");
			String securityQuestion = request.getParameter("securityQuestion");
			String securityAnswer = request.getParameter("securityAnswer");

			Connection con = ConnectionUtil.getConnection();
			Statement statement = con.createStatement();
			ResultSet rs = statement.executeQuery("select user_name from user where user_name='"+ userName +"'");
			if (rs.next()) {
				request.setAttribute("errorMessage", "Username already exists!");
				return "error";
			} else {

				StringBuffer strBuf = new StringBuffer();
				strBuf.append("insert into user(user_id,");
				strBuf.append("first_name, ");
				strBuf.append("middle_name, ");
				strBuf.append("last_name, ");
				strBuf.append("address_line1, ");
				strBuf.append("address_line2, ");
				strBuf.append("city, ");
				strBuf.append("state, ");
				strBuf.append("zip, ");
				strBuf.append("email, ");
				strBuf.append("name_on_card, ");
				strBuf.append("cc_num, ");
				strBuf.append("cvv, ");
				strBuf.append("expiry_date, ");
				strBuf.append("user_name, ");
				strBuf.append("password, ");
				strBuf.append("security_question, ");
				strBuf.append("security_answer ");
				strBuf.append(") values (last_insert_id(), ");
				strBuf.append("'" + fname + "', ");
				strBuf.append("'" + mname + "', ");
				strBuf.append("'" + lname + "', ");
				strBuf.append("'" + addressLine1 + "',");
				strBuf.append("'" + addressLine2 + "',");
				strBuf.append("'" + city + "',");
				strBuf.append("'" + state + "',");
				strBuf.append("'" + zip + "',");
				strBuf.append("'" + email + "',");

				strBuf.append("'" + cc_name + "',");
				strBuf.append("'" + cc_num + "',");
				strBuf.append("'" + cvv + "',");
				strBuf.append("'" + ccExpiryMonth + ccExpiryYear + "',");

				strBuf.append("'" + userName + "',");
				strBuf.append("'" + password + "',");
				strBuf.append("'" + securityQuestion + "',");
				strBuf.append("'" + securityAnswer +"'");
				strBuf.append(")");

				int i = statement.executeUpdate(strBuf.toString());					

				if (i != 0) {
					return "success";
				} else {
					return "error";
				}
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			return "error";
		}
	}
	
	public long getUserIdFromUsername(HttpServletRequest request, String username) throws Exception {
		long userId = 0;
		try {
			Connection con = ConnectionUtil.getConnection();
			Statement statement = con.createStatement();
			ResultSet rs = statement.executeQuery("select user_id from user where user_name = '" + username + "'");
			
			while (rs.next()) {
				userId = rs.getLong("user_id");
			}
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		return userId;
	}
}
