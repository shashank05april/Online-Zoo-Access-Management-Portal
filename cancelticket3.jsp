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




<title>
Ticket Cancelled</title>

<center><input type="image" src="wild_animal_look_640_12.jpg" width=700 height=500></center>

<%



String ticket=request.getParameter("t1");


DriverManager.registerDriver(new oracle.jdbc.driver.OracleDriver());
Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE","system","shashank");



PreparedStatement st2=con.prepareStatement("select* from ticket where code=?");
st2.setString(1,ticket);
ResultSet rs=st2.executeQuery();
if(rs.next()==true)
{
String date=rs.getString(1);
int noticket=rs.getInt(2);
String slottime=rs.getString(3);
String code=rs.getString(4);
String username=rs.getString(5);







PreparedStatement st1=con.prepareStatement("insert into cancelledhistory values(?,?,?,?,?)");
st1.setString(1,date);
st1.setInt(2,noticket);
st1.setString(3,slottime);
st1.setString(4,code);
st1.setString(5,username);
st1.executeUpdate();





PreparedStatement st=con.prepareStatement("delete from ticket where code=?");


st.setString(1,ticket);
st.executeUpdate();




out.println("Tickets has been cancelled");


PreparedStatement st4=con.prepareStatement("update maxticket set ticketno=ticketno - ? where visitingdate=?");
st4.setInt(1,noticket);
st4.setString(2,date);
st4.executeUpdate();


}

%>
<br>

<a href="intro.jsp">Back to HomePage</a>
<%
}
%>
</body>
</html>