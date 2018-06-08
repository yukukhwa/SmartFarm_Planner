<!-- [유국화] -->
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<title>resultFarmId</title>
	<jsp:include page="/WEB-INF/views/css.jsp"></jsp:include>	
</head>
<jsp:include page="/WEB-INF/views/top.jsp"></jsp:include>
<jsp:include page="/WEB-INF/views/left.jsp"></jsp:include>
<body class="login-img3-body">
	<div class="container">
		<form class="login-form">
			<div class="login-wrap">
				<p class="login-img" style="font-size: 35px">아이디 찾기 성공!</p>				
				<div class="input-group">
					<span class="input-group-addon"><i class="icon_key_alt"></i></span>
					<input type="text" class="form-control" name="id" value="${resultid}">
				</div>
				<label class="checkbox">
					<span class="pull-right"><a href="${pageContext.request.contextPath}/findPw">비밀번호 찾기</a></span>
				</label>
			</div>
		</form>
	</div>
</body>
</html>