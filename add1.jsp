<%@page language="java" import="java.sql.*"%>
<html>
<body>

<%
try
{
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

<title>login page</title>

<table width=10%> <td><center><input type="image" src="Wild-Animals-3.jpg" height=500 width=900> </center> </td></table>

<%
String Animal=request.getParameter("n1");
String AnimalID=request.getParameter("n2");
String CageNumber=request.getParameter("n3");
String Location=request.getParameter("n4");
String Age=request.getParameter("n5");
String BroughtFrom=request.getParameter("n6");
String Sexcode=request.getParameter("n7");



DriverManager.registerDriver(new oracle.jdbc.driver.OracleDriver());
Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE","system","shashank");
PreparedStatement st=con.prepareStatement("insert into animal values(?,?,?,?,?,?,?)");
st.setString(1,Animal);
st.setString(2,AnimalID);
st.setString(3,CageNumber);
st.setString(4,Location);
st.setString(5,Age);
st.setString(6,BroughtFrom);
st.setString(7,Sexcode);



st.executeUpdate();

%>
new animal has been added <br><br>

<a href="staff.jsp">Back to HomePage</a> <br>
<a href="add.jsp">Add another new animal to database</a>

<%
}
}

catch(Exception e)
{
out.println("sorry, the animal ID you have entered has already been  allotted for another animal. TRY AGAIN!!!");

%>
<br><br><a href="add.jsp"> add animal with another unique ID</a>
<br><br><a href="staff.jsp"> back to Home Page</a>
<%
}


%>

</body>
</html>