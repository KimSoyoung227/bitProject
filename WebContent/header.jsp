<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
   <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Soyoung</title>
    <link rel="stylesheet" type="text/css" href="Style.css">
    <script src="jsFun.js"></script>
</head>
<body>
<div>
        <div class="main_first_menu_div">
            <ul>
                <!-- 로고 -->
                <li id="logo" class="main_first_menu">
                    <a href="index.jsp">
                        <img src="F:\BitCamp\img\logo7.png">
                    </a>
                </li>
                <!-- 메뉴 -->
                <li class="main_first_menu">NEIGHBOR
                    <div class="main_first_small_menu">
                        <a href="#">이웃새글</a>&nbsp;&nbsp;&nbsp;&nbsp;|&nbsp;&nbsp;&nbsp;
                        <a href="#">이웃보기</a>
                    </div>
                </li>
                <li class="main_first_menu">LOOK POST
                    <div class="main_first_small_menu">
                        <a href="#">전체보기</a>&nbsp;&nbsp;&nbsp;&nbsp;|&nbsp;&nbsp;&nbsp;
                        <a href="#">카테고리별 보기</a>
                    </div>
                </li>
                <li class="main_first_menu">WRITE POST
                    <div class="main_first_small_menu">
                        <a href="#">포스트 쓰기</a>&nbsp;&nbsp;&nbsp;&nbsp;|&nbsp;&nbsp;&nbsp;
                        <a href="#">메일 보내기</a>
                    </div>
                </li>
                <li class="main_first_menu">SETTING
                    <div class="main_first_small_menu">
                        <a href="#">설정</a>&nbsp;&nbsp;&nbsp;&nbsp;|&nbsp;&nbsp;&nbsp;
                        <a href="#">관리 / 통계</a>
                    </div>
                </li>
                <!-- 로그인 -->
                <li class="main_first_menu">
                    <a href="login.jsp">
                        <img src="F:\BitCamp\img\login.png">
                    </a>
                </li>
                <!-- 검색 -->
                <li class="main_first_menu">
                    <a href="#">
                        <img src="F:\BitCamp\img\search.png">
                         <div id="main_first_search">
                        	<input type="text" value="insert content." name="search_txt">
                        	<input type="submit" value = "search" name="search_btn" id="search_btn">
                    	</div>
                    </a>
                </li>
            </ul>
        </div>
    </div>
</body>
</html>