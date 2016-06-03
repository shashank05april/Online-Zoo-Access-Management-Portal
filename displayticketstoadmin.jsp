<%@page language="java" import="java.sql.*"%>
<html>
<body>

<%
String name=(String)session.getAttribute("login2");
if (name==null)
{
out.println("you have not signed in. sign in first!!!");
%>
<br><br><a href="intro.html">Goto HomePage</a>
<%
}
else
{
%>



<title> Display-Ticket Page </title>

<center><input type="image" src="MFT00216.JPG" align =right height=600 width=1100>
</center>

<table>
<%


DriverManager.registerDriver(new oracle.jdbc.driver.OracleDriver());
Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE","system","shashank");
PreparedStatement st=con.prepareStatement("select distinct visitingdate from ticket");



ResultSet rs=st.executeQuery();

while(rs.next())
{
String z=rs.getString(1);
%>

<tr><td><a href="displayticketstoadmin1.jsp?t1=<%=z%>">
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