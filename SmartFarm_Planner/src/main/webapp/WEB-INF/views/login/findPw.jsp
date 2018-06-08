<!-- [유국화] -->
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<title>findFarmPw</title>
	<jsp:include page="/WEB-INF/views/css.jsp"></jsp:include>
</head>
<jsp:include page="/WEB-INF/views/top.jsp"></jsp:include>
<jsp:include page="/WEB-INF/views/left.jsp"></jsp:include>
<body class="login-img3-body">
	<div class="container">
		<form class="login-form" id="findMemberPw" action="${pageContext.request.contextPath}/findPw" method="post">
			<div class="login-wrap">
				<p class="login-img" style="font-size: 40px">비밀번호 찾기</p>
				<div class="input-group">
					<input type="radio" name="corp" value="농가" checked="checked">농가
					<input type="radio" name="corp" value="업체">업체
					<input type="radio" name="corp" value="관리기관">관리기관
				</div>
				<label>아이디</label>
				<div class="input-group">
					<span class="input-group-addon"><i class="icon_profile"></i></span>
					<input type="text" class="form-control" name="memberId" value="cjsghka" placeholder="아이디를 입력해주세요." autofocus>
				</div>
				<label>이름</label>
				<div class="input-group">
					<span class="input-group-addon"><i class="icon_profile"></i></span>
					<input type="text" class="form-control" name="memberName" value="유국화" placeholder="이름을 입력해주세요.">
				</div>
				<label>소속</label>
				<div class="input-group">
					<span class="input-group-addon"><i class="icon_profile"></i></span>
					<input type="text" class="form-control" name="corpName" value="국화농장" placeholder="소속단체를 입력해주세요.">
				</div>
				<label>이메일</label>
				<div class="input-group">
					<span class="input-group-addon"><i class="icon_key_alt"></i></span>
					<input type="text" class="form-control" name="memberEmail" value="cjsghkz@naver.com" placeholder="@을 포함한 이메일을 입력해주세요.">
				</div>
				<button class="btn btn-primary btn-lg btn-block" type="submit">찾기</button>
			</div>
		</form>
	</div>	
</body>
</html>