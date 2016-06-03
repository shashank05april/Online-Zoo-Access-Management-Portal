<%@page language="java" import="java.sql.*"%>

<html>
<body>
<title>ZOO Map</title>

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


<title>ZOO Map</title>




<tr>
      <td width="496">
      <p align="center">
      <img border="0" src="1.jpg" width="59" height="59">
      <img border="0" src="2.jpg" width="59" height="59">
      <img border="0" src="3.jpg" width="59" height="59">
      <img border="0" src="4.jpg" width="59" height="59">
      <img border="0" src="5.jpg" width="59" height="59">
      <img border="0" src="6.jpg" width="59" height="59">
      <img border="0" src="9.jpg" width="59" height="59"></td>
    </tr>

<br>
<br> 

<tr>
<td> <p align="center"> <img src="29.jpg" width=500 height=450>
</td> </tr>
<table><tr><td><p align="left"> <a href="intro.jsp">Goto HomePage</a></p></td></tr></table>


<%
}
%>






</body>
</html>