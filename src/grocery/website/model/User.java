package grocery.website.model;

import java.text.DateFormat;
import java.text.SimpleDateFormat;

public class User {
		 
	    private String firstName;
	    private String middleName;
	    private String lastName;
	    private String addressLine1;
	    private String addressLine2;
	    private String city;
	    private String state;
	    private int zip;
	    private String email;
	    private String nameOnCreditCard;
	    private int cvv;
	    private String expDate;
	    
	    private String username;
	    private String password;
	    
	    private String securityQuestion;
	    private String securityAnswer;
	    
	    public static DateFormat dateFormat = new SimpleDateFormat("MM/yyyy");

	    
		public User(String username, String password) {
			super();
			this.username = username;
			this.password = password;
		}
		
		public String getFirstName() {
			return firstName;
		}
		public void setFirstName(String firstName) {
			this.firstName = firstName;
		}
		public String getMiddleName() {
			return middleName;
		}
		public void setMiddleName(String middleName) {
			this.middleName = middleName;
		}
		public String getLastName() {
			return lastName;
		}
		public void setLastName(String lastName) {
			this.lastName = lastName;
		}
		public String getAddressLine1() {
			return addressLine1;
		}
		public void setAddressLine1(String addressLine1) {
			this.addressLine1 = addressLine1;
		}
		public String getAddressLine2() {
			return addressLine2;
		}
		public void setAddressLine2(String addressLine2) {
			this.addressLine2 = addressLine2;
		}
		public String getCity() {
			return city;
		}
		public void setCity(String city) {
			this.city = city;
		}
		public String getState() {
			return state;
		}
		public void setState(String state) {
			this.state = state;
		}
		public int getZip() {
			return zip;
		}
		public void setZip(int zip) {
			this.zip = zip;
		}
		public String getEmail() {
			return email;
		}
		public void setEmail(String email) {
			this.email = email;
		}
		public String getNameOnCreditCard() {
			return nameOnCreditCard;
		}
		public void setNameOnCreditCard(String nameOnCreditCard) {
			nameOnCreditCard = nameOnCreditCard;
		}
		public int getCvv() {
			return cvv;
		}
		public void setCvv(int cvv) {
			this.cvv = cvv;
		}
		public String getExpDate() {
			return expDate;
		}
		public void setExpDate(String expDate) {
			this.expDate = expDate;
		}
		public String getUsername() {
			return username;
		}
		public void setUsername(String username) {
			this.username = username;
		}
		public String getPassword() {
			return password;
		}
		public void setPassword(String password) {
			this.password = password;
		}
		public String getSecurityQuestion() {
			return securityQuestion;
		}
		public void setSecurityQuestion(String securityQuestion) {
			this.securityQuestion = securityQuestion;
		}
		public String getSecurityAnswer() {
			return securityAnswer;
		}
		public void setSecurityAnswer(String securityAnswer) {
			this.securityAnswer = securityAnswer;
		}
 
}
