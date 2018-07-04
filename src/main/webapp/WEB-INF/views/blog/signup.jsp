<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset="utf-8" />
<link rel="apple-touch-icon" sizes="76x76"
	href="${pageContext.request.contextPath}/resources/bootstrap-firstpage/assets/img/apple-icon.png">
<link rel="icon" type="image/png"
	href="${pageContext.request.contextPath}/resources/bootstrap-firstpage/assets/img/favicon.png">

<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
<title>Get Shit Done Kit by Creative Tim</title>

<meta
	content='width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0'
	name='viewport' />
<meta name="viewport" content="width=device-width" />

<link
	href="${pageContext.request.contextPath}/resources/bootstrap-firstpage/bootstrap3/css/bootstrap.css"
	rel="stylesheet" />
<link
	href="${pageContext.request.contextPath}/resources/bootstrap-firstpage/bootstrap3/css/font-awesome.css"
	rel="stylesheet" />

<link
	href="${pageContext.request.contextPath}/resources/bootstrap-firstpage/assets/css/gsdk.css"
	rel="stylesheet" />
<link
	href="${pageContext.request.contextPath}/resources/bootstrap-firstpage/assets/css/demo.css"
	rel="stylesheet" />

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
					<a class="navbar-brand" href="#gsdk">YOSEP</a>
				</div>

				<!-- Collect the nav links, forms, and other content for toggling -->
				<div class="collapse navbar-collapse"
					id="bs-example-navbar-collapse-1">
					<ul class="nav navbar-nav">
						<li class="active"><a href="#gsdk">Link</a></li>
						<li class="dropdown"><a href="#gsdk" class="dropdown-toggle"
							data-toggle="dropdown">Dropdown <b class="caret"></b></a>
							<ul class="dropdown-menu">
								<li><a href="#gsdk">Action</a></li>
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
						<li><button href="#gsdk" class="btn btn-round btn-default">Sign
								in</button></li>
					</ul>

				</div>
				<!-- /.navbar-collapse -->
			</div>
			<!-- /.container-fluid --> </nav>
			<div class="blurred-container">
				<div class="img-src"
					style="background-image: url('${pageContext.request.contextPath}/resources/bootstrap-firstpage/assets/img/home-bg.jpg')"></div>
				<div class='blurred-container'>
					<div class="motto">
						<form action="/main/blog/signupOk" method="post">
							<div class="row">
								<div class="col-sm-10">
									<div class="form-group">
										<input type="text" value="" placeholder="아이디 입력" name="id"
											size="20" class="form-control" maxlength="20"/>
									</div>
									<div class="form-group">
										<input type="text" value="" placeholder="이름 입력" name="name"
											size="20" class="form-control" maxlength="20"/>
									</div>
									<div class="form-group">
										<input type="password" value="" placeholder="비밀번호 입력"
											name="password" size="20" class="form-control" maxlength="20"/>
									</div>
									<div class="form-group">
										<input type="password" value="" placeholder="비밀번호 확인"
											name="password_check" size="20" class="form-control" maxlength="20"/>
									</div>
									<div class="col-sm-3">
										<label class="radio"> <input type="radio"
											name="gender" data-toggle="radio" id="male" value="male">
											<i></i>남자
										</label> <label class="radio"> <input type="radio"
											name="gender" data-toggle="radio" id="female" value="female">
											<i></i>여자
										</label>
									</div>
									<div class="form-group">
										<input type="text" value="" placeholder="-없이 번호를 입력하세요."
											name="phone" size="20" class="form-control" maxlength="20"/>
									</div>
									<div class="form-group">
										<input type="text" value="" placeholder="email 입력"
											name="email" size="20" class="form-control" maxlength="50"/>
									</div>
								</div>
						</form>
					</div>
				</div>
			</div>
		</div>
		<!--  end navbar -->

	</div>
	<!-- end menu-dropdown -->

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

<script
	src="/main/resources/bootstrap-firstpage/jquery/jquery-1.10.2.js"
	type="text/javascript"></script>
<script
	src="/main/resources/bootstrap-firstpage/assets/js/jquery-ui-1.10.4.custom.min.js"
	type="text/javascript"></script>

<script
	src="/main/resources/bootstrap-firstpage/bootstrap3/js/bootstrap.js"
	type="text/javascript"></script>
<script
	src="/main/resources/bootstrap-firstpage/assets/js/gsdk-checkbox.js"></script>
<script
	src="/main/resources/bootstrap-firstpage/assets/js/gsdk-radio.js"></script>
<script
	src="/main/resources/bootstrap-firstpage/assets/js/gsdk-bootstrapswitch.js"></script>
<script
	src="/main/resources/bootstrap-firstpage/assets/js/get-shit-done.js"></script>

<script src="/main/resources/bootstrap-firstpage/assets/js/custom.js"></script>

</html>