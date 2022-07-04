<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body> save.jsp <br>
	dao 이동 넘어온 값 저장
	sql = "insert into members(id, pwd, name, addr, tel)
								values(?,?,?,?,?)"
	ps.setString(1, id)							
	ps.setString(2, pwd)							
	ps.setString(3, name)							
	ps.setString(4, addr)							
	ps.setString(5, tel)	
	
	int result = ps.executeUpdate(); 				
	
</body>
</html>