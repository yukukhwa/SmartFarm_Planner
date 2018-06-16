<!-- 나성수 -->
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>onePlanner</title>
<jsp:include page="/WEB-INF/views/css.jsp"/>
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
	<!-- container section start -->
		<jsp:include page="/WEB-INF/views/top.jsp"></jsp:include>
    <!--sidebar start-->
    	<jsp:include page="/WEB-INF/views/left.jsp"></jsp:include>
    <!--sidebar end-->
    
    <!--main content start-->
    <section id="main-content">
    	<section class="wrapper">
	    	<!--overview start-->
			<div class="col">
				<div class="col-lg-10">
    				<section class="panel">
    					<header class="panel-heading">
							${productionPlan.titlePlan.ppNamePlanname}
						</header>
						<div class="panel-body">
							<c:forEach items="${productionPlan.ppWorkList}" var="ppWork">
								<div class="color">
									<div class="panel-heading col-lg-12">
										<a href="${pageContext.request.contextPath}/listWorkPlan?ppNumber=${productionPlan.ppNumber}">${ppWork.ppWorkName}</a>
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
													<th>예상일당</th>
													<th>예상작업날짜</th>
													<th>불일치</th>
													<th>실제일당</th>
													<th>실제작업날짜</th>
												</tr>
											</thead>
											<%-- <tbody>
												<c:forEach var="humanPay" items="${humanPayList}" varStatus="i">
													<tr>
														<td>${humanPay.eHumanpayName}</td>
														<td>${humanPay.eHumanpayResidentnumber}</td>
														<td>${humanPay.eHumanpayExpectpay}</td>
														<td>${humanPay.eHumanpayExpectday}</td>
														<td><input type="checkbox" name="agreement"></td>
														<td><input type="text" name="wrHumanPayDb[${i.index}].wrHumanpayRealcost"></td>
														<td><input type="Datetime-local" name="wrHumanPayDb[${i.index}].wrHumanpayDate"></td>
													</tr>
												</c:forEach>
											</tbody> --%>
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
													<c:if test="${woMaterialsPay.eMaterialspaySecret != 'false'}">
														<tr>
															<td>${woMaterialsPay.categoryMaterials.materialsName}</td>
															<td>${woMaterialsPay.eMaterialspayUnitcost}</td>
															<td>${woMaterialsPay.eMaterialspayUse}${woMaterialsPay.categoryMaterials.materialsUnit}</td>
														</tr>
													</c:if>
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
													<c:if test="${woInsurancePay.eInsurancepaySecret != 'false'}">
														<tr>
															<td>${woInsurancePay.eInsurancepayMame}</td>
															<td>${woInsurancePay.eInsurancepayContent}</td>
															<td>${woInsurancePay.eInsurancepayStartday}</td>
															<td>${woInsurancePay.eInsurancepayEndday}</td>
															<td>${woInsurancePay.eInsurancepayTerm}</td>
															<td>${woInsurancePay.eInsurancepayTotalcost}</td>
															<td>${woInsurancePay.eInsurancepayExpectcost}</td>
														</tr>
													</c:if>
												</c:forEach>
											</tbody>
										</table>
									</div>
								</div>
							</c:forEach>	
						</div>
						</section>
					</div>
				</div>
    	</section>
   	</section>
</body>
</html>