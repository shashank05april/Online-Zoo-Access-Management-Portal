<%@page language="java" import="java.sql.*"%>

<html>
<body>
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


<title> Enter Password
</title>
<form action="cancelticket2.jsp" method=post>
<table>  
<tr>
<td>

Enter Password</td>
<td><input type=password name="a1">
</td></tr> 

<br><br>

<tr><td><input type=submit name="OK"></td></tr>

</table>


<%
}
%>
</body>
</html>

