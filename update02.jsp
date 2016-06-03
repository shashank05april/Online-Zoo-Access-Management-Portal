<%@page language="java" import="java.sql.*"%>

<html>

<title>
updation
</title>
<body bgcolor="#FF7F50">

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

<form action="update03.jsp" method="post">
<table width=100% height="290">
<%

String animal=request.getParameter("t1");
session.setAttribute("name",animal);



DriverManager.registerDriver(new oracle.jdbc.driver.OracleDriver());
Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE","system","shashank");
PreparedStatement st=con.prepareStatement("select* from animal where Name=?");

st.setString(1,animal);

ResultSet rs=st.executeQuery();
if (rs.next()==true)
{

%>
<tr><td>Name:    </td> <td>
<input type="text" name="q1" value=" <%
out.println(rs.getString(1));
%> " ></td> </tr> 


<tr><td>Animal ID No.     </td> <td>
<input type="text" name="q2" value="<%
out.println(rs.getString(2));
%>"> </td> </tr> 


<tr><td>Cage No. </td> <td>
<input type="text" name="q3" value="<%
out.println(rs.getString(3));
%>"> </td> </tr> 


<tr><td>Location </td> <td>
<input type="text" name="q4" value="<%
out.println(rs.getString(4));
%>"> </td> </tr> 


<tr> <td>Age  </td> <td>
<input type="text" name="q5" value="<%
out.println(rs.getString(5));
%>"> </td> </tr> 




<tr><td>Brought from  </td> <td>
<input type="text" name="q6" value="<%
out.println(rs.getString(6));

}  




else
{
out.println("sorry");

}

%> 
">
<tr><td><input type="submit" value="update"></td></tr>

</table>
</form>

<%
}
%>

</body>
</html>

