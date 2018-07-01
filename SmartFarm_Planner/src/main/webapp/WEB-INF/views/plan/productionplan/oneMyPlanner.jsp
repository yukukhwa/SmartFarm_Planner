<!-- 나성수 -->
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>oneMyPlanner</title>
<jsp:include page="/WEB-INF/views/css.jsp"/>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script>
	$(document).ready(function(){
		var listSize = ${fn:length(productionPlan.ppWorkList)};
		for(i = 1; i<=listSize; i++){
			R = Math.round(Math.random()*255);
			G = Math.round(Math.random()*255);
			B = Math.round(Math.random()*255);
			$('#color'+i).find('.panel-heading').css('background-color','rgba('+R+','+G+','+B+',.25)');
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
	<!-- container section start -->
		<jsp:include page="/WEB-INF/views/top.jsp"></jsp:include>
    <!--sidebar start-->
    	<jsp:include page="/WEB-INF/views/left.jsp"></jsp:include>
    <!--sidebar end-->
    
    <!--main content start-->
    <section id="main-content">
    	<section class="wrapper">
    		<h3 class="page-header"><i class="icon_desktop"></i>농가전용 계획서 상세화면</h3>
	    	<!--overview start-->
			<div class="row">
				<div class="col-lg-12">
					<div align="right">
						소속 : ${productionPlan.farmMember.farm.fName} / 작성자 : ${productionPlan.farmMember.fMemberName}(${productionPlan.farmMember.fMemberId}) / 등록일자 : ${productionPlan.ppRecordday}
					</div>
    				<section class="panel">
    					<header class="panel-heading">
							${productionPlan.titlePlan.ppNamePlanname}
						</header>
						<div class="panel-body">
							<div>
								계획명 : ${productionPlan.titlePlan.ppNamePlanname}
							</div>
							<div>
								계획기간 : ${productionPlan.ppStartday} ~ ${productionPlan.ppEndday}
							</div>
							<div>
								소유면적/임대면적 : ${productionPlan.ppOwnarea} / ${productionPlan.ppRentarea}
							</div>
							<c:set var="i" value="1"/>
							<c:forEach items="${productionPlan.ppWorkList}" var="ppWork">
								<div id="color${i}">
									<div class="panel-heading col-lg-12">
										<strong>${ppWork.ppWorkName}</strong>
									</div>
									<div class="panel-content" style="display:none">
										<div>
											작업기간 : ${ppWork.ppWorkStartday} ~ ${ppWork.ppWorkEndday}
										</div>
										<div>
											작업면적 : ${ppWork.ppWorkArea}
										</div>
										<div>
											작업상세내용 : ${ppWork.ppWorkContent}
										</div>
										<hr/>
										인건비
										<table class="table table-striped table-advance table-hover">
											<thead>
												<tr>
													<th>인부이름</th>
													<th>인부주민번호</th>
													<th>예상인건비(일)</th>
													<th>예상작업일</th>
												</tr>
											</thead>
											<tbody>
												<c:forEach var="woHumanPay" items="${ppWork.woHumanPayList}">
													<tr>
														<td>${woHumanPay.eHumanpayName}</td>
														<td>${woHumanPay.eHumanpayResidentnumber}</td>
														<td>${woHumanPay.eHumanpayExpectpay}</td>
														<td>${woHumanPay.eHumanpayExpectday}</td>
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
												</tr>
											</thead>
											<tbody>
												<c:forEach var="woMaterialsPay" items="${ppWork.woMaterialsPayList}">
													<tr>
														<td>${woMaterialsPay.categoryMaterials.materialsName}</td>
														<td>${woMaterialsPay.eMaterialspayUnitcost}</td>
														<td>${woMaterialsPay.eMaterialspayUse}${woMaterialsPay.categoryMaterials.materialsUnit}</td>
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
												</tr>
											</thead>
											<tbody>
												<c:forEach var="woInsurancePay" items="${ppWork.woInsurancePayList}">
													<tr>
														<td>${woInsurancePay.eInsurancepayMame}</td>
														<td>${woInsurancePay.eInsurancepayContent}</td>
														<td>${woInsurancePay.eInsurancepayStartday}</td>
														<td>${woInsurancePay.eInsurancepayEndday}</td>
														<td>${woInsurancePay.eInsurancepayTerm}</td>
														<td>
															<fmt:formatNumber type="number" value="${woInsurancePay.eInsurancepayTotalcost}" />
														</td>
														<td>${woInsurancePay.eInsurancepayExpectcost}</td>
													</tr>
												</c:forEach>
											</tbody>
										</table>
										기타지출
										<table class="table table-striped table-advance table-hover">
											<thead>
												<tr>
													<th>기타지출명</th>
													<th>기타지출상세내용</th>
													<th>예상기타지출일</th>
													<th>예상기타지출비</th>
												</tr>
											</thead>
											<tbody>
												<c:forEach var="woEtcSpendPay" items="${ppWork.woEtcSpendPayList}">
													<tr>
														<td>${woEtcSpendPay.categoryEtcSpendPay.etcspendpayName}</td>
														<td>${woEtcSpendPay.eEtcspendpayContent}</td>
														<td>${woEtcSpendPay.eEtcspendpayDay}</td>
														<td>${woEtcSpendPay.eEtcspendpayCost}</td>
													</tr>
												</c:forEach>
											</tbody>
										</table>
										필요장비계획
										<table class="table table-striped table-advance table-hover">
											<thead>
												<tr>
													<th>필요장비명</th>
													<th>계획시 보유현황</th>
													<th>대여모델명</th>
													<th>대당대여비</th>
													<th>단위대여시간</th>
												</tr>
											</thead>
											<tbody>
												<c:forEach var="woNeedEquip" items="${ppWork.woNeedEquipList}">
													<c:if test="${woNeedEquip.eNeedequipState != '대여예정' && woNeedEquip.eNeedequipState != '대여중'}">
														<tr>
															<td>${woNeedEquip.categoryEquip.equipName}</td>
															<td>${woNeedEquip.eNeedequipState}</td>
															<td>0</td>
															<td>0</td>
															<td>0</td>
														</tr>												
													</c:if>
													<c:forEach var="woNeRentPay" items="${woNeedEquip.woNeRentPayList}">
														<tr>
															<td>${woNeedEquip.categoryEquip.equipName}</td>
															<td>${woNeedEquip.eNeedequipState}</td>
															<td>${woNeRentPay.companyRentEquip.cRentModelname}</td>
															<td>${woNeRentPay.companyRentEquip.cRentCost}</td>
															<td>${woNeRentPay.companyRentEquip.cRentDate}</td>
														</tr>
													</c:forEach>
												</c:forEach>
											</tbody>
										</table>
									</div> 
								</div>
								<c:set var="i" value="${i+1}"/>
							</c:forEach>	
							<c:if test="${loginMember.corpNumber == productionPlan.farmMember.farm.fNumber}">
								<div style="float: right;">
									<a href="${pageContext.request.contextPath}/compare?number=1&ppNumber=${productionPlan.ppNumber}" class="btn btn-primary">달성도확인하러가기</a>
									<a href="${pageContext.request.contextPath}/updatePlanner?ppNumber=${productionPlan.ppNumber}" class="btn btn-warning">수정하기</a>
									<a href="${pageContext.request.contextPath}/deletePlanner?ppNumber=${productionPlan.ppNumber}" class="btn btn-danger">삭제하기</a>
								</div>
							</c:if>	
						</div>
					</section>
				</div>
			</div>
    	</section>
   	</section>
</body>
</html>