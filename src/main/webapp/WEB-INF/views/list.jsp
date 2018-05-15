<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<!-- 부트스트랩 -->
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap-theme.min.css">

<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<!-- 부트스트랩의 기본 -->
	<div class="container">
		<div class="page-header">
			<h1>게시판</h1>
		</div>
		<!-- table-hover는 row에 마우스를 올려놓았을 때 hover이벤트가 적용되도록 하기위해 작성 -->
		<table class="table table-hover">
			<thead>
				<tr>
					<th style="width: 10%;">번호</th>
					<th style="width: 55%;">제목</th>
					<th style="width: 10%;">작성자</th>
					<th style="width: 15%;">날짜</th>
					<th style="width: 10%;">조회수</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach items="${list}" var="dto">
					<tr>
						<td>${dto.bId}</td>
						<td><c:forEach begin="1" end="${dto.bIndent}">-</c:forEach> <a
							href="content_view?bId=${dto.bId}">${dto.bTitle}</a></td>
						<td>${dto.bName}</td>
						<td>${dto.bDate}</td>
						<td>${dto.bHit}</td>
					</tr>
				</c:forEach>
			</tbody>
		</table>
		<!-- row는 한줄을 모두 이 안에 있는 기능들만 보여주도록 하기위해 작성 -->
		<div class="row">
			<div class="form-group">
				<!-- pull-right는 버튼이 가장 오른쪽으로 가도록 하기 위해 작성 -->
				<div class="pull-right">
					<a href="boardInsertForm.do"><button type="button"
							class="btn btn-default">작성</button></a>
				</div>
			</div>
		</div>
	</div>

</body>
</html>