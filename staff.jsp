<%@page language="java" import="java.sql.*"%>
<html>
<title>login page</title>
<body bgcolor="#336666" link="black" vlink="black" alink="black">

<center><input type="image" src="wild-life-wallpaper-1440x900-0070.jpg" align="right" width=900 height=500>
</center>

<%
String name=(String)session.getAttribute("login1");
String pass=(String)session.getAttribute("pass1");





DriverManager.registerDriver(new oracle.jdbc.driver.OracleDriver());
Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE","system","shashank");
PreparedStatement st=con.prepareStatement("select* from staff where LoginId=? and Password=?");
st.setString(1,name);
st.setString(2,pass);
ResultSet rs=st.executeQuery();

if(rs.next()==true)
{


out.println("welcome, you have successfully logged in");
%>
<br> <br>
<a href="add.jsp">animal addition</a> <br> <br>
<a href="del.jsp">animal deletion</a> <br> <br>
<a href="update01.jsp">animal updatation</a> <br> <br>
<a href="logoutstaff.jsp">logout</a> <br> <br>
<%
}

else
{
out.println("sorry, userid u hav entered doesnt exist or password is wrong");
}
%>

</body>
</html>