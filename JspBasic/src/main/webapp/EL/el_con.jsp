<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<p>
		# 이름: ${param.name} <br>
		# 별명: ${param.nick}
	</p>
	
	<%
		session.setAttribute("data1", "hello~!");
		application.setAttribute("data2", "bye~!");	
	%>
	
	<a href="el_result.jsp">세션, 어플리케이션 데이터를 화면에 출력하기</a>
	
	
	

</body>
</html>