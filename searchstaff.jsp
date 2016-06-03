<%@page language="java" import="java.sql.*"%>
<html>
<body>


 <%
String name=(String)session.getAttribute("login2");
if (name==null)
{
out.println("u have not logged IN, sign IN first. ");
%>
<br><br><a href="intro.html">Goto HomePage</a>
<title>error</title>
<%
}
else
{
%>



<title>Search by Name</title>
<form action="searchstaff1.jsp" method="post">

<table>
<center><h1>Search Staff Member</h1></center>

<tr><td>Enter Name of staff member</td><td><input type=text name=t1>

</td></tr>

<tr><td align="left"><input type="submit" value="SUBMIT"/></td></tr>

<%
}
%>

</table>
</body>
</html>