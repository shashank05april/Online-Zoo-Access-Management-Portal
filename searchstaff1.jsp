<%@page language="java" import="java.sql.*"%>
<html>
<body bgcolor="#FF7F50">

<%
String name=(String)session.getAttribute("login2");
if (name==null)
{
out.println("u have not logged IN, sign IN first. and if u have nt registered yet then sign up");
%>
<br><br><a href="intro.html">Goto HomePage</a>
<title>error</title>
<%
}
else
{
%>


<title> displaying all information </title>
<table>

<%
String z=request.getParameter("t1");

DriverManager.registerDriver(new oracle.jdbc.driver.OracleDriver());
Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE","system","shashank");
PreparedStatement st=con.prepareStatement("select* from staff where Name=?");

st.setString(1,z);

ResultSet rs=st.executeQuery();
if (rs.next())
{
%>

<tr><td>Name</td><td>

 <%
out.println(rs.getString(1));
%>

</td></tr>
<tr><td>Age</td><td>

<%
out.println(rs.getString(2));
%> 

</td></tr>
<tr><td>Sexcode</td><td>

<%
out.println(rs.getString(3));
%>  

</td></tr>
<tr><td>Nationality</td><td>

<%
out.println(rs.getString(4));
%>  
</td></tr>
<tr><td>LoginId</td><td>

<%
out.println(rs.getString(5));
%>  
</td></tr>
<tr><td>Pass</td><td>

<%
out.println(rs.getString(6));
%>  
</td></tr>
<br><tr><td><a href="admin.jsp">Goto HomePage</a></td></tr>

<%
}
else
{
out.println("name of staff you have entered does not match with any staff's information currently stored in database. TRY again!!!");


%>

<br><br><a href="searchstaff.jsp">Back</a>
<br><br><a href="admin.jsp">Goto HomePage</a>
<%
}
}
%>
</table>
</body>
</html>


