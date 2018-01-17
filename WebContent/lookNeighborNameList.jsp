<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<!-- 헤더 -->
	<jsp:include page="commons/header.jsp"></jsp:include>
<!-- 컨텐츠 -->
<%/* 로그인 되었는지 확인 */
String memberID = (String)session.getAttribute("ID");
log(memberID);
boolean login = memberID == null? false: true;
System.out.println(login);
%>

<%if(login){%> <!-- 로그인 되어 있지 않은 경우 -->
                로그인이 되었을 때만 보여집니다.
<%}else{ /* 로그인 되어 있는 경우*/
      response.sendRedirect("login.jsp");
		}%>
	<!-- 푸터  -->
	<jsp:include page="commons/footer.jsp"></jsp:include>
</body>
</html>