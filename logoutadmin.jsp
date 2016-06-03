

<%

session.setAttribute("login","");
session.setAttribute("pass","");
session.setAttribute("name","");
session.invalidate();
response.sendRedirect("intro.html");

%>
