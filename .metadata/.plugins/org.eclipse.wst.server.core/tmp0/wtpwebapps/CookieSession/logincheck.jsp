<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>로그인 체크</title>
</head>
<body>
	<%
		String id = request.getParameter("id");
		String pw = request.getParameter("pw");
		
		if(id.equals("test") && pw.equals("12345")){ //둘다일치
			//닉네임 세션 생성
			session.setAttribute("nick", "쿠키몬스터");
			//main.jsp로 이동
			response.sendRedirect("main.jsp");
		}else{ //하나라도 다른 경우
			//loginform.html 돌아가기
			response.sendRedirect("loginform.html");
		}
	%>
</body>
</html>