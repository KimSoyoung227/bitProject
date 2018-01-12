package com.codechoobo;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/HelloWorld4")
public class HelloServlet4 extends HttpServlet{
	int count=0;
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		resp.setContentType("text/html"); //mime타입을 정해주는 메소드
		PrintWriter out= resp.getWriter();
		String id= req.getParameter("id");
		String pwd=req.getParameter("pwd");
		
		PrintWriter out1=resp.getWriter();
		out1.println("<!DOCTYPE html>");
		out1.println("<html>");
		out1.println("<head>");
		out1.println("</head>");
		out1.println("<body>");
		out1.println("<h1>Hello, " +id+".</h1>");
		out1.println("<h1>Your Pwd is " +pwd+".</h1>");
		out1.println("<h1>count = " + ++count +".</h1>");
		out1.println("</h1>");
		out1.println("</body>");
		out1.println("</html>");
	}	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		doGet(req, resp); //post를 가져오면 get으로 넘겨준다.
	}
}
