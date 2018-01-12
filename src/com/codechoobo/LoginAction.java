package com.codechoobo;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/LoginAction")
public class LoginAction extends HttpServlet{

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		resp.setContentType("text/html");
		
		String id= req.getParameter("id");
		String pwd=req.getParameter("pwd");
		
		PrintWriter out11=resp.getWriter();
		out11.println("<!DOCTYPE html>");
		out11.println("<html>");
		out11.println("<head>");
//		out11.println("<script> $(document).ready(function(){");
//				+ " var main_btn=document.getElementById('main_btn');"
//				+ " main_btn.onclick(function(){");
//		if(id==null && pwd==null) {
//			out11.println("alert(\"아이디 또는 비밀번호를 다시 입력해주세요\");");
//		}
//		out11.println(/*"}); "*/
//				 "});");
		out11.println("</script>");
		out11.println("</head>");
		out11.println("<body>");
		out11.println("<h1>Hello, " +id+".</h1>");
		out11.println("<h1>Your Pwd is " +pwd+".</h1>");
		out11.println("</h1>");
		out11.println("</body>");
		out11.println("</html>");
		
		
	}
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		doGet(req, resp); //post를 가져오면 get으로 넘겨준다.
	}
}
