<%@page language="java" import="java.sql.*"%>

<html>
<body >


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




<title>Ticket has been Booked</title>
<center><input type="image" src=tig5s.jpg align="right" width=700 height=500></center>

<%

String user=(String)session.getAttribute("username");
String z=request.getParameter("t1");
String z1=request.getParameter("t4");
String z2=request.getParameter("t5");
String tno="";
String date=z+"-"+z1+"-"+z2;
String ticketnumbers=request.getParameter("t2");
String slottime=request.getParameter("t3");
int b;

int a=Integer.parseInt(ticketnumbers);

DriverManager.registerDriver(new oracle.jdbc.driver.OracleDriver());
Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE","system","shashank");

PreparedStatement st20=con.prepareStatement("select* from cancelledhistory where username=? and visitingdate=?");
st20.setString(1,user);
st20.setString(2,date);
ResultSet rs20=st20.executeQuery();
if(rs20.next()==true)
{
out.println("you cant book tickets for the date for which you have already cancelled  tickets"); 
}
else
{

PreparedStatement st0=con.prepareStatement("select* from ticket where username=? and visitingdate=?");
st0.setString(1,name);
st0.setString(2,date);
ResultSet rs0=st0.executeQuery();
	if(rs0.next()==true)
	{
out.println("sorry, you have already booked ticket for the same date!!!  you can't book tickets twice for the same day");
%>
<br><br><a href="ticket.jsp">Back</a>
<%
	}
	else
	{

rs0.close();

PreparedStatement st9=con.prepareStatement("select* from maxticket where visitingdate=?");
st9.setString(1,date);
ResultSet rs9=st9.executeQuery();

		if(rs9.next()==true)
		{


b=Integer.parseInt(rs9.getString(1))+a;
			if(b<=110)
			{

PreparedStatement st7=con.prepareStatement("update maxticket set ticketno=? where visitingdate=?");
st7.setInt(1,b);
st7.setString(2,date);
st7.executeUpdate();



PreparedStatement st=con.prepareStatement("select code from ticketno");
ResultSet rs=st.executeQuery();

if (rs.next()==true)
{
tno=rs.getString(1);
}

rs.close();





PreparedStatement st1=con.prepareStatement("insert into ticket values(?,?,?,?,?)");

st1.setString(1,date);
st1.setString(2,ticketnumbers);
st1.setString(3,slottime);
st1.setString(4,tno);
st1.setString(5,name);

st1.executeUpdate(); 



PreparedStatement st4=con.prepareStatement("insert into history values(?,?,?,?,?)");

st4.setString(1,date);
st4.setString(2,ticketnumbers);
st4.setString(3,slottime);
st4.setString(4,tno);
st4.setString(5,name);

st4.executeUpdate();


%>
Ticket booked!!! <br><br>



<tr><td>Visiting Date:- </td><td>

 <%
out.println(date);
%>

</td></tr><br><br>
<tr><td>No. of Tickets:- </td><td>

<%
out.println(ticketnumbers);
%> 

</td></tr><br><br>
<tr><td>Slot Time:- </td><td>

<%
out.println(slottime);
%>  

</td></tr><br><br>
<tr><td>Code:- </td><td>

<%
out.println(tno);
%>  
</td></tr><br><br>

<tr><td>Amount Payable:- Rs.</td><td>

<%

out.println(a*30);
%>
</td></tr>

<br><br>

<%







PreparedStatement st3=con.prepareStatement("update ticketno set code=code + 1");
st3.executeUpdate();

%>




<a href="intro.jsp">Goto HomePage</a>
<%
}
else
{
out.println("sorry, all tickets sold :p");
%>
<br><br><a href="ticket.jsp">Book tickets for another date</a>
<br><br><a href="intro.jsp">Goto HomePage</a>
<%
}
}
else
{
b=Integer.parseInt(ticketnumbers);
PreparedStatement st10=con.prepareStatement("insert into maxticket values(?,?)");
st10.setInt(1,b);
st10.setString(2,date);
st10.executeUpdate();

PreparedStatement st11=con.prepareStatement("select code from ticketno");
ResultSet rs11=st11.executeQuery();

if (rs11.next()==true)
{
tno=rs11.getString(1);
}

rs11.close();





PreparedStatement st12=con.prepareStatement("insert into ticket values(?,?,?,?,?)");

st12.setString(1,date);
st12.setString(2,ticketnumbers);
st12.setString(3,slottime);
st12.setString(4,tno);
st12.setString(5,name);

st12.executeUpdate(); 



PreparedStatement st13=con.prepareStatement("insert into history values(?,?,?,?,?)");

st13.setString(1,date);
st13.setString(2,ticketnumbers);
st13.setString(3,slottime);
st13.setString(4,tno);
st13.setString(5,name);

st13.executeUpdate();


%>
Ticket booked!!! <br><br>



<tr><td>Visiting Date:- </td><td>

 <%
out.println(date);
%>

</td></tr><br><br>
<tr><td>No. of Tickets:- </td><td>

<%
out.println(ticketnumbers);
%> 

</td></tr><br><br>
<tr><td>Slot Time:- </td><td>

<%
out.println(slottime);
%>  

</td></tr><br><br>
<tr><td>Code:- </td><td>

<%
out.println(tno);
%>  
</td></tr><br><br>

<tr><td>Amount Payable:- Rs.</td><td>

<%

out.println(a*30);
%>
</td></tr>

<br><br>
<a href="intro.jsp">Goto HomePage</a>

<%







PreparedStatement st15=con.prepareStatement("update ticketno set code=code + 1");
st15.executeUpdate();




}
}
}
rs20.close();
}
%>

</body>
</html>