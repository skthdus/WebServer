<%@page import="java.util.Arrays"%>
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
		//세션 값 가져오기
		//getAttribute 반환타입 : Object -> 비어있으면 -> null 
		//> int형은 null값 반환X
		String id = (String)session.getAttribute("id");
		Integer age = (Integer)session.getAttribute("age");
		int[] arr = (int[])session.getAttribute("number");
	%>
	
	아이디 : <%=id %><br>
	나이 : <%=age %><br>
	<%=Arrays.toString(arr) %><br>
	
	<a href="Ex06removeSession.jsp">세션삭제</a>
	<a href="Ex07invalidate.jsp">세션전체삭제</a>
</body>
</html>