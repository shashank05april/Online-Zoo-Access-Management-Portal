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
String aa=(String)session.getAttribute("login1");
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
String animal=(String)session.getAttribute("name");


String Name=request.getParameter("q1");
String AnimalID=request.getParameter("q2");
String CageNo=request.getParameter("q3");
String Location=request.getParameter("q4");
String Age=request.getParameter("q5");
String BroughtFrom=request.getParameter("q6");


DriverManager.registerDriver(new oracle.jdbc.driver.OracleDriver());
Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE","system","shashank");
PreparedStatement st=con.prepareStatement("update animal set Name=?,AnimalID=?,CageNo=?,Location=?,Age=?,BroughtFrom=? where Name=?");
st.setString(1,Name);
st.setString(2,AnimalID);
st.setString(3,CageNo);
st.setString(4,Location);
st.setString(5,Age);
st.setString(6,BroughtFrom);
st.setString(7,animal);


st.executeUpdate();

%>
<span class="style2">changes has been updated </span><br>
<br>
<a href="staff.jsp">Goto HomePage</a>

<%
}
}

catch(Exception e)
{
out.println("sorry, animal ID  you have entered has already been allotted for another animal. TRY AGAIN!!!");

%>
<br><br><a href="staff.jsp"> back to Home Page</a>
<%
}


%>

</body>
</html>