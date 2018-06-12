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
					<div>[작업단계정보]</div>
						<div><label>실행결과리스트 넘버<input type="text" name="ppResultlistNumber" value="1"></label></div>
						<div><label>계획서 작업단계넘버<input type="text" name="ppWorkNumber" value="2"></label></div>
						<div><label>실행결과 작업 총 면적<input type="text" name="wrTotalarea"></label></div>
						<div><label>실행결과 다시 작업한 면적<input type="text" name="wrReworkarea"></label></div>	
						
				
					<div>작업단계 결과별 보험비</div>
						<div><label>>>작업단계결과 넘버<input type="text" name="WrNumber" value="1"></label></div>
						<div><label>>>예상 보험비 넘버<input type="text" name="EInsurancepayNumber" value="2"></label></div>
						<div><label>>>실제 월 납부 보험비<input type="text" name="WrInsurancepayMonthcost" value="1000000" placeholder="예상 보험비 넘버로 데려온 예상 보험비 정보 넣어주기"></label></div>
						<div><label>>>실제 납부일<input type="datetime-local" name="WrInsurancepayDate"></label></div>
				
					<div>작업단계 결과별 기타지출비</div>
					<div>작업단계 결과별 원자재비</div>
					<div>작업단계 결과별 필요장비-대여비</div>
					<div>작업단계 결과별 인건비</div>
					<div>
						<button type="submit">작업단계결과 등록</button>
						</div>
					</form>
				</div>
		</div>
	</section>
</section>
</body>
</html>