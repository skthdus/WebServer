package com.smhrd.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.smhrd.model.Member;
import com.smhrd.model.MemberDAO;

public class DeleteCon extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		HttpSession session = request.getSession();
		Member loginM = (Member)session.getAttribute("loginM");
	
		//1. DAO - delete 호출
		MemberDAO dao = new MemberDAO();
		int cnt = dao.delete(loginM.getId());
		
		if(cnt>0) {
		//2. 삭제 성공
		//- main.jsp 이동
			response.sendRedirect("main.jsp");
		//- 닉네임님 환영합니다 안 보이게 
			session.removeAttribute("loginM");
		}else {
		//3. 삭제 실패
		//- main.jsp 이동, 닉네임님 환영합니다 보이게
			response.sendRedirect("main.jsp");
		}
	}

}
