<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
String id=request.getParameter("id_txt");
String pwd = request.getParameter("pwd_txt");
if(id.equals("sue227") && pwd.equals("12345")){
	response.sendRedirect("index.html");
}else{
	request.setAttribute("msg", "id 또는 password가 틀립니다.");
	
	RequestDispatcher reqDis=request.getRequestDispatcher("/login.jsp");
	reqDis.forward(request, response);

}

%>
<h1>Hello!! <%=id %></h1>
<h1>your password is <%=pwd %></h1>
</body>
</html>