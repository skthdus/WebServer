package com.smhrd.POJO;

import javax.servlet.RequestDispatcher;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.smhrd.controller.Command;
import com.smhrd.model.Member;
import com.smhrd.model.MemberDAO;

public class Join implements Command {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) {
		
		String id = request.getParameter("id");
		String pw = request.getParameter("pw");
		String nick = request.getParameter("nick");

		Member vo = new Member(id, pw, nick);
		MemberDAO dao = new MemberDAO();
		int cnt = dao.join(vo);

		// 페이지 이동 방식(redirecting, forwarding)
		if (cnt >= 0) {
			request.setAttribute("result", "success");
		} else {
			request.setAttribute("result", "fail");
		}
		return "main.jsp";
	}

}
