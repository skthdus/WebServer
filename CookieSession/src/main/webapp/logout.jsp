<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>로그아웃(세션삭제)</title>
</head>
<body>
	<%
		//닉네임 세션 하나만 삭제
		session.removeAttribute("nick");
		//세션 전부 삭제
		session.invalidate();
		
		response.sendRedirect("loginform.html");
	%>

</body>
</html>