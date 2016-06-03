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



<title>Ticket Booking</title>
<form action="ticket1.jsp" method="post">

<table>
<center><h1>Ticket Booking</h1></center>


<tr><td>Visiting Date</td><td><select name=t1 size"">
<option value="1">1
<option value="2">2
<option value="3">3
<option value="4">4
<option value="5">5
<option value="6">6
<option value="7">7
<option value="8">8
<option value="9">9
<option value="10">10
<option value="11">11
<option value="12">12
<option value="13">13
<option value="14">14
<option value="15">15
<option value="16">16
<option value="17">17
<option value="18">18
<option value="19">19
<option value="20">20
<option value="21">21
<option value="22">22
<option value="23">23
<option value="24">24
<option value="25">25
<option value="26">26
<option value="27">27
<option value="28">28
<option value="29">29
<option value="30">30
<option value="31">31
</select>
Month<select name=t4 size"">
<option value="jan">jan
<option value="feb">feb
<option value="march">march
<option value="april">april
<option value="may">may
<option value="june">june
<option value="july">july
<option value="august">august
<option value="september">september
<option value="october">october
<option value="november">november
<option value="december">december
</select>
Year<select name=t5 size"">
<option value="2012">2012
<option value="2013">2013

</select>
</td></tr>


<tr><td>No. Of tickets</td><td><select name=t2 size"">
<option value="1">1
<option value="2">2
<option value="3">3
<option value="4">4
<option value="5">5
<option value="6">6
<option value="7">7
<option value="8">8
<option value="9">9
<option value="10">10
</td></tr>


<tr><td>Time Slot</td><td><select name=t3 size"">
<option value="9:00am to 12:00pm">9:00am to 12:00pm
<option value="12:00pm to 3:00pm">12:00pm to 3:00pm
<option value="3:00pm to 5:30pm">3:00pm to 5:30pm </td></tr>


<tr><td><input type=submit value=BookTicket></td></tr>





<center ><input type="image" src="royalbengaltiger1a.jpg" align="right" width="500" height="500"/></center>

</table>

<br><br> Ticket Cost:- Rs.30


<%
}
%>






</body>
</html>