<%@page language="java" import="java.sql.*"%>


<html>
<body>





  <%
String name=(String)session.getAttribute("login");
if (name==null)
{
out.println("u have not logged IN, sign IN first. and if u have nt registered yet then sign up");
%>
<title>error</title>

<br><br><a href="intro.html">Goto HomePage</a>
<%
}
else
{
%>


<title>ZOO Map</title>


<tr>
      <td width="496">
      <p align="center">
      <img border="0" src="1.jpg" width="59" height="59">
      <img border="0" src="2.jpg" width="59" height="59">
      <img border="0" src="3.jpg" width="59" height="59">
      <img border="0" src="4.jpg" width="59" height="59">
      <img border="0" src="5.jpg" width="59" height="59">
      <img border="0" src="6.jpg" width="59" height="59">
      <img border="0" src="9.jpg" width="59" height="59"></td>
    </tr>

<br>
<br> 

<tr>
<td> Introduction  >> <br><br>

Bharat Ratna Pt. Govind Ballabh Pant High Altitude Zoo Nainital is the only Zoo in the newly born state of Uttarakhand.

It is situated in the hills of Sher ka Danda at about 2 km. from Tallital Bus station at an elevation of 2100 m. above mean sea level and connected by motorable road, where the Mountain quail was last seen in 1876. 

The Zoo was established in 1984 and is spread over an area of 4.693 ha. The Zoo was opened to visitors on 1st June 1995 and is managed by "The Bharat Ratna Pandit Govind Ballabh Pant High Altitude Zoo Management Society Nainital" from 1st March 2002.

Bharat Ratna Pt. G.B. Pant High Altitude Nainital Zoo was established with the objective to conserve and protect the wild life and biodiversity of the hill region of Uttarakhand.

Nainital marks a specific and important place in the international tourism map. This is a favorite visiting place for tourist, student and children. It has established its identity in the field of education, research and as a tourist spot. Nainital zoo is kept completely polythene free according to the demand of present time.
</td> </tr> <br> <br> <br> <br>

<a href="intro.jsp">Goto HomePage</a>



<%
}
%>


</body>
</html>