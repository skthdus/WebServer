<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>	
	<!-- 선언문 : 변수, 메서드 선언시 사용 -->
	<%!
		//정수형(음수/양수) 1개 -> 절대값을 반환하는 메서드
		public int abs(int num){
			return (num>=0)?num:-num;
		}
		
		/* public int abs(int num){
			if(num<=0){
				num = num*(-1);
				return num;
			}else {
				return num;
			}
		}
		 */
	%>
	
	<%=abs(5) %>
	<%=abs(-5) %>

</body>
</html>