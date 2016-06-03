<%

String name=request.getParameter("t1");
String password=request.getParameter("t2");

session.setAttribute("login2",name);
session.setAttribute("pass2",password);


response.sendRedirect("admin.jsp");

%>