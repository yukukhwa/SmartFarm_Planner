<!-- [유국화] -->
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<title>addWrInsurancePay</title>
	<jsp:include page="/WEB-INF/views/css.jsp"></jsp:include>
</head>
<jsp:include page="/WEB-INF/views/top.jsp"></jsp:include>
<jsp:include page="/WEB-INF/views/left.jsp"></jsp:include>
<body>
<section id="main-content">
	<section class="wrapper">
		<div class="row">
			<div class="col-lg-12">
				<h3 class="page-header"><i class="fa fa-laptop"></i>보험비결과 등록 화면(테스트)</h3>						
				<form action="${pageContext.request.contextPath}/addWrInsurancePay" method="post"><br>					
					<label>작업단계결과 넘버<input type="text" name="ppWoResult.wrNumber" value="1"></label><br>
					<label>예상 보험비 넘버<input type="text" name="woInsurancePay.eInsurancepayNumber" value="2"></label><br>
					<label>실제 월 납부 보험비<input type="text" name="wrInsurancepayMonthcost" value="1000000"></label><br>
					<label>실제 납부일<input type="date" name="wrInsurancepayDate" value="" placeholder="캘린더로 받기"></label><br>
					<button type="submit">등록</button>
				</form>			
			</div>
		</div>
	</section>
</section>
</body>
</html>