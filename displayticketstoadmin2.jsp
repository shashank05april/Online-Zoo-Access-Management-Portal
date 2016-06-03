<%@page language="java" import="java.sql.*"%>
<html>
<body bgcolor="#FF7F50">

<%
String name=(String)session.getAttribute("login2");
if (name==null)
{
out.println("you have not signed in. sign in first!!!");
%>
<br><br><a href="intro.html">Goto HomePage</a>
<%
}
else
{
%>



<title> displaying all information </title>
<table width=100% height="300">
<tr><td>Visiting Date</td><td>No. of tickets</td><td>slot time</td><td>Code</td><td>LoginId</td></tr>

<%
String z=request.getParameter("t2");
String z1=request.getParameter("t3");
DriverManager.registerDriver(new oracle.jdbc.driver.OracleDriver());
Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE","system","shashank");
PreparedStatement st=con.prepareStatement("select* from ticket where username=? and visitingdate=?");

st.setString(1,z);
st.setString(2,z1);

ResultSet rs=st.executeQuery();
if(rs.next()==true)
{
%>

<tr><td>

 <%
out.println(rs.getString(1));
%>

</td><td>

<%
out.println(rs.getString(2));
%> 

</td><td>

<%
out.println(rs.getString(3));
%>  

</td><td>

<%
out.println(rs.getString(4));
%>  
</td><td>

<%
out.println(rs.getString(5));
%>  
</td></tr>


<%
}
%>
</table>

<a href="admin.jsp">Goto HomePage</a>

<%
}
%>

</body>
</html>


