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
                        <!-- ë¡ê³  -->
                        <li id="logo" class="main_first_menu">
                            <a href="index.html">
                                <img src="F:\BitCamp\img\logo7.png">
                            </a>
                        </li>
                        <!-- ì²«ë²ì§¸ ë©ë´ -->
                        <li class="main_first_menu">NEIGHBOR
                            <div class="main_first_small_menu">
                                <a href="#">ì´ììê¸</a>
                                <a href="#">ì´ìë³´ê¸°</a>
                            </div>
                        </li>
                        <li class="main_first_menu">LOOK POST
                            <div class="main_first_small_menu">
                                <a href="#">ì ì²´ë³´ê¸°</a>
                                <a href="#">ì¹´íê³ ë¦¬ë³ ë³´ê¸°</a>
                            </div>
                        </li>
                        <li class="main_first_menu">WRITE POST
                            <div class="main_first_small_menu">
                                <a href="#">í¬ì¤í¸ ì°ê¸°</a>
                                <a href="#">ë©ì¼ ë³´ë´ê¸°</a>
                            </div>
                        </li>
                        <li class="main_first_menu">SETTING
                            <div class="main_first_small_menu">
                                <a href="#">ì¤ì </a>
                                <a href="#">ê´ë¦¬ / íµê³</a>
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
    <!-- ë°í ì´ë¯¸ì§ -->
    <div class="login_img">
            <img src="F:\BitCamp\img\post.JPG">
    </div>
    <div id="login_content">
        <span id="login_tit">
            <h1>íìë¡ê·¸ì¸</h1>
        </span>
        <!-- id, pwd ìë ¥ -->
        <form id="form" action="HelloJsp.jsp" method="post">
        <div id="login_div">
            <div>
                <h2>MEMBER LOGIN</h2>
                <br> ìì´ë&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
                         
                <input type="text" name="id_txt" value="your id.">
                <br>
                <br> ë¹ë°ë²í¸&nbsp;&nbsp;&nbsp;&nbsp;
                <input type="text" name="pwd_txt" value="your passowrd.">                       
            </div>
            <div>
                <button class="login_button">Login</button>
            </div>             
        </div>
        </form> 
        <!-- ë³ë ë©ë´ -->
        <div class="login_more">
            <a href="#">ë¹ë°ë²í¸ë¥¼ ìì´ë²ë¦¬ì¨ìµëê¹?</a>
            <a href="#">íìê°ì</a>
        </div>
    </div>

	<!-- í¸í°  -->
    <footer>
        <div class="footer">
            <div id="footer_align">
                <div class="footer_menu_col">
                    <ul>
                        <li>mySoyoung</li>
                        <br>
                        <div class="footer_menu">
                            <a href="#">ë´ ê³ì </a>
                            <a href="#">ë´ ê´ì¬ëª©ë¡</a>
                        </div>
                    </ul>
                </div>
                <div class="footer_menu_col">
                    <ul>
                        <li>í¬ì¤í¸</li>
                        <br>
                        <div class="footer_menu">
                            <a href="#">í¬ì¤í¸ ì­ì  ìì²­</a>
                            <a href="#">í¬ì¤í¸ ê²ì</a>
                        </div>
                    </ul>
                </div>
                <div class="footer_menu_col">
                    <ul>
                        <li>snsì°ê²°</li>
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
    
    <!-- ë¡ê·¸ì¸ë²í¼ ëë¥´ë©´ ëì¤ë íì¸ ì°½ -->

</body>

</html>