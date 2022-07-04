<%@page import="member.MemberDTO"%>
<%@page import="java.util.ArrayList"%>
<%@page import="member.MemberDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	main.jsp 로그인 성공
	<h2>회원들만의 페이지.</h2>
	
	<% MemberDAO dao = new MemberDAO();
	   ArrayList<MemberDTO> list = dao.getMember(); %>
	
	<table border="1">
		<tr>
			<td>아이디</td> <td>비밀번호</td> <td>이름</td> <td>주소</td> <td>전화번호</td>
		</tr>
		<% for(MemberDTO dto : list) { %>
		<tr>	
			<td><%=dto.getId() %></td>
			<td><%=dto.getPwd() %></td> 
			<td><%=dto.getName() %></td>
			<td><%=dto.getAddr() %></td>
			<td><%=dto.getTel() %></td>
		</tr>
		<% } %>
	</table>
	<input type="button" value="로그아웃" onclick="location.href='logout.jsp'">
	<input type="button" value="계정정보" onclick="location.href='showInfo.jsp'">
	
	
</body>
</html>