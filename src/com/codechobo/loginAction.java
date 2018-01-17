package com.codechobo;

import java.io.Console;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.*;
import java.net.URLEncoder;
import java.net.URLDecoder;

import util.Cookies;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.catalina.Session;
import org.apache.catalina.ant.SessionsTask;
import org.apache.catalina.connector.Request;

@WebServlet("/loginAction")
public class loginAction extends HttpServlet {

	private static final long serialVersionUID = 1L;

    public loginAction() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String id= request.getParameter("id_txt");
		String pwd=request.getParameter("pwd_txt");
		String checkBox=request.getParameter("check_autoLogin");
//로그인 조건		
		if(id.equals(pwd)) {//id와 pwd가 같을 경우 login 0
			//세션 생성
			HttpSession session=request.getSession();
			session.setAttribute("ID", id);
			
			if(checkBox != null && checkBox.equals("on")) {//체크박스가 on일때
				//쿠키 생성
				Cookie cookie1 = new Cookie("ID",id);
				response.addCookie(cookie1);
				
				response.sendRedirect("index.jsp");
			}else{
				//쿠키 삭제
				Cookie cookie = new Cookie("ID", id);
				cookie.setMaxAge(0);
				response.addCookie(cookie);
				
				response.sendRedirect("index.jsp");
			}
//id와 pwd가 다를 경우 login x				
		}else{		
			request.setAttribute("msg","login false.");		
			RequestDispatcher reqDis = request.getRequestDispatcher("login.jsp");
			reqDis.forward(request, response);
		}
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
