<!-- [유국화] -->
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<meta name="description" content="Creative - Bootstrap 3 Responsive Admin Template">
	<meta name="author" content="GeeksLabs">
	<meta name="keyword" content="Creative, Dashboard, Admin, Template, Theme, Bootstrap, Responsive, Retina, Minimal">
	<link rel="shortcut icon" href="img/favicon.png">
	<title>resultFarmPw</title>
	<!-- Bootstrap CSS -->
	<link href="css/bootstrap.min.css" rel="stylesheet">
	<!-- bootstrap theme -->
	<link href="css/bootstrap-theme.css" rel="stylesheet">
	<!--external css-->
	<!-- font icon -->
	<link href="css/elegant-icons-style.css" rel="stylesheet" />
	<link href="css/font-awesome.css" rel="stylesheet" />
	<!-- Custom styles -->
	<link href="css/style.css" rel="stylesheet">
	<link href="css/style-responsive.css" rel="stylesheet" />
</head>
<jsp:include page="../top.jsp"></jsp:include>
<body class="login-img3-body">
	<div class="container">
		<form class="login-form">
			<div class="login-wrap">
				<p class="login-img" style="font-size: 40px">비번 찾기 성공!</p>				
				<div class="input-group">
					<span class="input-group-addon"><i class="icon_key_alt"></i></span>
					<input type="text" class="form-control" name="pw" value="${resultpw}">
				</div>
				<label class="checkbox">
					<span class="pull-left"><a href="${pageContext.request.contextPath}/">메인화면</a></span>
					<span class="pull-right"><a href="${pageContext.request.contextPath}/login">로그인하러 가기</a></span>
				</label>
			</div>
		</form>
	</div>
</body>
</html>