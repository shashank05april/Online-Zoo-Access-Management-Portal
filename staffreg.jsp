<html>
<head>
<title>registration form</title></head>

<body bgcolor="#336666">
<%
String name=(String)session.getAttribute("login2");
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




<form action="staffreg1.jsp">


<CENTER><h1> STAFF REGISTRATION FORM</h1></CENTER>
<table align="right" cellpadding="5" cellspacing="7" border="5" >
<center><input type="image" src="kidsworld1.gif" align="left" width="850" height="550" />
</center>

<tr><td><font color="red">Name</font> </td><td><input type="text" name="n1"></td></tr>
<tr><td>Age</td><td><input type="text" name="n2"></td></tr>
<tr><td>Sexcode:</td><td><input type="radio" name="n3" value="Male">Male<br>
<input type="radio" name="n3" value="Female">Female</td></tr> 
<tr><td>Nationality</td><td><select name="n4" size=""> 
<option value="INDIA">india
<option value="U.K">u.k
<option value="U.S">u.s
<option value="BRAZIL">brazil
<option value="CANADA">canada </td></tr>
<tr><td>LoginId</td><td><input type=text name="n5"></td></tr>
<tr><td>password</td><td><input type="password" name="n6" ></td></tr>
<tr><td><input type="submit" value="register"></td></tr>

</table>
<a href="admin.jsp">cancel registration and go back to home page</a>
</form>

<%
}
%>

</body>
</html>