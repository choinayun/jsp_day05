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
	register.jsp
	<br>

	<%
		MemberDAO dao = new MemberDAO();
		ArrayList<MemberDTO> list = dao.getMember();
	%>

	<form id="fo" action="save.jsp" method="post">
		<input type="text" name="id" id="id" placeholder="input id"><br>

		<input type="text" name="pwd" id="pwd1" placeholder="password"><br>
		<input type="text" id="pwd2" onchange="pwdChk()" placeholder="password check">
		<!-- onchange : 해당하는 값이 변경되면 함수 호출 -->
		<label id="label">비밀번호 확인</label><br>
		
		<input type="text" name="name" placeholder="name"><br> 
		<input type="text" name="addr" placeholder="address"><br> 
		<input type="text" name="tel" placeholder="tel"><br>
		<input type="button" value="회원가입" onclick="chk()">
		<!-- type을 submit 으로 만들면 무조건 다음 페이지로 이동되는데
				    button 으로 만들면 이동되지않는다  -->
	</form>

	<script type="text/javascript">
	
	let pwd1 = document.getElementById("pwd1")
	let pwd2 = document.getElementById("pwd2")
	
		function pwdChk() {
			let label = document.getElementById("label")
			if(pwd1.value == pwd2.value){
				label.innerHTML = ("<b>일치합니다</b>")
			}else {
				label.innerHTML = ("<b style='color:red;'>불 일치합니다</b>")
				pwd1.value = "" // 값 삭제
				pwd2.value = ""
				pwd1. focus()
			}
		}
		
		function chk() {
			// alert("chk 호출")
			let id = document.getElementById("id")

			if (id.value == "") {
				alert("아이디는 필수 항목 입니다")
				id.focus()
				return;
			} else if (pwd1.value == "") {
				alert("비밀번호는 필수 항목 입니다")
				pwd1.focus()
			} else if (pwd2.value == "") {
				alert("비밀번호 확인은 필수 항목 입니다")
				pwd2.focus()

			} else {
				fo.submit() // 값이 다 입력되면 전송 
			}
		}

		
	</script>
</body>
</html>