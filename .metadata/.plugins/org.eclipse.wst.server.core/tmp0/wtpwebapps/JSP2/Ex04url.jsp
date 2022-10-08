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
		String domain  = request.getParameter("domain");

		/* String naver = request.getParameter("naver");
		String daum = request.getParameter("daum");
		String google = request.getParameter("google"); */
		
		if(domain.equals("naver")){
			response.sendRedirect("http://www.naver.com");
		} else if(domain.equals("daum")){
			response.sendRedirect("http://www.daum.net");
		} else if(domain.equals("google")){
			response.sendRedirect("http://www.google.com");
		}
	%>

</body>
</html>