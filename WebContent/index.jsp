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
                        <a href="#">설정</a>
                        <a href="#">관리 / 통계</a>
                    </div>
                </li>
                <li class="main_first_menu">
                    <a href="login.jsp">
                        <img src="F:\BitCamp\img\login.png">
                    </a>
                </li>
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
    <!-- 컨텐츠1 -->
    <div class="main_img">
        <img src="F:\BitCamp\img\main_img1.JPG">
        <div class="main_img_exp">
            <div class="main_img_exp_tit">Lorem ipsum dolor sit</div>
            <br>
            <div class="main_img_exp_sub">Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis
                aute</div>
            <br>
            <button class="button">look more</button>
        </div>
    </div>
    <!-- 컨텐츠2 -->
    <div id="content">
        <h1> What is
            <img src="F:\BitCamp\img\logo7.png">? </h1>
        <br>
        <p> Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna
            aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.
            Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur
            sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.
        </p>
        if you want more information, clik button.
        <br>
        <br>
        <button class="button">Info</button>
    </div>
    <!-- 컨텐츠3 -->
    <div class="main_img">
        <img src="F:\BitCamp\img\main_img2.JPG">
        <div class="main_img_exp">
            <div class="main_img_exp_tit">Lorem ipsum dolor sit</div>
            <br>
            <div class="main_img_exp_sub">Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis
                aute</div>
            <br>
            <button class="button">Look more</button>
        </div>
    </div>
    <!-- 푸터 -->
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
                            <a href="#">포스트 검색</a>
                        </div>
                    </ul>
                </div>
                <div class="footer_menu_col">
                    <ul>
                        <li>sns연결</li>
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