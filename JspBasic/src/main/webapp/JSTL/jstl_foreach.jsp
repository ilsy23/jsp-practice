<%@page import="java.util.Arrays"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>

	<%--
		<c:set> �±״� ������ ������ ���ÿ�, �̹� ������ �̸��� �����Ͱ� �����Ѵٸ�
		������ �����͸� �����ؼ� ���� ������ ���� ����մϴ�.
		��ġ setAttribute()���� �̹� �����ϴ� �̸��� �����Ͽ� ���� �����ϴ� ��ó��.
	 --%>

	<c:set var="total" value="0" />
	<c:forEach var="i" begin="1" end="100" step="1">
		<c:set var="total" value="${total + i}" />
	</c:forEach>

	<h4>1���� 100������ ������: ${total}</h4>

	<hr>

	<%-- <h4>������ 4��</h4>
	<% for(int hang=1; hang<=9; hang++) { %>
		4 x <%=hang %> = <%=4*hang %>
	<% } %> --%>
	
	<c:forEach var="hang" begin="1"	end="9"> <%-- step ���� �� �ڵ����� 1�� ó���� --%>
		4 �� ${hang} = ${4 * hang} <br>
	</c:forEach>
	
	<hr>
	
	<%-- �������� 2~9�ܱ��� ����ϴµ�, ¦���ܸ� ����� ������. (jstl, el) --%>
	<c:forEach var="dan" begin="2" end="9" step="2">
		<h4>������ ${dan}��</h4>
		<c:forEach var="hang" begin="1" end="9">
			${dan} �� ${hang} = ${dan * hang}<br>
		</c:forEach>
		${'-------------------------------'}
	</c:forEach>
	
	<h2>�迭�̳� �÷��� ������ ���� ���</h2>
	
	<c:set var="arr" value="<%=new int[] {1, 3, 5, 7, 9} %>" />
	
	<c:forEach var="n" items="${arr}">
		${n} &nbsp;
	</c:forEach>
	
	<hr>
	
	<c:set var="nameList" value='<%=Arrays.asList("ȫ�浿", "��ö��", "�ڿ���", "��޷�") %>'></c:set>
	
	<c:forEach var="name" items="${nameList}">
		${name} <br>
	</c:forEach>
</body>
</html>