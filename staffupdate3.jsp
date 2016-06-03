<%@page language="java" import="java.sql.*"%>
<html>
<style type="text/css">
<!--
.style2 {color: #FF0000}
-->
</style>
<body >

<%
try
{
String aa=(String)session.getAttribute("login2");
if (aa==null)
{
out.println("u have not logged IN, sign IN first. and if u have nt registered yet then sign up");
%>
<br><br><a href="intro.html">Goto HomePage</a>
<%
}
else
{
%>


<title>login page</title>
<input type="image" src="4342526434466614728_0.jpg" width=500 height=550>

<%
String a=(String)session.getAttribute("name");


String Name=request.getParameter("q1");
String Age=request.getParameter("q2");
String Sexcode=request.getParameter("q3");
String Nationality=request.getParameter("q4");
String LoginID=request.getParameter("q5");
String Password=request.getParameter("q6");


DriverManager.registerDriver(new oracle.jdbc.driver.OracleDriver());
Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE","system","shashank");
PreparedStatement st=con.prepareStatement("update staff set Name=?,Age=?,Sexcode=?,Nationality=?,LoginID=?,Password=? where Name=?");
st.setString(1,Name);
st.setString(2,Age);
st.setString(3,Sexcode);
st.setString(4,Nationality);
st.setString(5,LoginID);
st.setString(6,Password);
st.setString(7,a);


st.executeUpdate();

%>
<span class="style2">changes has been updated </span><br>
<br>
<a href="admin.jsp">Goto HomePage</a>

<%
}
}

catch(Exception e)
{
out.println("sorry, the username you have entered while updation is already being used by another staff member. TRY AGAIN!!!");

%>
<br><br><a href="admin.jsp"> back to Home Page</a>
<%
}


%>

</body>
</html>