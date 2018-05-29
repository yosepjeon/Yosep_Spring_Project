<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<form action="/main/blog/signupOk">
        		<input type="text" name="id" size="20" placeholder="아이디를 입력"><br />
        		<input type="password" name="pw" size="20" placeholder="비밀번호를 입력"><br />
        		<input type="password" name="pw_check" size="20" placeholder="비밀번호 확인"><br />
        		<input type="text" name="name" size="20" placeholder="이름 입력"><br />
        		<input type="text" name="mail" size="20" placeholder="이메일 입력"><br />
        		<input type="text" name="address" size="50" placeholder="주소 입력"><br />
        		<input type="button" value="회원가입" onclick="infoConfirm()">&nbsp;&nbsp;&nbsp;<input type="reset" value="취소" onclick="javascript:window.location='start_blog.jsp'">
        	</form>
</body>
</html>