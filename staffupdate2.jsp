<%@page language="java" import="java.sql.*"%>

<html>
<body bgcolor="#FF7F50">

<%
String a=(String)session.getAttribute("login2");
if (a==null)
{
out.println("u have not logged IN, sign IN first. and if u have nt registered yet then sign up");
%>
<br><br><a href="intro.html">Goto HomePage</a>
<%
}
else
{
%>


<title>
 staff updation
</title>

<form action="staffupdate3.jsp" method="post">
<table width=100% height="290">
<%

String staff=request.getParameter("t1");
session.setAttribute("name",staff);



DriverManager.registerDriver(new oracle.jdbc.driver.OracleDriver());
Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE","system","shashank");
PreparedStatement st=con.prepareStatement("select* from staff where Name=?");

st.setString(1,staff);

ResultSet rs=st.executeQuery();
if (rs.next()==true)
{

%>
<tr><td>Name:    </td> <td>
<input type="text" name="q1" value=" <%
out.println(rs.getString(1));
%> " ></td> </tr> 


<tr><td>Age     </td> <td>
<input type="text" name="q2" value="<%
out.println(rs.getString(2));
%>"> </td> </tr> 


<tr><td>Sexcode </td> <td>
<input type="text" name="q3" value="<%
out.println(rs.getString(3));
%>"> </td> </tr> 


<tr><td>Nationality </td> <td>
<input type="text" name="q4" value="<%
out.println(rs.getString(4));
%>"> </td> </tr> 


<tr> <td>LoginID  </td> <td>
<input type="text" name="q5" value="<%
out.println(rs.getString(5));
%>"> </td> </tr> 




<tr><td>Password  </td> <td>
<input type="text" name="q6" value=<%
out.println(rs.getString(6));

}  




else
{
out.println("sorry");

}

%> 
</td></tr>
<tr><td><input type="submit" value="update"></td></tr>

</table>
</form>

<%
}
%>

</body>
</html>

