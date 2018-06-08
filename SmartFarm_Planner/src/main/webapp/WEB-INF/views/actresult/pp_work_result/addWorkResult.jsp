<!-- [유국화] -->
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
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
실행결과리스트별 작업단계 등록 화면
<section id="main-content">
	<section class="wrapper">
		<div class="row">
			<div class="col-lg-12">
				<h3 class="page-header"><i class="fa fa-laptop"></i>기타지출비결과 등록 화면</h3>				
					<form action="${pageContext.request.contextPath }/addWorkResult" method="post">
						<input type="text" name="ppResultlistNumber">
						<input type="text" name="ppWorkNumber">
						<input type="text" name="wrTotalarea">
						<input type="text" name="wrReworkarea">
						<!-- <input type="text" name="insuranceList"> -->
						<input type="hidden" name="WrNumber" value="1">
						<input type="hidden" name="EInsurancepayNumber" value="2">
						<label>실제 월 납부 보험비<input type="text" name="WrInsurancepayMonthcost" value="1000000" placeholder="예상 보험비 넘버로 데려온 예상 보험비 정보 넣어주기"></label>
						<label>실제 납부일<input type="datetime-local" name="WrInsurancepayDate" value="" placeholder="캘린더로 받기"></label>
						
						<button type="submit">등록</button>
					</form>
				</div>
		</div>
	</section>
</section>
</body>
</html>