<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<meta name="description" content="Creative - Bootstrap 3 Responsive Admin Template">
	<meta name="author" content="GeeksLabs">
	<meta name="keyword" content="Creative, Dashboard, Admin, Template, Theme, Bootstrap, Responsive, Retina, Minimal">
	<link rel="shortcut icon" href="img/favicon.png">

	<title>login.jsp</title>

	<!-- Bootstrap CSS -->
	<link href="css/bootstrap.min.css" rel="stylesheet">
	<!-- bootstrap theme -->
	<link href="css/bootstrap-theme.css" rel="stylesheet">
	<!--external css-->
	<!-- font icon -->
	<link href="css/elegant-icons-style.css" rel="stylesheet" />
	<link href="css/font-awesome.min.css" rel="stylesheet" />
	<!-- full calendar css-->
	<link href="assets/fullcalendar/fullcalendar/bootstrap-fullcalendar.css" rel="stylesheet" />
	<link href="assets/fullcalendar/fullcalendar/fullcalendar.css" rel="stylesheet" />
	<!-- easy pie chart-->
	<link href="assets/jquery-easy-pie-chart/jquery.easy-pie-chart.css" rel="stylesheet" type="text/css" media="screen" />
	<!-- owl carousel -->
	<link rel="stylesheet" href="css/owl.carousel.css" type="text/css">
	<link href="css/jquery-jvectormap-1.2.2.css" rel="stylesheet">
	<!-- Custom styles -->
	<link rel="stylesheet" href="css/fullcalendar.css">
	<link href="css/widgets.css" rel="stylesheet">
	<link href="css/style.css" rel="stylesheet">
	<link href="css/style-responsive.css" rel="stylesheet" />
	<link href="css/xcharts.min.css" rel=" stylesheet">
	<link href="css/jquery-ui-1.10.4.min.css" rel="stylesheet">

<!-- HTML5 shim and Respond.js IE8 support of HTML5 -->
  <!--[if lt IE 9]>
    <script src="js/html5shiv.js"></script>
    <script src="js/respond.min.js"></script>
    <![endif]-->

    <!-- =======================================================
      Theme Name: NiceAdmin
      Theme URL: https://bootstrapmade.com/nice-admin-bootstrap-admin-html-template/
      Author: BootstrapMade
      Author URL: https://bootstrapmade.com
    ======================================================= -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script>
	$(document).ready(function(){
		/* a태그 농가, 업체, 관리기관을 클릭할때 해당하는 경우에 따라 회원가입 uri가 바뀌고
		li태그를 활성화하고 나머지는 비활성화 한다. */
		$('#farm').click(function(){
			$('#loginForm').attr('action','${pageContext.request.contextPath}/loginFarm');
			$(this).parents('ul').find('li').attr('class', '');
			$(this).parents('li').attr('class', 'active');
			$('#SignUp').html('농가 회원가입');
			$('#SignUp').attr('onclick', 'location=\'${pageContext.request.contextPath}/addFarmMember\'');
		});
		$('#company').click(function(){
			$('#loginForm').attr('action','${pageContext.request.contextPath}/loginCompany');
			$(this).parents('ul').find('li').attr('class', '');
			$(this).parent('li').attr('class', 'active');
			$('#SignUp').html('업체 회원가입');
			$('#SignUp').attr('onclick', 'location=\'${pageContext.request.contextPath}/addCompanyMember\'');
		});
		$('#agency').click(function(){
			$('#loginForm').attr('action','${pageContext.request.contextPath}/loginAgency');
			$(this).parents('ul').find('li').attr('class', '');
			$(this).parent('li').attr('class', 'active');
			$('#SignUp').html('관리기관 회원가입');
			$('#SignUp').attr('onclick', 'location=\'${pageContext.request.contextPath}/addAgencyMember\'');
		});
	});
</script>
</head>
<jsp:include page="../top.jsp"></jsp:include>
<jsp:include page="../left.jsp"></jsp:include>
<body class="login-img3-body">
	<div class="container">
		<form class="login-form" id="loginForm" action="${pageContext.request.contextPath}/loginFarm" method="post">
			<section class="panel">
				<header class="panel-heading">
					<ul class="nav nav-tabs">
						<li class="active"><a data-toggle="tab" id="farm" href="#farm">농가</a></li>
						<li class=""><a data-toggle="tab" id="company" href="#company">업체</a></li>
						<li class=""><a data-toggle="tab" id="agency" href="#agency">관리기관</a></li>
					</ul>
				</header>
			</section>
			<div class="login-wrap">
				<p class="login-img">
					<i class="icon_lock_alt"></i>
				</p>
				<div class="input-group">
					<span class="input-group-addon"><i class="icon_profile"></i></span>
					<input type="text" class="form-control" name="id" placeholder="User ID" autofocus>
				</div>
				<div class="input-group">
					<span class="input-group-addon"><i class="icon_key_alt"></i></span>
					<input type="password" class="form-control" name="pw" placeholder="Password">
				</div>
				<label class="checkbox">
					<span class="pull-left"><a href="${pageContext.request.contextPath}/findId">아이디 찾기</a></span>
					<span class="pull-right"><a href="${pageContext.request.contextPath}/findPw">비밀번호 찾기</a></span>
				</label>
				<button class="btn btn-primary btn-lg btn-block" id="login">로그인</button>
				<button type="button" class="btn btn-info btn-lg btn-block" onclick="location='${pageContext.request.contextPath}/addFarmMember'" id="SignUp">농가 회원가입</button>
			</div>
		</form>
	</div>
</body>
</html>