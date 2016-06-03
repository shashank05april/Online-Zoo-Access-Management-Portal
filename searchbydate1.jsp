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
String z1=request.getParameter("t2");
String z2=request.getParameter("t3");

String date=z+"-"+z1+"-"+z2;

DriverManager.registerDriver(new oracle.jdbc.driver.OracleDriver());
Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE","system","shashank");
PreparedStatement st=con.prepareStatement("select* from ticket where visitingdate=?");

st.setString(1,date);

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
else
{
out.println("no booking has been made for the date you have entered");
}
%>
</table>

<a href="admin.jsp">Goto HomePage</a>

<%
}
%>

</body>
</html>


