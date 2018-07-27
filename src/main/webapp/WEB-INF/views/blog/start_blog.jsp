<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset="utf-8" />
<link rel="apple-touch-icon" sizes="76x76"
	href="${pageContext.request.contextPath}/resources/bootstrap-firstpage/assets/img/apple-icon.png">
<link rel="icon" type="image/png" href="${pageContext.request.contextPath}/resources/bootstrap-firstpage/assets/img/favicon.png">

<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
<title>Get Shit Done Kit by Creative Tim</title>

<meta
	content='width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0'
	name='viewport' />
<meta name="viewport" content="width=device-width" />

<link href="${pageContext.request.contextPath}/resources/bootstrap-firstpage/bootstrap3/css/bootstrap.css" rel="stylesheet" />
<link href="${pageContext.request.contextPath}/resources/bootstrap-firstpage/bootstrap3/css/font-awesome.css" rel="stylesheet" />

<link href="${pageContext.request.contextPath}/resources/bootstrap-firstpage/assets/css/gsdk.css" rel="stylesheet" />
<link href="${pageContext.request.contextPath}/resources/bootstrap-firstpage/assets/css/demo.css" rel="stylesheet" />

<!--     Font Awesome     -->
<link
	href="http://netdna.bootstrapcdn.com/font-awesome/4.0.3/css/font-awesome.css"
	rel="stylesheet">
<link href='http://fonts.googleapis.com/css?family=Grand+Hotel'
	rel='stylesheet' type='text/css'>

</head>

<body>
	<div id="navbar-full">
		<div id="navbar">
			<!--    
        navbar-default can be changed with navbar-ct-blue navbar-ct-azzure navbar-ct-red navbar-ct-green navbar-ct-orange  
        -->
			<nav
				class="navbar navbar-ct-blue navbar-transparent navbar-fixed-top"
				role="navigation">
			<div class="alert alert-success hidden">
				<div class="container">
					<b>Lorem ipsum</b> dolor sit amet, consectetuer adipiscing elit,
					sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna
					aliquam erat volutpat.
				</div>
			</div>

			<div class="container">
				<!-- Brand and toggle get grouped for better mobile display -->
				<div class="navbar-header">
					<button type="button" class="navbar-toggle" data-toggle="collapse"
						data-target="#bs-example-navbar-collapse-1">
						<span class="sr-only">Toggle navigation</span> <span
							class="icon-bar"></span> <span class="icon-bar"></span> <span
							class="icon-bar"></span>
					</button>
					<a class="navbar-brand" href="/main/blog/first">요깨비</a>
				</div>

				<!-- Collect the nav links, forms, and other content for toggling -->
				<div class="collapse navbar-collapse"
					id="bs-example-navbar-collapse-1">
					<ul class="nav navbar-nav">
						<li class="active"><a href="/main/blog">소개</a></li>
						<li class="dropdown"><a href="#gsdk" class="dropdown-toggle"
							data-toggle="dropdown">목록 <b class="caret"></b></a>
							<ul class="dropdown-menu">
								<li><a href="/main/board/list">게시판</a></li>
								<li><a href="#gsdk">Another action</a></li>
								<li><a href="#gsdk">Something</a></li>
								<li><a href="#gsdk">Another action</a></li>
								<li><a href="#gsdk">Something</a></li>
								<li class="divider"></li>
								<li><a href="#gsdk">Separated link</a></li>
							</ul></li>
						<li><a href="javascript:void(0);" data-toggle="search"
							class="hidden-xs"><i class="fa fa-search"></i></a></li>
					</ul>
					<form class="navbar-form navbar-left navbar-search-form"
						role="search">
						<div class="form-group">
							<input type="text" value="" class="form-control"
								placeholder="Search...">
						</div>
					</form>
					<ul class="nav navbar-nav navbar-right">
						<li><a href="/main/blog/signup">회원가입</a></li>

						<li><button onclick="location.href='/main/blog/login'" class="btn btn-round btn-default">로그인</button></li>
					</ul>

				</div>
				<!-- /.navbar-collapse -->
			</div>
			<!-- /.container-fluid --> </nav>
			<div class="blurred-container">
				<div class="img-src"
					style="background-image: url('${pageContext.request.contextPath}/resources/bootstrap-firstpage/assets/img/bg.jpg')"></div>
			</div>
		</div>
		<!--  end navbar -->

	</div>
	<!-- end menu-dropdown -->

	<div class="main">
		<div class="container tim-container"
			style="max-width: 800px; padding-top: 100px">
			<h1 class="text-center">
				Awesome looking header <br> just for my friends<small
					class="subtitle">This is like a small motto before the
					story.</small>
			</h1>
			<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed
				do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut
				enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi
				ut aliquip ex ea commodo consequat. Duis aute irure dolor in
				reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla
				pariatur. Excepteur sint occaecat cupidatat non proident, sunt in
				culpa qui officia deserunt mollit anim id est laborum.</p>
			<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed
				do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut
				enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi
				ut aliquip ex ea commodo consequat. Duis aute irure dolor in
				reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla
				pariatur. Excepteur sint occaecat cupidatat non proident, sunt in
				culpa qui officia deserunt mollit anim id est laborum.</p>
			<!--     end extras -->
		</div>
		<div class="space"></div>
		<!-- end container -->
	</div>
	<!-- end main -->

</body>
<!-- 
<script src="<c:url value="resources/bootstrap-firstpage/jquery/jquery-1.10.2.js" type="text/javascript" />"></script>
<script src="<c:url value="resources/bootstrap-firstpage/assets/js/jquery-ui-1.10.4.custom.min.js" type="text/javascript" />"></script>

<script src="<c:url value="resources/bootstrap-firstpage/bootstrap3/js/bootstrap.js" type="text/javascript" />"></script>
<script src="<c:url value="resources/bootstrap-firstpage/assets/js/gsdk-checkbox.js" />"></script>
<script src="<c:url value="resources/bootstrap-firstpage/assets/js/gsdk-radio.js" />"></script>
<script src="<c:url value="resources/bootstrap-firstpage/assets/js/gsdk-bootstrapswitch.js" />"></script>
<script src="<c:url value="resources/bootstrap-firstpage/assets/js/get-shit-done.js" />"></script>
<script src="<c:url value="resources/bootstrap-firstpage/assets/js/custom.js" />"></script>
-->

    <script src="/main/resources/bootstrap-firstpage/jquery/jquery-1.10.2.js" type="text/javascript"></script>
	<script src="/main/resources/bootstrap-firstpage/assets/js/jquery-ui-1.10.4.custom.min.js" type="text/javascript"></script>

	<script src="/main/resources/bootstrap-firstpage/bootstrap3/js/bootstrap.js" type="text/javascript"></script>
	<script src="/main/resources/bootstrap-firstpage/assets/js/gsdk-checkbox.js"></script>
	<script src="/main/resources/bootstrap-firstpage/assets/js/gsdk-radio.js"></script>
	<script src="/main/resources/bootstrap-firstpage/assets/js/gsdk-bootstrapswitch.js"></script>
	<script src="/main/resources/bootstrap-firstpage/assets/js/get-shit-done.js"></script>

    <script src="/main/resources/bootstrap-firstpage/assets/js/custom.js"></script>

</html>