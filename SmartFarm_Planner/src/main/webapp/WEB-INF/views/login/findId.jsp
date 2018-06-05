<!-- [유국화] -->
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<meta name="description" content="Creative - Bootstrap 3 Responsive Admin Template">
	<meta name="author" content="GeeksLabs">
	<meta name="keyword" content="Creative, Dashboard, Admin, Template, Theme, Bootstrap, Responsive, Retina, Minimal">
	<link rel="shortcut icon" href="img/favicon.png">
	<title>findFarmId</title>
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
		<form class="login-form" id="findMemberId" action="${pageContext.request.contextPath}/findId" method="post">
			<div class="login-wrap">
				<p class="login-img" style="font-size: 40px">아이디 찾기</p>
				<div class="input-group">
					<input type="radio" name="Corp" value="농가" checked="checked">농가
					<input type="radio" name="Corp" value="업체">업체
					<input type="radio" name="Corp" value="관리기관">관리기관
				</div>
				<label>이름</label>
				<div class="input-group">
					<span class="input-group-addon"><i class="icon_profile"></i></span>					
					<input type="text" class="form-control" name="MemberName" value="유국화" placeholder="회원이름을 입력해주세요." autofocus>
				</div>
				<label>이메일</label>
				<div class="input-group">
					<span class="input-group-addon"><i class="icon_key_alt"></i></span>					
					<input type="text" class="form-control" name="MemberEmail" value="cjsghkz@naver.com" placeholder="@을 포함한 이메일을 입력해주세요.">
				</div>
				<label class="checkbox">
					<span class="pull-right"><a href="${pageContext.request.contextPath}/findPw">비밀번호 찾기</a></span>
				</label>
				<button class="btn btn-primary btn-lg btn-block" type="submit">찾기</button>
			</div>
		</form>
	</div>	
</body>
</html>