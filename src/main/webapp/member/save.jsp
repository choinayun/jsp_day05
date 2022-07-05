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
<body> save.jsp <br>

	<% 
		request.setCharacterEncoding("utf-8"); 
		
		MemberDAO dao = new MemberDAO();
		MemberDTO dto = new MemberDTO();
		
		dto.setId( request.getParameter("id") );
		dto.setAddr( request.getParameter("addr") );
		dto.setName( request.getParameter("name") );
		dto.setTel( request.getParameter("tel") );
		dto.setPwd( request.getParameter("pwd") );
		
		int result = dao.insert(dto);
		if(result == 1) { %>
			<script>
				alert('회원가입 성공');
				location.href='login.jsp';
			</script>
		<% }else { %>
			<script>
				alert('회원가입 실패');
				history.back(); // 한 단계 전으로 간다 
			</script>
		<% } %>
		
		<!-- 실제로 값이 들어왔는지 아닌지 중간에 꼭 확인해줘야함 -->
	
	
	<script>
		alert('회원가입 성공');
		location.href='login.jsp';
	</script>
	
	<script>
		alert('회원가입 실패');
		history.back(); // 한 단계 전으로 이동 + 데이터 값이 남아있다 
	</script>
	
	<%= request.getParameter("id") %><br>
	<%= request.getParameter("addr") %><br>
	<%= request.getParameter("name") %><br>
	<%= request.getParameter("tel") %><br>
	<%= request.getParameter("pwd") %><br>
	
	<!-- 
			dao 이동 넘어온 값 저장
			sql = "insert into members(id, pwd, name, addr, tel)
										values(?,?,?,?,?)"
			ps.setString(1, id)							
			ps.setString(2, pwd)							
			ps.setString(3, name)							
			ps.setString(4, addr)							
			ps.setString(5, tel)	
			
			int result = ps.executeUpdate(); -->			
	
</body>
</html>