<%

String name=request.getParameter("t1");
String password=request.getParameter("t2");

session.setAttribute("login1",name);
session.setAttribute("pass1",password);


response.sendRedirect("staff.jsp");

%>