<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>

	<c:set var="id" value="${cookie.login_cookie.value}" />
	
	<c:choose>
		<c:when test="${id == null}">
			<%-- ���ʿ� �α����� ���ߴ���, �α��� �ð��� ���� --%>
			<h3>�ð��� ���� �ڵ� �α׾ƿ� ó���Ǿ����ϴ�.</h3>
		</c:when>
		<c:otherwise>
			<h3>${id}�� ȯ���մϴ�!</h3>
		</c:otherwise>
	</c:choose>
	
	<a href="cookie_login.jsp">�α��� ȭ������</a>
	
</body>
</html>