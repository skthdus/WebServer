<%@page import="java.util.Random"%>
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
	request.setCharacterEncoding("UTF-8");
	String sub = request.getParameter("sub");
	
	String[] item = request.getParameterValues("item");
	
	//아이템 중에 랜덤 1개 뽑기
	Random rd = new Random();
	//3 아이템3 -> 배열 -> 0~2
	int num = rd.nextInt(item.length); 
	//String random = item[rd.nextInt(item.length)];
	%>
	
	<fieldset align="center">
	<legend>랜덤당첨결과</legend>
	<%=sub %>
	<br>
	<%=item[num] %> 
	</fieldset>

</body>
</html>