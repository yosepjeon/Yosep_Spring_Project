<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>

  <head>

    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>Yosep's blog entry</title>

    <!-- Bootstrap core CSS -->
    <link href="${pageContext.request.contextPath}/resources/bootstrap-firstpage/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">

    <!-- Custom fonts for this template -->
    <link href="https://fonts.googleapis.com/css?family=Catamaran:100,200,300,400,500,600,700,800,900" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css?family=Lato:100,100i,300,300i,400,400i,700,700i,900,900i" rel="stylesheet">

    <!-- Custom styles for this template -->
    <link href="${pageContext.request.contextPath}/resources/bootstrap-firstpage/css/one-page-wonder.min.css" rel="stylesheet">

  </head>

  <body>

    <!-- Navigation -->
    <nav class="navbar navbar-expand-lg navbar-dark navbar-custom fixed-top">
      <div class="container">
        <a class="navbar-brand" href="/main/blog/first">Yosep</a>
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarResponsive" aria-controls="navbarResponsive" aria-expanded="false" aria-label="Toggle navigation">
          <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarResponsive">
          <ul class="navbar-nav ml-auto">
            <li class="nav-item">
              <a class="nav-link" href="/main/blog/login">Log In</a>
            </li>
          </ul>
        </div>
      </div>
    </nav>

    <header class="masthead text-center text-white">
      <div class="masthead-content">
        <div class="container">
        	<form action="/main/blog/signupOk">
        		<input type="text" name="id" size="20" placeholder="아이디를 입력"><br />
        		<input type="password" name="pw" size="20" placeholder="비밀번호를 입력"><br />
        		<input type="password" name="pw_check" size="20" placeholder="비밀번호 확인"><br />
        		<input type="text" name="name" size="20" placeholder="이름 입력"><br />
        		<input type="text" name="mail" size="20" placeholder="이메일 입력"><br />
        		<input type="text" name="address" size="50" placeholder="주소 입력"><br />
        		<input type="button" value="회원가입" onclick="infoConfirm()">&nbsp;&nbsp;&nbsp;<input type="reset" value="취소" onclick="javascript:window.location='start_blog.jsp'">
        	</form>
          <a href="#" class="btn btn-primary btn-xl rounded-pill mt-5">Learn More</a>
        </div>
      </div>
      <div class="bg-circle-1 bg-circle"></div>
      <div class="bg-circle-2 bg-circle"></div>
      <div class="bg-circle-3 bg-circle"></div>
      <div class="bg-circle-4 bg-circle"></div>
    </header>

    <!-- Footer -->
    <footer class="py-5 bg-black">
      <div class="container">
        <p class="m-0 text-center text-white small">Copyright &copy; Your Website 2018</p>
      </div>
      <!-- /.container -->
    </footer>

    <!-- Bootstrap core JavaScript -->
    <script src="<c:url value="/resources/bootstrap-firstpage/vendor/jquery/jquery.min.js" />"></script>
    <script src="<c:url value="/resources/bootstrap-firstpage/vendor/bootstrap/js/bootstrap.bundle.min.js" />"></script>

  </body>

</html>
