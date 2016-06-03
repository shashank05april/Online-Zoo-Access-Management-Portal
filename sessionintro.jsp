
<%

String LoginID=request.getParameter("t1");
String Pass=request.getParameter("t2");

session.setAttribute("login",LoginID);
session.setAttribute("pass",Pass);

response.sendRedirect("intro.jsp");

%>