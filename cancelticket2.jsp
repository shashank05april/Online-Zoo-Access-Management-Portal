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



<title> updation </title>

<center><input type="image" src="Wild-Animals3.jpg" align =right height=600 width=1100>
</center>

<table>
<%


String pas=request.getParameter("a1");

DriverManager.registerDriver(new oracle.jdbc.driver.OracleDriver());
Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE","system","shashank");

PreparedStatement st1=con.prepareStatement("select* from registration where LoginID=? and password=?");
st1.setString(1,name);
st1.setString(2,pas);
ResultSet rs1=st1.executeQuery();
if(rs1.next()==true)
{





rs1.close();

PreparedStatement st=con.prepareStatement("select* from ticket where username=?");

st.setString(1,name);

ResultSet rs=st.executeQuery();

while(rs.next())
{
String z=rs.getString(4);
%>

<tr><td><a href="cancelticket3.jsp?t1=<%=z%>">
<%
out.println(z);
%></a> </td></tr>

<%

}
}
else
{
out.println("wrong password, try again!!!");
}
%>
</table>


<%
}
%>
</body>
</html>