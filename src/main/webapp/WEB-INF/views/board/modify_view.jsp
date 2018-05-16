<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<!-- 부트스트랩 관련 -->
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap-theme.min.css">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<!-- <div class="container"> -->
		<h1>modify_view</h1>
		<table class="table table-hover">
			<form action="/main/board/modify" method="post">
				<input type="hidden" name="bId" value="${content_view.bId}">
				<tr>
					<td>번호</td>
					<td>${content_view.bId}</td>
				</tr>
				<tr>
					<td>조회수</td>
					<td>${content_view.bHit}</td>
				</tr>
				<tr>
					<td>이름</td>
					<td><input type="text" name="bName"
						value="${content_view.bName}"></td>
				</tr>
				<tr>
					<td>제목</td>
					<td><input type="text" name="bTitle"
						value="${content_view.bTitle}"></td>
				</tr>
				<tr>
					<td>내용</td>
					<td><textarea cols="70" rows="15" name="bContent">${content_view.bContent}</textarea></td>
				</tr>
				<tr>
					<td colspan="2"><input type="submit" value="수정">
						&nbsp;&nbsp; <a href="/main/board/list">목록보기</a> &nbsp;&nbsp; <a
						href="delete?bId=${content_view.bId}">삭제</a> &nbsp;&nbsp; <a
						href="reply_view?bId=${content_view.bId}">답변</a></td>
				</tr>
			</form>
		</table>
	<!-- </div> -->

</body>
</html>