<%@page import="member.MemberDTO"%>
<%@page import="member.MemberDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>user_delete.jsp<br>

	<% // 이름 누르면 해당 아이디의 정보 나타내기 
		MemberDAO dao = new MemberDAO();
		MemberDTO dto =
				dao.getU( request.getParameter("id") ); %>
	
		아이디 : <%=dto.getId() %><br>
		비밀번호 : <%=dto.getPwd() %><br>
		이름 : <%=dto.getName() %><br>
		주소 : <%=dto.getAddr() %><br>
		전화번호 : <%=dto.getTel() %><br>
		<input type="button" value="삭제" 
			   onclick="location.href='delete.jsp?abcd=<%=dto.getId()%>'"> 

	<%--  이름 누르면 해당 아이디 바로 삭제
	<%= request.getParameter("id") %>
	
	<%
		MemberDAO dao = new MemberDAO();
		dao.delete( request.getParameter("id") );
		response.sendRedirect("main.jsp");
	%> --%>
	

</body>
</html>