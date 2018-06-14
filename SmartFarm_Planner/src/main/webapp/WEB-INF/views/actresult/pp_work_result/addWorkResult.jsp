<!-- [유국화] -->
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<title>addWorkResult</title>
	<jsp:include page="/WEB-INF/views/css.jsp"></jsp:include>
</head>
<jsp:include page="/WEB-INF/views/top.jsp"></jsp:include>
<jsp:include page="/WEB-INF/views/left.jsp"></jsp:include>
<body>
<section id="main-content">
	<section class="wrapper">
		<div class="row">
			<div class="col-lg-12">
				<h3 class="page-header"><i class="fa fa-laptop"></i>실행결과리스트별 작업단계 등록 화면</h3>				
				<form action="${pageContext.request.contextPath }/addWorkResult" method="post">
					<div>[작업단계정보]
							<div><label>실행결과리스트 넘버<input type="text" name="ppResultlistNumber"></label></div>
							<div><label>계획서 작업단계넘버<input type="text" name="ppWorkNumber"></label></div>
							<div><label>실행결과 작업 총 면적<input type="text" name="wrTotalarea"></label></div>
							<div><label>실행결과 다시 작업한 면적<input type="text" name="wrReworkarea"></label></div>
											
							<button type="submit">작업단계결과 등록</button>
					</div>
				</form>
			</div>
		</div>
	</section>
</section>
</body>
</html>