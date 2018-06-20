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
							${plannList.titlePlan.ppNamePlanname}
							<input type="text" name="productionPlan.ppNumber" value="${plannList.ppNumber}">
							<input type="text" name="farmMember.fMemberId" value="${loginMember.id}">
							<input type="text" name="farm.fNumber" value="${loginMember.corpNumber}">
						</header>
						<div class="panel-body">
							<c:forEach var="ppWorkList" items="${plannList.ppWorkList}" varStatus="i">
								<div class="color">
									<div class="panel-heading col-lg-12">${ppWorkList.ppWorkName}</div>
									<div class="panel-content" style="display:none">
										<table class="table table-striped table-advance table-hover">
											<thead>
												<tr>
													<th>예상 작업 면적</th>
													<th>총작업 면적</th>
													<th>이미작업한 면적</th>
												</tr>
											</thead>
											<tbody>
												<tr>
													<td>${ppWorkList.ppWorkArea}</td>
													<td><input type="text" name="ppWoResultList[${i.index}].wrTotalarea"></td>
													<td><input type="text" name="ppWoResultList[${i.index}].wrReworkarea"></td>
												</tr>
											</tbody>
										</table>
										인건비
										<table class="table table-striped table-advance table-hover">
											<thead>
												<tr>
													<th>인부이름</th>
													<th>인부주민번호</th>
													<th>예상일당</th>
													<th>예상작업날짜</th>
													<th>일치</th>
													<th>실제일당</th>
													<th>실제작업날짜</th>
												</tr>
											</thead>
											<tbody>
												<c:forEach var="wrHumanPayList" items="${woResultList.wrHumanPayList}" varStatus="j"><!-- 예상인건비로 교체 해야됨 -->
													<tr>
														<td>${wrHumanPayList.woHumanPay.eHumanpayName}</td>
														<td>${wrHumanPayList.woHumanPay.eHumanpayResidentnumber}</td>
														<td>${wrHumanPayList.woHumanPay.eHumanpayExpectpay}</td>
														<td>${wrHumanPayList.woHumanPay.eHumanpayExpectday}</td>
														<td><input type="checkbox"></td>
														<td><input type="text" name="ppWoResultList[${i.index}].wrHumanPayList[${j.index}].wrHumanpayRealcost"></td>
														<td><input type="date" name="ppWoResultList[${i.index}].wrHumanPayList[${j.index}].wrHumanpayDate"></td>
													</tr>
												</c:forEach>
											</tbody>
										</table>
										원자재비
										<table class="table table-striped table-advance table-hover">
											<thead>
												<tr>
													<th>원자재명</th>
													<th>원자재단가(원)</th>
													<th>예상사용량</th>
													<th>일치</th>
													<th>실제단가(원)</th>
													<th>실제사용량</th>
												</tr>
											</thead>
											<tbody>
												<c:forEach var="wrMaterialsPayList" items="${woResultList.wrMaterialsPayList}" varStatus="j"><!-- 예상원자재로 교체 -->
													<tr>
														<td>${wrMaterialsPayList.woMaterialsPay.categoryMaterials.materialsName}</td>
														<td>${wrMaterialsPayList.woMaterialsPay.eMaterialspayUnitcost}</td>
														<td>${wrMaterialsPayList.woMaterialsPay.eMaterialspayUse}${wrMaterialsPayList.woMaterialsPay.categoryMaterials.materialsUnit}</td>
														<td><input type="checkbox"></td>
														<td><input type="text" name="ppWoResultList[${i.index}].wrMaterialsPayList[${j.index}].wrMaterialspayUnitcost"></td>
														<td><input type="text" name="ppWoResultList[${i.index}].wrMaterialsPayList[${j.index}].wrMaterialspayQuantity"></td>
													</tr>
												</c:forEach>
											</tbody>
										</table>
										보험비
										<table class="table table-striped table-advance table-hover">
											<thead>
												<tr>
													<th>보험명</th>
													<th>예상 총보험비</th>
													<th>예상 보험비(월)</th>
													<th>일치</th>
													<th>실제 납부한 보험비</th>
													<th>실제 납부일</th>
												</tr>
											</thead>
											<tbody>
												<c:forEach var="wrInsurancePayList" items="${woResultList.wrInsurancePayList}" varStatus="j"><!-- 예상보험비로 교체 -->
													<tr>
														<td>${wrInsurancePayList.woInsurancePay.eInsurancepayMame}</td>
														<td>${wrInsurancePayList.woInsurancePay.eInsurancepayTotalcost}</td>
														<td>${wrInsurancePayList.woInsurancePay.eInsurancepayExpectcost}</td>
														<td><input type="checkbox"></td>
														<td><input type="text" name="ppWoResultList[${i.index}].wrInsurancePayList[${j.index}].wrInsurancepayMonthcost"></td>
														<td><input type="date" name="ppWoResultList[${i.index}].wrInsurancePayList[${j.index}].wrInsurancepayDate"></td>
													</tr>
												</c:forEach>
											</tbody>
										</table>
										기타지출비
										<table class="table table-striped table-advance table-hover">
											<thead>
												<tr>
													<th>기타지출명</th>
													<th>예상 지출비</th>
													<th>예상 지출일</th>
													<th>일치</th>
													<th>실제 지출비</th>
													<th>실제 지출일</th>
												</tr>
											</thead>
											<tbody>
												<c:forEach var="wrEtcSpendPayList" items="${woResultList.wrEtcSpendPayList}" varStatus="j"><!-- 예상으로 변경 -->
													<tr>
														<td>${wrEtcSpendPayList.woEtcSpendPay.etcspendpayNumber}</td><!-- dto 수정하면 넘버에서 이름으로 변경 -->
														<td>${wrEtcSpendPayList.woEtcSpendPay.eEtcspendpayCost}</td>
														<td>${wrEtcSpendPayList.woEtcSpendPay.eEtcspendpayDay}</td>
														<td><input type="checkbox"></td>
														<td><input type="text" name="ppWoResultList[${i.index}].wrEtcSpendPayList[${j.index}].wrEtcspendpayRealcost"></td>
														<td><input type="date" name="ppWoResultList[${i.index}].wrEtcSpendPayList[${j.index}].wrEtcspendpayDate"></td>
													</tr>
												</c:forEach>
											</tbody>
										</table>
										필요장비
										<table class="table table-striped table-advance table-hover">
											<thead>
												<tr>
													<th>장비명</th>
													<th>계획할때 보유상태</th>
													<th>실행할때 보유상태</th>
													<th>대당 사용료</th>
													<th>단위 시간(일)</th>
													<th>대여비</th>
													<th>대여비 지불일</th>
												</tr>
											</thead>
											<tbody>
												<c:forEach var="wrNeedEquipList" items="${woResultList.wrNeedEquipList}" varStatus="j"><!-- 예상으로변경 -->
													<tr>
														<td>${wrNeedEquipList.woNeedEquip.categoryEquip.equipName}</td>
														<td>${wrNeedEquipList.woNeedEquip.eNeedequipState}</td>
														<td><input type="text" name="ppWoResultList[${i.index}].wrNeedEquipList[${j.index}].wrNeedequipState"></td>
														<td>${wrNeedEquipList.wrNeRentPayList[0].woNeRentPay.companyRentEquip.cRentCost}</td>
														<td>${wrNeedEquipList.wrNeRentPayList[0].woNeRentPay.companyRentEquip.cRentDate}</td>
														<td><input type="text" name="ppWoResultList[${i.index}].wrNeedEquipList[${j.index}].wrNeRentPayList[0].neRentpayCost"></td>
														<td><input type="text" name="ppWoResultList[${i.index}].wrNeedEquipList[${j.index}].wrNeRentPayList[0].neRentpayDate"></td>
													</tr>
												</c:forEach>
											</tbody>
										</table>
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