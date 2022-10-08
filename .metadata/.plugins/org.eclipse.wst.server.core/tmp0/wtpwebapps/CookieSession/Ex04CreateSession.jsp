<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
		//1. 세션 값 설정
		//세션 -> 내장객체(JSP 상에서는 객체 생성 따로 하지 않아도 됨!)
		//session (키(String), 값(Object-모든 것 가능))
		session.setAttribute("id", "smhrd");
		session.setAttribute("age", 20);
	%>
	
	<a href="Ex05getSession.jsp">세션확인</a>
</body>
</html>