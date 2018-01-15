<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
     <meta charset="UTF-8">
<!--    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Soyoung</title> -->
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

        <div>
                <div class="main_first_menu_div">
                    <ul>
                        <!-- 로고  -->
                        <li id="logo" class="main_first_menu">
                            <a href="index.jsp">
                                <img src="F:\BitCamp\img\logo7.png">
                            </a>
                        </li>
                        <!-- 첫번째 메뉴 -->
                        <li class="main_first_menu">NEIGHBOR
                            <div class="main_first_small_menu">
                                <a href="#">이웃새글</a>
                                <a href="#">이웃보기</a>
                            </div>
                        </li>
                        <li class="main_first_menu">LOOK POST
                            <div class="main_first_small_menu">
                                <a href="#">전체보기</a>
                                <a href="#">카테고리별 보기</a>
                            </div>
                        </li>
                        <li class="main_first_menu">WRITE POST
                            <div class="main_first_small_menu">
                                <a href="#">포스트 쓰기</a>
                                <a href="#">메일 보내기</a>
                            </div>
                        </li>
                        <li class="main_first_menu">SETTING
                            <div class="main_first_small_menu">
                                <a href="#">설정</a>
                                <a href="#">관리 / 통계</a>
                            </div>
                        </li>
                        <li class="main_first_menu">
                            <a href="login.html">
                                <img src="F:\BitCamp\img\login.png">
                            </a>
                        </li>
                        <li class="main_first_menu">
                            <a href="#">
                                <img src="F:\BitCamp\img\search.png">
                            </a>
                        </li>
                    </ul>
                </div>
            </div>
    <!-- 컨텐츠 -->
    <div class="login_img">
            <img src="F:\BitCamp\img\post.JPG">
    </div>
    <div id="login_content">
        <span id="login_tit">
            <h1>로그인</h1>
        </span>
        <!-- id, pwd 입력창 -->
        <form id="form" action="HelloJsp.jsp" method="post">
        <div id="login_div">
            <div>
                <h2>MEMBER LOGIN</h2>
                <br> 아이디&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
                         
                <input type="text" name="id_txt" value="your id.">
                <br>
                <br> 비밀번호&nbsp;&nbsp;&nbsp;&nbsp;
                <input type="text" name="pwd_txt" value="your passowrd.">                       
            </div>
            <div>
                <button class="login_button">Login</button>
            </div>             
        </div>
        </form> 
        <!-- 부가메뉴 -->
        <div class="login_more">
            <a href="#">비밀번호를 잊어버리셨습니까?</a>
            <a href="#"></a>
        </div>
    </div>

	<!-- 푸터  -->
    <footer>
        <div class="footer">
            <div id="footer_align">
                <div class="footer_menu_col">
                    <ul>
                        <li>mySoyoung</li>
                        <br>
                        <div class="footer_menu">
                            <a href="#">내 계정</a>
                            <a href="#">내 관심목록</a>
                        </div>
                    </ul>
                </div>
                <div class="footer_menu_col">
                    <ul>
                        <li>포스트</li>
                        <br>
                        <div class="footer_menu">
                            <a href="#">포스트 삭제 요청</a>
                            <a href="#">포스트 검색</a>
                        </div>
                    </ul>
                </div>
                <div class="footer_menu_col">
                    <ul>
                        <li>sns공유</li>
                        <br>
                        <div id="footer_menu_sns">
                            <a href="#">
                                <img src="F:\BitCamp\img\facebook.png">
                            </a>
                            <a href="#">
                                <img src="F:\BitCamp\img\twitter.png">
                            </a>
                            <a href="#">
                                <img src="F:\BitCamp\img\pinterest.png">
                            </a>
                        </div>
                    </ul>
                </div>
            </div>
            <div class="footer_content">
                <p>2017 &copy; Soyong All rights reserved.</p>
            </div>
        </div>
    </footer>
</body>

</html>