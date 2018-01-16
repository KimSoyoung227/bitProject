package com.codechobo;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.*;
import java.net.URLEncoder;
import java.net.URLDecoder;

import javax.servlet.http.Cookie;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


/**
 * Servlet implementation class loginAction
 */
@WebServlet("/loginAction")
public class loginAction extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public loginAction() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.setContentType("text/html"); 
		String id= request.getParameter("id_txt");
		String pwd=request.getParameter("pwd_txt");
		
		if(id.equals(pwd)) {
			response.sendRedirect("index.jsp");
		}else {
			PrintWriter out= response.getWriter();
			out.println("<script> alert(\"로그인에 실패하였습니다.\"); history.go(-1);</script>");
			request.setAttribute("msg","id 또는 비밀번호가 틀립니다.");
			
			RequestDispatcher reqDis = request.getRequestDispatcher("login.jsp");
			reqDis.forward(request, response);
		}
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
