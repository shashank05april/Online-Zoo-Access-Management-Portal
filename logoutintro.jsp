

<%

session.setAttribute("login","");
session.setAttribute("pass","");
session.setAttribute("username","");
session.invalidate();
response.sendRedirect("intro.html");

%>
