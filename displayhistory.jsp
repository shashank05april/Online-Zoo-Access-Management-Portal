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


DriverManager.registerDriver(new oracle.jdbc.driver.OracleDriver());
Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE","system","shashank");
PreparedStatement st=con.prepareStatement("select* from history where username=?");

st.setString(1,name);

ResultSet rs=st.executeQuery();

while(rs.next())
{
String z=rs.getString(4);
%>

<tr><td><a href="displayhistory1.jsp?t1=<%=z%>">
<%
out.println(z);
%></a> </td></tr>

<%

}

%>
</table>

<%
}
%>

</body>
</html>