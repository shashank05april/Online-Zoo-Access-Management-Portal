<%@page language="java" import="java.sql.*"%>
<html>
<title>login page</title>
<body bgcolor="#FF7F50">

<%
try
{
String Name=request.getParameter("n1");
String Age=request.getParameter("n2");
String Sexcode=request.getParameter("n3");
String Nationality=request.getParameter("n4");
String LoginId=request.getParameter("n5");
String Password=request.getParameter("n6");

DriverManager.registerDriver(new oracle.jdbc.driver.OracleDriver());
Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE","system","shashank");
PreparedStatement st=con.prepareStatement("insert into registration values(?,?,?,?,?,?)");
st.setString(1,Name);
st.setString(2,Age);
st.setString(3,Sexcode);
st.setString(4,Nationality);
st.setString(5,LoginId);
st.setString(6,Password);



st.executeUpdate();
%>
thanks for the registration <br><br>
<a href="intro.html"> back to Home Page</a>
<%
}

catch(Exception e)
{
out.println("sorry, the username you have entered is already being used by another user");

%>
<br><br><a href="reg.html"> Register again with another logind</a>
<br><br>
<a href="intro.html"> back to Home Page</a>
<%
}
%>


</body>
</html>