package com.codechobo;

import java.io.*;
import java.sql.*;
import javax.servlet.*;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;



@WebServlet("/loginAction")
public class loginAction extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public loginAction() {
		super();
	}
	Connection conn = null;
	Statement stmt = null;
	ResultSet rs = null;
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException{
		String id= request.getParameter("id_txt");
		String pwd=request.getParameter("pwd_txt");
		String checkBox=request.getParameter("check_autoLogin");
		//로그인 조건		
		
			try {
				Class.forName("com.mysql.jdbc.Driver");

				String jdbcDriver = null;
				String dbUser = null;
				String dbPass=null; 
				
				jdbcDriver = "jdbc:mysql://localhost:3306/homepage?useUnicode=true&characterEncoding=utf8&useSSL=true&verifyServerCertificate=false";
				dbUser = "root";
				dbPass = "fdsa456";
				
				String query = ("select join_id, join_pwd from joinmemberdb");
				conn = DriverManager.getConnection(jdbcDriver, dbUser, dbPass);
				stmt = conn.createStatement();

				rs=stmt.executeQuery(query);
				if(rs.next()) {
					if(id.equals(rs.getString("join_id")) && pwd.equals(rs.getString("join_pwd"))){//db의 id,pwd와 입력한 id,pwd가 같은 경우
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
					}else{
						request.setAttribute("msg","login false.");		
						RequestDispatcher reqDis = request.getRequestDispatcher("login.jsp");
						reqDis.forward(request, response);
					}
			 }else {
				 request.setAttribute("msg","login false.");		
					RequestDispatcher reqDis = request.getRequestDispatcher("login.jsp");
					reqDis.forward(request, response);
			 }
			}catch (SQLException ex) {
				 System.out.println(ex.getMessage());
				 ex.printStackTrace();
			} catch (ClassNotFoundException cnfe){
			cnfe.printStackTrace();
			}finally{
				if(rs != null) try{ rs.close();}catch(SQLException ex){}
				if(stmt != null) try{ stmt.close();}catch(SQLException ex){}
				if(conn != null) try{ conn.close();}catch(SQLException ex){}
			}
			//id와 pwd가 다를 경우 login x				
		
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException{
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
