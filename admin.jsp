<%@page language="java" import="java.sql.*"%>
<html>
<body background="lions-12d.jpg" link="black" vlink="black" alink="black">
<head>
<title>admin homepage</title>
</head>



<%
String name=(String)session.getAttribute("login2");
String pass=(String)session.getAttribute("pass2");


DriverManager.registerDriver(new oracle.jdbc.driver.OracleDriver());
Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE","system","shashank");
PreparedStatement st=con.prepareStatement("select* from admin where LoginId=? and Password=?");

st.setString(1,name);
st.setString(2,pass);

ResultSet rs=st.executeQuery();

if(rs.next()==true)
{
out.println("Welcome Admin, you have successfully logged in");
%>
<br> <br>
<b><a href="staffreg.jsp" > Staff Registration</a></b> <br> <br><br> <br>
<b><a href="staffupdate1.jsp">Staff Updation</a> <b><br> <br><br> <br>
<b><a href="staffdel.jsp">Staff Deletion</a> </b><br> <br><br> <br>
<b><a href="staffdisplay.jsp">Staff Display</a> </b><br> <br><br> <br>
<b><a href="searchstaff.jsp">Staff Search</a> </b><br> <br><br> <br>
<b><a href="displayticketstoadmin.jsp">Display all Tickets</a> </b><br> <br><br> <br>
<b><a href="displaybycode.jsp">Display all Tickets by CODE</a> </b><br> <br><br> <br>
<b><a href="searchbydate.jsp">Search by Date</a> </b><br> <br><br> <br>
<b><a href="logoutadmin.jsp">Logout</a></b>


<%
}

else
{
out.println("sorry, either the ID or password is invalid. TRY AGAIN");
}

%>

</body>
</html>