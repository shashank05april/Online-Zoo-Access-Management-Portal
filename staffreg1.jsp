<%@page language="java" import="java.sql.*"%>
<html>
<body >

<%
try
{
String name=(String)session.getAttribute("login2");
if (name==null)
{
out.println("u have not logged IN, sign IN first. and if u have nt registered yet then sign up");
%>
<br><br><a href="intro.html">Goto HomePage</a>
<%
}
else
{
%>

<title> login page </title>
<center><input type="image" src="tig1v.jpg" width=1000 height=600></center>

<%
String Name=request.getParameter("n1");
String Age=request.getParameter("n2");
String Sexcode=request.getParameter("n3");
String Nationality=request.getParameter("n4");
String LoginId=request.getParameter("n5");
String Password=request.getParameter("n6");

DriverManager.registerDriver(new oracle.jdbc.driver.OracleDriver());
Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE","system","shashank");
PreparedStatement st=con.prepareStatement("insert into staff values(?,?,?,?,?,?)");
st.setString(1,Name);
st.setString(2,Age);
st.setString(3,Sexcode);
st.setString(4,Nationality);
st.setString(5,LoginId);
st.setString(6,Password);



st.executeUpdate();

%>
Entry of new staff member has been added to database <br><br>
<a href="admin.jsp"> back to Home Page</a>

<%
}
}

catch(Exception e)
{
out.println("sorry, the username you have entered is already being used by another staff member");

%>
<br><br><a href="staffreg.jsp"> Register again with another logind</a>
<br><br>
<a href="admin.jsp"> back to Home Page</a>
<%
}


%>

</body>
</html>