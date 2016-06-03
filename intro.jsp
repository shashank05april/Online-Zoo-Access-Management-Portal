<%@page language="java" import="java.sql.*"%>
<html>
<body>
<title>User Page</title>

<div align="center">
  <%
String name=(String)session.getAttribute("login");
String pass=(String)session.getAttribute("pass");
session.setAttribute("username",name);

DriverManager.registerDriver(new oracle.jdbc.driver.OracleDriver());
Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE","system","shashank");
PreparedStatement st=con.prepareStatement("select* from registration where LoginId=? and Password=?");

st.setString(1,name);
st.setString(2,pass);

ResultSet rs=st.executeQuery();

if(rs.next()==true)
{

%>
Welcome To My Zoo WORLD<br><br><br>
<img src="royalbengaltiger.jpg" alt="" width="650" height="350" align="right" ">
<table >

<td> <tr><a href="introduction.jsp">Introduction</a></tr></td><br><br>

<td> <tr><a href="zoomap.jsp">Zoo Map</a></tr></td><br><br>
<td> <tr><a href="photogallery.jsp">Photo Gallery</a></tr></td><br><br>
<td> <tr><a href="ticket.jsp">Online Ticket Booking</a></tr></td><br><br>
<td> <tr><a href="cancelticket1.jsp">Cancel Ticket</a></tr></td><br><br>
<td> <tr><a href="displayticket.jsp">Display Ticket</a></tr></td><br><br>
<td> <tr><a href="displayhistory.jsp">Booked History</a></tr></td><br><br>
<td> <tr><a href="cancelledhistory.jsp">Cancelled History</a></tr></td><br><br>

<td> <tr><a href="logoutintro.jsp">Logout</a></tr></td><br><br>
<p>&nbsp;</p>
<p>&nbsp;</p>
<p>Remains closed on Monday,Holi,Diwali </p>
<p>TIMINGS: 8:30am to 5:30pm </p>
<%
}

else
{
out.println("sorry, you have entered wrong ID or password, TRY AGAIN!!!");
}


%>
</div>


</table>

</body>
</html>
