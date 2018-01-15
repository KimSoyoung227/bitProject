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
<!-- 헤더 -->
<jsp:include page="header.jsp"></jsp:include>
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
    <jsp:include page="footer.jsp"></jsp:include>
</body>
</html>