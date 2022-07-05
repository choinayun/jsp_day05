<%@page import="member.MemberDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>delete.jsp<br>

	<!-- DB에서 존재하지 않는 아이디를 삭제할 경우 0이나 오류가 뜬다 
		jsp에서 실행해보기 전에 DB에서 실행 시켜보기 -->
	
	<%= session.getAttribute("login") %><br>
	<%= request.getParameter("abcd") %>
	
	<%
		MemberDAO dao = new MemberDAO();
		dao.delete( request.getParameter("abcd") );
		response.sendRedirect("logout.jsp");
	%>

</body>
</html>