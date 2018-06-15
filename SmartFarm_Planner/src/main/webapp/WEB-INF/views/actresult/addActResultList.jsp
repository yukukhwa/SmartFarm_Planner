<!-- [김기성] -->
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<title>addActResultList.jsp</title>
	<jsp:include page="/WEB-INF/views/css.jsp"></jsp:include>
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
	<script>
		$(document).ready(function(){
			var num = Math.random()*4;
			if(Math.ceil(num) == 0) {
				$('.color').attr('class', 'panel panel-success');
			} else if(Math.ceil(num) == 1) {
				$('.color').attr('class', 'panel panel-primary');
			} else if(Math.ceil(num) == 2) {
				$('.color').attr('class', 'panel panel-warning');
			} else if(Math.ceil(num) == 3) {
				$('.color').attr('class', 'panel panel-danger');
			} else if(Math.ceil(num) == 4) {
				$('.color').attr('class', 'panel panel-info');
			}
			$('.panel-heading').click(function(){
				if($(this).parent('div').find('.panel-content').css("display") == "none"){
					$(this).parent('div').find('.panel-content').show();
				}else{
					$(this).parent('div').find('.panel-content').hide();
				}
				
			});
		});
	</script>
</head>
<body>
<jsp:include page="/WEB-INF/views/top.jsp"></jsp:include>
<jsp:include page="/WEB-INF/views/left.jsp"></jsp:include>
<!--main content start-->
<section id="main-content">
	<section class="wrapper">
		<!--overview start-->
		<div class="col">
			<div class="col-lg-10">
				<h3 class="page-header"><i class="fa fa-table"></i> 실행결과등록</h3>
				<section class="panel">
					<form action="${pageContext.request.contextPath}/insertActResult" method="post">
						<header class="panel-heading">
							{계획서명}
							<input type="text" name="productionPlan.ppNumber" value="${ppNumber}">
							<input type="text" name="farmMember.fMemberId" value="${loginMember.id}">
							<input type="text" name="farm.fNumber" value="${loginMember.corpNumber}">
						</header>
						<div class="panel-body">
							<c:forEach var="i" begin="0" end="0">
								<div class="color">
									<div class="panel-heading col-lg-12">{작업단계명}</div>
									<div class="panel-content" style="display:none">
										인건비
										<input type="text" name="ppWoResult.wrNumber">
										<input type="text" name="woHumanPay.eHumanpayNumber">
										<input type="text" name="wrHumanpayRealcost">
										<input type="date" name="wrHumanpayDate">
										<%-- <table class="table table-striped table-advance table-hover">
											<thead>
												<tr>
													<th>인부이름</th>
													<th>인부주민번호</th>
													<th>예상일당</th>
													<th>예상작업날짜</th>
													<th>불일치</th>
													<th>실제일당</th>
													<th>실제작업날짜</th>
												</tr>
											</thead>
											<tbody>
												<c:forEach var="humanPay" items="${humanPayList}" varStatus="i">
													<tr>
														<td>${humanPay.eHumanpayName}</td>
														<td>${humanPay.eHumanpayResidentnumber}</td>
														<td>${humanPay.eHumanpayExpectpay}</td>
														<td>${humanPay.eHumanpayExpectday}</td>
														<td><input type="checkbox" name="agreement"></td>
														<td><input type="text" name="wrHumanPay[${i.index}].wrHumanpayRealcost"></td>
														<td><input type="Datetime-local" name="wrHumanPay[${i.index}].wrHumanpayDate"></td>
													</tr>
												</c:forEach>
											</tbody>
										</table>
										원자재
										<table class="table table-striped table-advance table-hover">
											<thead>
												<tr>
													<th>원자재명</th>
													<th>예상단가</th>
													<th>예상사용량</th>
													<th>불일치</th>
													<th>실제단가</th>
													<th>실제사용량</th>
												</tr>
											</thead>
											<tbody>
												<c:forEach var="" items="">
													<tr>
														<td>원자재명</td>
														<td>원자재명</td>
														<td>원자재명</td>
														<td><input type="radio" name="agreement"></td>
														<td>원자재명</td>
														<td>원자재명</td>
													</tr>
												</c:forEach>
											</tbody>
										</table>
										보험비
										<table class="table table-striped table-advance table-hover">
											<thead>
												<tr>
													<th>보험명</th>
													<th>보험내용</th>
													<th>보험가입일</th>
													<th>보험만료일</th>
													<th>보험가입기간</th>
													<th>총보험비</th>
													<th>예상보험비</th>
													<th>불일치</th>
													<th>납부한보험비</th>
													<th>납부일</th>
												</tr>
											</thead>
											<tbody>
												<c:forEach var="" items="">
													<tr>
														<td>보험명</td>
														<td>보험내용</td>
														<td>보험가입일</td>
														<td>보험만료일</td>
														<td>보험가입기간</td>
														<td>총보험비</td>
														<td>예상보험비</td>
														<td><input type="radio" name="agreement"></td>
														<td>납부한보험비</td>
														<td><input type="datetime-local"></td>
													</tr>
												</c:forEach>
											</tbody>
										</table> --%>
									</div>
								</div>
							</c:forEach>
						</div>
						<button type="submit">등록</button>
					</form>
				</section>
			</div>
		</div>
	</section>
</section>
</body>
</html>