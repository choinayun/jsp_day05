<%@page import="test.TestDTO"%>
<%@page import="test.TestDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>test_chk.jsp<br>

	<%-- 방식 1)
		String id = request.getParameter("id");
		String pwd = request.getParameter("pwd");
		
		TestDTO dto = new TestDTO();
		dto.setId(id);
		dto.setPwd(pwd);
		
		TestDAO dao = new TestDAO();
		dao.test(dto);  
	--%>
	

	<!-- 방식 2) 
		 기존의 방식보다 더 간편하게 사용가능 
		 useBean : 객체를 생성한다는 의미 / id : 변수의 이름 
		 setProperty : setter를 의미 (입력한 값을 자동으로 저장) 
		 			   login.jsp 에서의 name의 값과 property의 값이 같아야 넘어온다
		 useBean으로 dto 객체를 생성해야만 setProperty 사용이 가능하다  -->
	
	<jsp:useBean id="dao" class="test.TestDAO"/>
	<jsp:useBean id="dto" class="test.TestDTO"/>
	
	<%-- <jsp:setProperty property="id" name="dto"/>
	<jsp:setProperty property="pwd" name="dto"/> --%>
	
	<jsp:setProperty property="*" name="dto"/>
	
	<%= dto.getId() %><br>
	<%= dto.getPwd() %><br>
	<%= dto.getName() %><br>
	<%= dto.getAddr() %><br>
	<%= dto.getTel() %>
	
</body>
</html>



