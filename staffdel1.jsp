<%@page language="java" import="java.sql.*"%>
<html>
<body>

<%
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

<title>
deletion page</title>
<center><input type="image" src="wild_animal_look_640_12.jpg" width=700 height=500></center>

<%



String name=request.getParameter("t1");
DriverManager.registerDriver(new oracle.jdbc.driver.OracleDriver());
Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE","system","shashank");
PreparedStatement st=con.prepareStatement("delete from staff where Name=?");


st.setString(1,name);
st.executeUpdate();

con.close();


out.println("details of selected staff has been removed from database");




%>
<br>

<a href="admin.jsp">Back to HomePage</a>

<%
}
%>

</body>
</html>