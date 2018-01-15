<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" type="text/css" href="Style.css">
<link rel="stylesheet" type="text/css" href="Style2.css">
<script src="jsFun.js"></script>
</head>

<body>
	<%
String msg = (String)request.getAttribute("msg");
if(msg != null){
%>
	<label><b><%=msg%></b></label>
	<%} %>
	<!-- 헤더 -->
	<jsp:include page="header.jsp"></jsp:include>
	<!-- 컨텐츠 -->
	<div class="login_img">
		<img src="F:\BitCamp\img\post.JPG">
	</div>
	<div id="login_content">
		<span id="login_tit">
			<h1>로그인</h1>
		</span>
		<!-- id, pwd 입력창 -->
		<form id="form" action="/loginAction.jsp" method="post">
			<div id="login_div">
				<div>
					<h2>MEMBER LOGIN</h2>
					<br> 아이디&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <input
						type="text" name="id_txt" value="your id."> <br> <br>
					비밀번호&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="password" name="pwd_txt">
					<br>
					<input type="checkbox" id="check_autoLogin" name="check_autoLogin"
						value="check_autoLogin">자동로그인

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
			<a href="#">비밀번호를 잊어버리셨습니까?</a><br> <a href="#">회원가입을
				하시겠습니까?</a>
		</div>
	</div>

	<!-- 푸터  -->
	<jsp:include page="footer.jsp"></jsp:include>
</body>

</html>