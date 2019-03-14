<%@page contentType="text/html"%>
<%@page pageEncoding="UTF-8"%>
<%@page language="java" import="java.sql.*" %>

<%
String UserId=request.getParameter("txtuserid");
String Password=request.getParameter("txtpassword");
String Confirm=request.getParameter("txtconfirm");
String FirstName=request.getParameter("txtfirstname");
String LastName=request.getParameter("txtlastname");
String Gender=request.getParameter("rbgender");
String Age=request.getParameter("txtage");
String TelephoneNo=request.getParameter("txtphoneno");
String MobileNo=request.getParameter("txtmobileno");
String Email=request.getParameter("txtemail");
String Address=request.getParameter("txtaddress");
String Pincode=request.getParameter("txtpincode");
String AnnualIncome=request.getParameter("txtannualincome");
try {
    Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
    Connection con=DriverManager.getConnection("jdbc:odbc:pubs","sa","playware");
    PreparedStatement s=con.prepareStatement("Update CustomerRegister set Password=?,ConfirmPassword=?,FirstName=?,LastName=?,Gender=?,Age=?,TelephoneNo=?,MobileNo=?,Email=?,Address=?,Pincode=?,AnnualIncome=? where UserId=?");
    s.setString(1,Password);
    s.setString(2,Confirm);
    s.setString(3,FirstName);
    s.setString(4,LastName);
    s.setString(5,Gender);
    s.setString(6,Age);
    s.setString(7,TelephoneNo);
    s.setString(8,MobileNo);
    s.setString(9,Email);
    s.setString(10,Address);
    s.setString(11,Pincode);
    s.setString(12,AnnualIncome);
    s.setString(13,UserId);
    s.executeUpdate();
    
    out.println("<font color=red size=7>User Details Successfully Updated </font><BR/><BR/>");
    out.println("Your UserId is : " + UserId + "<BR/>");
    out.println("Your Password is : " + Password + "<BR/>");
    out.println("Your Confirm Password is : " + Confirm + "<BR/>");
    out.println("Your First Name is : " + FirstName + "<BR/>");
    out.println("Your Last Name is : " + LastName + "<BR/>");
    out.println("Your Gender is : " + Gender + "<BR/>");
    out.println("Your Age is : " + Age + "<BR/>");
    out.println("Your Telephone Number is : " + TelephoneNo + "<BR/>");
    out.println("Your Mobile Number is : " + MobileNo + "<BR/>");
    out.println("Your Email is : " + Email + "<BR/>");
    out.println("Your Address is : " + Address + "<BR/>");
    out.println("Your Pincode is : " + Pincode + "<BR/>");
    out.println("Your Annual Income is : " + AnnualIncome + "<BR/>");
} catch(java.sql.SQLException sqle) {
    out.println(sqle);
} catch(Exception e) {
    out.println(e);
}
%>
