<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"  %>
<%@ page import="com.codechobo.Cookies" %>
<%@ page import="java.net.URLDecoder" %>
<%
request.setCharacterEncoding("utf-8");
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" type="text/css" href="indexStyle.css">
<link rel="stylesheet" type="text/css" href="loginStyle.css">
</head>

<body>
<%
String msg = (String)request.getAttribute("msg");
if(msg != null){
%>

	<label><b><%=msg%></b></label>
	<%} 
	String value="";%>
	<!-- 헤더 -->
	<jsp:include page="commons/header.jsp"></jsp:include>
	<!-- 컨텐츠 -->
	<div class="login_img">
		<img src="img\post.jpg">
	</div>
	<div id="login_content">
		<span id="login_tit">
			<h1>로그인</h1>
		</span>
		<!-- id, pwd 입력창 -->
		<form id="form" action="<%= request.getContextPath()%>/loginAction" method="post"><!-- /MyHomepage --><%-- <%= request.getContextPath()%> --%>
			<div id="login_div">
				<div>	
					<h2>MEMBER LOGIN</h2>
					<br> 아이디&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;	
					<%
					//쿠키가 있을 경우 id text value값 가져오기	
					Cookies cookies= new Cookies(request);
					if(cookies.exists("ID")) {
						value=cookies.getValue("ID");
					}
					%>	
					<input type="text" name="id_txt" value="<%=value %>" ><br> <br>	
							
					비밀번호&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="password" name="pwd_txt">
					<br>
					<input type="checkbox" id="check_autoLogin"  name="check_autoLogin">아이디저장
				</div>
				<div>
					
				</div>
				<div>
					<button class="login_button">Login</button>
				</div>
			</div>


		</form>
		<!-- 부가메뉴 -->
		<div class="login_more">
			<a href="#">비밀번호를 잊어버리셨습니까?</a><br>
			<a href="/joinMemberAgreement.jsp">회원가입을 하시겠습니까?</a>
		</div>
	</div>

	<!-- 푸터  -->
	<jsp:include page="commons/footer.jsp"></jsp:include>
</body>

</html>