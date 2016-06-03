<%@page language="java" import="java.sql.*"%>
<html>
<body bgcolor="#FF7F50">

<%
String name=(String)session.getAttribute("login");
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

<title> displaying all information </title>
<table>

<%
String z=request.getParameter("t1");

DriverManager.registerDriver(new oracle.jdbc.driver.OracleDriver());
Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE","system","shashank");
PreparedStatement st=con.prepareStatement("select* from history where code=?");

st.setString(1,z);

ResultSet rs=st.executeQuery();
if (rs.next())
{
%>

<tr><td>Visiting Date:-</td><td>

 <%
out.println(rs.getString(1));
%>

</td></tr>
<tr><td>No. of Tickets:-</td><td>

<%
out.println(rs.getString(2));
%> 

</td></tr>
<tr><td>Slot time:-</td><td>

<%
out.println(rs.getString(3));
%>  

</td></tr>
<tr><td>code:-</td><td>

<%
out.println(rs.getString(4));
%>  
</td></tr>




<%
}
%>
</table>

<a href="intro.jsp">Goto HomePage</a>

<%
}
%>

</body>
</html>


