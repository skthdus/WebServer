<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<form action="Ex02randomWinner.jsp">
		<fieldset align="center">
			<legend>랜덤당첨 작성</legend>

			주제: <input type="text" name="sub"> <br>  
				<%
				request.setCharacterEncoding("UTF-8");
				int random = Integer.parseInt(request.getParameter("random"));

				for (int i = 1; i <= random; i++) {
					out.print("아이템" + i + " : <input type='text' name='item'> <br>");
				}
				%>
				<input type="submit" value="시작">

		</fieldset>
	</form>
</body>
</html>
