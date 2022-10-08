package com.smhrd.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


public class LogoutCon extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//세션 삭제
		HttpSession session = request.getSession();
		session.removeAttribute("loginM");
		//session.invalidate(); > 전체 삭제
		
		//main.jsp
		//(세션 삭제 후 이동했을 때 main.jsp에서 로그인/회원가입 버튼만 보여야 함!)
		response.sendRedirect("main.jsp");
		
	}

}
