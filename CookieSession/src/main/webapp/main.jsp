<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>메인</title>
</head>
<body>
	<%
		String nick = (String)session.getAttribute("nick");
	%>

	<%=nick+" 님 환영합니다"%> 
	<%-- <%=nick %> 님 환영합니다! --%>
	<a href="logout.jsp">로그아웃</a>
</body>
</html>