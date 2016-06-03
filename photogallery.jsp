<%@page language="java" import="java.sql.*"%>

<html>
<body>

<%
String name=(String)session.getAttribute("login");
if(name==null)
{
out.println("u have not logged IN, sign IN first. and if u have nt registered yet then sign up");
%>

<br><br><a href=intro.html>Goto Homepage</a>
<title>error</title>

<%
}
else
{
response.sendRedirect("photoviewer/bin/PhotoViewer.html");
}
%>

</body>
</html>