<!-- [유국화] -->
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<title>addWrEtcSpendPay</title>
	<jsp:include page="/WEB-INF/views/css.jsp"></jsp:include>
</head>
<jsp:include page="/WEB-INF/views/top.jsp"></jsp:include>
<jsp:include page="/WEB-INF/views/left.jsp"></jsp:include>
<body>
<section id="main-content">
	<section class="wrapper">
		<div class="row">
			<div class="col-lg-12">
				<h3 class="page-header"><i class="fa fa-laptop"></i>기타지출비결과 등록 화면</h3>	
				<form action="${pageContext.request.contextPath }/addWrEtcSpendPay" method="post">					
					<div><label>작업단계결과 넘버<input type="text" name="ppWoResult.wrNumber" value=""></label></div>
					<div><label>예상 기타지출비용 넘버<input type="text" name="woEtcSpendPay.eEtcspendpayNumber" value=""></label></div>
					<div><label>작업단계결과별 실제 기타지출비<input type="text" name="wrEtcspendpayRealcost" ></label></div>
					<div><label>작업단계별 기타지출비 등록일<input type="date" name="wrEtcspendpayDate" ></label></div>
					<button type="submit">등록</button>
				</form>				
			</div>
		</div>
	</section>
</section>
</body>
</html>