<!-- [유국화] -->
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<title>resultFarmPw</title>
	<jsp:include page="/WEB-INF/views/css.jsp"></jsp:include>
</head>
<jsp:include page="/WEB-INF/views/top.jsp"></jsp:include>
<jsp:include page="/WEB-INF/views/left.jsp"></jsp:include>
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