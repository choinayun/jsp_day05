<%@page import="member.MemberDAO"%>
<%@page import="member.MemberDTO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>showInfo.jsp<br>
	
	<% 
		MemberDAO dao = new MemberDAO();
		MemberDTO dto =
				dao.getU((String)session.getAttribute("login")); %>
	
	<h2>회원 정보 수정 및 삭제</h2>
	
	<form action="modify.jsp" method="post">
		아이디 : <input type="text" name="id" readonly 
							value="<%=dto.getId() %>"><br>
		비밀번호 : <input type="text" name="pwd" value="<%=dto.getPwd() %>"><br>
		이름 : <input type="text" name="name" value="<%=dto.getName() %>"><br>
		주소 : <input type="text" name="addr" value="<%=dto.getAddr() %>"><br>
		전화번호 : <input type="text" name="tel"  value="<%=dto.getTel() %>"><br>
		<input type="submit" value="수정">
		<input type="button" value="삭제" onclick="location.href='delete.jsp?abcd=<%=dto.getId()%>'"> 
	</form>
	
	<!-- readonly : 읽기 전용임을 명시하는 (수정불가) -->
	
</body>
</html>