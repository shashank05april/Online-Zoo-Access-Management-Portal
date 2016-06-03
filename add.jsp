<%@page language="java" import="java.sql.*"%>
<html>
<head>
<title>Addition of new animal</title></head>

<body bgcolor="#336666">
<%
String name=(String)session.getAttribute("login1");
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


<form action="add1.jsp">


<CENTER><h1>Addition Form</h1></CENTER>
<table align="right" cellpadding="5" cellspacing="7" border="5" >
<center><input type="image" src="kidsworld1.gif" align="left" width="850" height="550" />
</center>

<tr><td><font color="red">Animal</font> </td><td><input type="text" name="n1"></td></tr>

<tr><td>Animal No.</td><td><input type="text" name="n2"></td></tr>

<tr><td>Cage No.</td><td><input type="text" name="n3"></td></tr>



<tr><td>Location</td><td><select name="n4" size=""> 
<option value="sector 1">sector 1
<option value="sector 2">sector 2
<option value="sector 3">sector 3
<option value="sector 4">sector 4
<option value="sector 5">sector 5 </td></tr>

<tr><td>Age </td><td><input type="text" name="n5"></td></tr>

<tr><td>Brought from</td><td><input type="text" name="n6" ></td></tr>

<tr><td>Sexcode</td><td><input type="radio" name="n7" value="Male">Male<br>
<input type="radio" name="n7" value="Female">Female</td></tr> 

<tr><td><input type="submit" value="ADD"></td></tr>

</table>

</form>

<%
}
%>

</body>
</html>