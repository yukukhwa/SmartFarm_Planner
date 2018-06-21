<!-- 나성수 -->
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>addPlanner</title>
<jsp:include page="/WEB-INF/views/css.jsp"/>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script type="text/javascript">
	$(document).ready(function(){
		$('#addPpWork').click(function(){
			var ppWorkSize = $('.ppWork').length;
			$('#ppWorkList').append('<div class="ppWork col-lg-12">'
										+'<div class="panel-heading">'
											+'작업명 : <input type="text" name="ppWorkList['+ppWorkSize+'].ppWorkName" class="ppWorkName">'
										+'</div>'
										+'<div class="panel-content">'
											+'<div>'
												+'작업기간 : <input type="date" name="ppWorkList['+ppWorkSize+'].ppWorkStartday"> ~ <input type="date" name="ppWorkList['+ppWorkSize+'].ppWorkEndday">'
											+'</div>'
											+'<div>'
												+'작업면적 : <input type="number" name="ppWorkList['+ppWorkSize+'].ppWorkArea">'
											+'</div>'
											+'<div>'
												+'작업상세내용 : <textarea rows="5" cols="100" name="ppWorkList['+ppWorkSize+'].ppWorkContent"></textarea>'
											+'</div>'
											+'<hr/>'
											+'인건비 <input type="button" value="인건비 추가" class="addHumanPay" style="float: right;">'
											+'<table class="humanPayList table table-striped table-advance table-hover">'
												+'<thead>'
													+'<tr>'
														+'<th>인부이름</th>'
														+'<th>인부주민번호</th>'
														+'<th>예상인건비(일)</th>'
														+'<th>예상작업일</th>'
														+'<th>공개/비공개</th>'
													+'</tr>'
												+'</thead>'
												+'<tbody>'
												+'</tbody>'
											+'</table>'
											+'<br>원자재 <input type="button" value="원자재 추가" class="addMaterialsPay" style="float: right;">'
											+'<table class="materialsPayList table table-striped table-advance table-hover">'
												+'<thead>'
													+'<tr>'
														+'<th>원자재명</th>'
														+'<th>예상단가</th>'
														+'<th>예상사용량</th>'
														+'<th>공개/비공개</th>'
													+'</tr>'
												+'</thead>'
												+'<tbody>'
												+'</tbody>'
											+'</table>'
											+'<br>보험비 <input type="button" value="보험비 추가" class="addInsurancePay" style="float: right;">'
											+'<table class="insurancePayList table table-striped table-advance table-hover">'
												+'<thead>'
													+'<tr>'
														+'<th>보험명</th>'
														+'<th>보험내용</th>'
														+'<th>보험가입일</th>'
														+'<th>보험만료일</th>'
														+'<th>보험가입기간</th>'
														+'<th>총보험비</th>'
														+'<th>예상보험비</th>'
														+'<th>공개/비공개</th>'
													+'</tr>'
												+'</thead>'
												+'<tbody>'
												+'</tbody>'
											+'</table>'
											+'<br>기타지출 <input type="button" value="기타지출 추가" class="addEtcSpendPay" style="float: right;">'
											+'<table class="etcSpendPayList table table-striped table-advance table-hover">'
												+'<thead>'
													+'<tr>'
														+'<th>기타지출명</th>'
														+'<th>지출상세내용</th>'
														+'<th>예상기타지출일</th>'
														+'<th>예상기타지출비</th>'
														+'<th>공개/비공개</th>'
													+'</tr>'
												+'</thead>'
												+'<tbody>'
												+'</tbody>'
											+'</table>'
										+'</div>'
									+'</div>');
			return;
		});
		
		$(document).on('click','input:radio[name="ppSecret"]',function(){
			if($(this).val() == 'true'){
				$('input:radio[value="true"]').prop('checked',true);
				$('input:radio[value="false"]').prop('checked',false);
				return;
			}
			$('input:radio[value="true"]').prop('checked',false);
			$('input:radio[value="false"]').prop('checked',true);
			return;
		});
		
		$(document).on('click','.addInsurancePay',function(){
			var ppWorkList = $(this).parents('.ppWork').find('.ppWorkName').attr('name').split('.')[0];
			var insurancePaySize = $(this).parents('.ppWork').find('.insurancePayList tbody tr').length;
			$(this).parents('.ppWork').find('.insurancePayList tbody').append('<tr>'
																		+'<td>'
																			+'<input type="text" name="'+ppWorkList+'.woInsurancePayList['+insurancePaySize+'].eInsurancepayMame">'
																			+'<input type="hidden" name="'+ppWorkList+'.woInsurancePayList['+insurancePaySize+'].categoryTheme.themeNumber" value="4">'
																		+'</td>'
																		+'<td><input type="text" name="'+ppWorkList+'.woInsurancePayList['+insurancePaySize+'].eInsurancepayContent"></td>'
																		+'<td><input type="date" name="'+ppWorkList+'.woInsurancePayList['+insurancePaySize+'].eInsurancepayStartday"></td>'
																		+'<td><input type="date" name="'+ppWorkList+'.woInsurancePayList['+insurancePaySize+'].eInsurancepayEndday"></td>'
																		+'<td><input type="number" name="'+ppWorkList+'.woInsurancePayList['+insurancePaySize+'].eInsurancepayTerm"></td>'
																		+'<td><input type="number" name="'+ppWorkList+'.woInsurancePayList['+insurancePaySize+'].eInsurancepayTotalcost"></td>'
																		+'<td><input type="number" name="'+ppWorkList+'.woInsurancePayList['+insurancePaySize+'].eInsurancepayExpectcost"></td>'
																		+'<td><input type="radio" name="'+ppWorkList+'.woInsurancePayList['+insurancePaySize+'].eInsurancepaySecret" value="true" checked="checked">공개<input type="radio" name="'+ppWorkList+'.woInsurancePayList['+insurancePaySize+'].eInsurancepaySecret" value="false">비공개</td>'
																	+'</tr>');
			return;
		});
		
		$(document).on('click','.addHumanPay',function(){
			var ppWorkList = $(this).parents('.ppWork').find('.ppWorkName').attr('name').split('.')[0];
			var humanPaySize = $(this).parents('.ppWork').find('.humanPayList tbody tr').length;
			$(this).parents('.ppWork').find('.humanPayList tbody').append('<tr>'
																				+'<td>'
																					+'<input type="text" name="'+ppWorkList+'.woHumanPayList['+humanPaySize+'].eHumanpayName">'
																					+'<input type="hidden" name="'+ppWorkList+'.woHumanPayList['+humanPaySize+'].categoryTheme.themeNumber" value="1">'
																				+'</td>'
																				+'<td><input type="text" name="'+ppWorkList+'.woHumanPayList['+humanPaySize+'].eHumanpayResidentnumber"></td>'
																				+'<td><input type="number" name="'+ppWorkList+'.woHumanPayList['+humanPaySize+'].eHumanpayExpectpay"></td>'
																				+'<td><input type="date" name="'+ppWorkList+'.woHumanPayList['+humanPaySize+'].eHumanpayExpectday"></td>'
																				+'<td><input type="radio" name="'+ppWorkList+'.woHumanPayList['+humanPaySize+'].eHumanpaySecret" value="true" checked="checked">공개<input type="radio" name="'+ppWorkList+'.woHumanPayList['+humanPaySize+'].eHumanpaySecret" value="false">비공개</td>'
																			+'</tr>');
			return;
		});
		
		$(document).on('click','.addMaterialsPay',function(){
			var ppWorkList = $(this).parents('.ppWork').find('.ppWorkName').attr('name').split('.')[0];
			var materialsPaySize = $(this).parents('.ppWork').find('.materialsPayList tbody tr').length;
			$(this).parents('.ppWork').find('.materialsPayList tbody').append('<tr>'
																					+'<td>'
																						+'<select name="'+ppWorkList+'.woMaterialsPayList['+materialsPaySize+'].categoryMaterials.materialsNumber">'
																							+'<c:forEach var="materials" items="${materialsList}">'
																								+'<option value="${materials.materialsNumber}">${materials.materialsName}(${materials.materialsUnit})</option>'
																							+'</c:forEach>'
																						+'</select>'
																					+'</td>'
																					+'<td><input type="number" name="'+ppWorkList+'.woMaterialsPayList['+materialsPaySize+'].eMaterialspayUnitcost"></td>'
																					+'<td><input type="text" name="'+ppWorkList+'.woMaterialsPayList['+materialsPaySize+'].eMaterialspayUse"></td>'
																					+'<td><input type="radio" name="'+ppWorkList+'.woMaterialsPayList['+materialsPaySize+'].eMaterialspaySecret" value="true" checked="checked">공개<input type="radio" name="'+ppWorkList+'.woMaterialsPayList['+materialsPaySize+'].eMaterialspaySecret" value="false">비공개</td>'
																				+'</tr>');
			return;
		});
		
		$(document).on('click','.addEtcSpendPay',function(){
			var ppWorkList = $(this).parents('.ppWork').find('.ppWorkName').attr('name').split('.')[0];
			var etcSpendPaySize = $(this).parents('.ppWork').find('.etcSpendPayList tbody tr').length;
			$(this).parents('.ppWork').find('.etcSpendPayList tbody').append('<tr>'
																				+'<td>'
																					+'<select name="'+ppWorkList+'.woEtcSpendPayList['+etcSpendPaySize+'].categoryEtcSpendPay.etcspendpayNumber">'
																						+'<c:forEach var="etcSpendPay" items="${etcSpendPayList}">'
																						+'<option value="${etcSpendPay.etcspendpayNumber}">${etcSpendPay.etcspendpayName}</option>'
																						+'</c:forEach>'
																					+'</select>'
																				+'</td>'
																				+'<td><input type="text" name="'+ppWorkList+'.woEtcSpendPayList['+etcSpendPaySize+'].eEtcspendpayContent"></td>'
																				+'<td><input type="date" name="'+ppWorkList+'.woEtcSpendPayList['+etcSpendPaySize+'].eEtcspendpayDay"></td>'
																				+'<td><input type="number" name="'+ppWorkList+'.woEtcSpendPayList['+etcSpendPaySize+'].eEtcspendpayCost"></td>'
																				+'<td><input type="radio" name="'+ppWorkList+'.woEtcSpendPayList['+etcSpendPaySize+'].eEtcspendpaySecret" value="true" checked="checked">공개<input type="radio" name="'+ppWorkList+'.woEtcSpendPayList['+etcSpendPaySize+'].eEtcspendpaySecret" value="false">비공개</td>'
																			+'</tr>');
			return;
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
    		<c:if test="${loginMember.level == null}">
    			<a href="${pageContext.request.contextPath}/login">
    				<strong>
    					농가로 로그인 하셔야 이용가능합니다.
    				</strong>
    			</a>
    		</c:if>
    		<c:if test="${loginMember.level == 'company' || loginMember.level == 'agency'}">
    			<a href="${pageContext.request.contextPath}/home">
    				<strong>
    					농가회원만 이용가능합니다.
    				</strong>
    			</a>
    		</c:if>
    		<c:if test="${loginMember.level == 'farm'}">
	    		<!--overview start-->
				<div class="col">
					<div class="col-lg-12">
	    				<form action="${pageContext.request.contextPath}/addPlanner" method="post">
		    				<section class="panel">
		    					<header class="panel-heading">
		    						계획명 : 
									<select name="titlePlan.ppNameNumber">
										<c:forEach var="title" items="${titleList}">
											<option value="${title.ppNameNumber}">${title.ppNamePlanname}</option>
										</c:forEach>
									</select>
									<a href="${pageContext.request.contextPath}/addTitle">계획명을 더 추가하시겠어요?</a>
									<div style="float: right;">
										<input type="radio" name="ppSecret" value="true" checked="checked">공개<input type="radio" name="ppSecret" value="false">비공개
									</div>
								</header>
								<div class="panel-body">
									<div>
										계획기간 : <input type="date" name="ppStartday"> ~ <input type="date" name="ppEndday">
									</div>
									<div>
										소유면적/임대면적 : <input type="number" name="ppOwnarea"> / <input type="number" name="ppRentarea">
									</div>
									<br>
									<div id="ppWorkList">
										<%-- <div class="ppWork col-lg-12">
											<div class="panel-heading">
												작업명 : <input type="text" name="ppWorkList[0].ppWorkName" class="ppWorkName">
											</div>
											<div class="panel-content">
												<div>
													작업기간 : <input type="date" name="ppWorkList[0].ppWorkStartday"> ~ <input type="date" name="ppWorkList[0].ppWorkEndday">
												</div>
												<div>
													작업면적 : <input type="number" name="ppWorkList[0].ppWorkArea">
												</div>
												<div>
													작업상세내용 : <textarea rows="5" cols="100" name="ppWorkList[0].ppWorkContent"></textarea>
												</div>
												<hr/>
												인건비 <input type="button" value="인건비 추가" class="addHumanPay" style="float: right;">
												<table class="humanPayList table table-striped table-advance table-hover">
													<thead>
														<tr>
															<th>인부이름</th>
															<th>인부주민번호</th>
															<th>예상인건비(일)</th>
															<th>예상작업일</th>
															<th>공개/비공개</th>
														</tr>
													</thead>
													<tbody>
														<tr>
															<td>
																<input type="text" name="ppWorkList[0].woHumanPayList[0].eHumanpayName">
																<input type="hidden" name="ppWorkList[0].woHumanPayList[0].categoryTheme.themeNumber" value="1">
															</td>
															<td><input type="text" name="ppWorkList[0].woHumanPayList[0].eHumanpayResidentnumber"></td>
															<td><input type="number" name="ppWorkList[0].woHumanPayList[0].eHumanpayExpectpay"></td>
															<td><input type="date" name="ppWorkList[0].woHumanPayList[0].eHumanpayExpectday"></td>
															<td><input type="radio" name="ppWorkList[0].woHumanPayList[0].eHumanpaySecret" value="true" checked="checked">공개<input type="radio" name="ppWorkList[0].woHumanPayList[0].eHumanpaySecret" value="false">비공개</td>
														</tr>
													</tbody>
												</table>
												<br>원자재 <input type="button" value="원자재 추가" class="addMaterialsPay" style="float: right;">
												<table class="materialsPayList table table-striped table-advance table-hover">
													<thead>
														<tr>
															<th>원자재명</th>
															<th>예상단가</th>
															<th>예상사용량</th>
															<th>공개/비공개</th>
														</tr>
													</thead>
													<tbody>
														<tr>
															<td>
																<select name="ppWorkList[0].woMaterialsPayList[0].categoryMaterials.materialsNumber">
																	<c:forEach var="materials" items="${materialsList}">
																		<option value="${materials.materialsNumber}">${materials.materialsName}(${materials.materialsUnit})</option>
																	</c:forEach>
																</select>
															</td>
															<td><input type="number" name="ppWorkList[0].woMaterialsPayList[0].eMaterialspayUnitcost"></td>
															<td><input type="text" name="ppWorkList[0].woMaterialsPayList[0].eMaterialspayUse"></td>
															<td><input type="radio" name="ppWorkList[0].woMaterialsPayList[0].eMaterialspaySecret" value="true" checked="checked">공개<input type="radio" name="ppWorkList[0].woMaterialsPayList[0].eMaterialspaySecret" value="false">비공개</td>
														</tr>
													</tbody>
												</table>
												<br>보험비 <input type="button" value="보험비 추가" class="addInsurancePay" style="float: right;">
												<table class="insurancePayList table table-striped table-advance table-hover">
													<thead>
														<tr>
															<th>보험명</th>
															<th>보험내용</th>
															<th>보험가입일</th>
															<th>보험만료일</th>
															<th>보험가입기간</th>
															<th>총보험비</th>
															<th>예상보험비</th>
															<th>공개/비공개</th>
														</tr>
													</thead>
													<tbody>
														<tr>
															<td>
																<input type="text" name="ppWorkList[0].woInsurancePayList[0].eInsurancepayMame">
																<input type="hidden" name="ppWorkList[0].woInsurancePayList[0].categoryTheme.themeNumber" value="4">
															</td>
															<td><input type="text" name="ppWorkList[0].woInsurancePayList[0].eInsurancepayContent"></td>
															<td><input type="date" name="ppWorkList[0].woInsurancePayList[0].eInsurancepayStartday"></td>
															<td><input type="date" name="ppWorkList[0].woInsurancePayList[0].eInsurancepayEndday"></td>
															<td><input type="number" name="ppWorkList[0].woInsurancePayList[0].eInsurancepayTerm"></td>
															<td><input type="number" name="ppWorkList[0].woInsurancePayList[0].eInsurancepayTotalcost"></td>
															<td><input type="number" name="ppWorkList[0].woInsurancePayList[0].eInsurancepayExpectcost"></td>
															<td><input type="radio" name="ppWorkList[0].woInsurancePayList[0].eInsurancepaySecret" value="true" checked="checked">공개<input type="radio" name="ppWorkList[0].woInsurancePayList[0].eInsurancepaySecret" value="false">비공개</td>
														</tr>
													</tbody>
												</table>
												<br>기타지출 <input type="button" value="기타지출 추가" class="addEtcSpendPay" style="float: right;">
												<table class="etcSpendPayList table table-striped table-advance table-hover">
													<thead>
														<tr>
															<th>기타지출명</th>
															<th>지출상세내용</th>
															<th>예상기타지출일</th>
															<th>예상기타지출비</th>
															<th>공개/비공개</th>
														</tr>
													</thead>
													<tbody>
														<tr>
															<td>
																<select name="ppWorkList[0].woEtcSpendPayList[0].categoryEtcSpendPay.etcspendpayNumber">
									    							<c:forEach var="etcSpendPay" items="${etcSpendPayList}">
									    							<option value="${etcSpendPay.etcspendpayNumber}">${etcSpendPay.etcspendpayName}</option>
									    							</c:forEach>
									    						</select>
															</td>
															<td><input type="text" name="ppWorkList[0].woEtcSpendPayList[0].eEtcspendpayContent"></td>
															<td><input type="date" name="ppWorkList[0].woEtcSpendPayList[0].eEtcspendpayDay"></td>
															<td><input type="number" name="ppWorkList[0].woEtcSpendPayList[0].eEtcspendpayCost"></td>
															<td><input type="radio" name="ppWorkList[0].woEtcSpendPayList[0].eEtcspendpaySecret" value="true" checked="checked">공개<input type="radio" name="ppWorkList[0].woEtcSpendPayList[0].eEtcspendpaySecret" value="false">비공개</td>
														</tr>
													</tbody>
												</table>
												<br>필요장비계획 <input type="button" value="보험비 추가" class="addInsurancePay" style="float: right;">
												<table class="insurancePayList table table-striped table-advance table-hover">
													<thead>
														<tr>
															<th>보험명</th>
															<th>보험내용</th>
															<th>보험가입일</th>
															<th>보험만료일</th>
															<th>보험가입기간</th>
															<th>총보험비</th>
															<th>예상보험비</th>
															<th>공개/비공개</th>
														</tr>
													</thead>
													<tbody>
														<tr>
															<td>
																<input type="text" name="ppWorkList[0].woInsurancePayList[0].eInsurancepayMame">
																<input type="hidden" name="ppWorkList[0].woInsurancePayList[0].categoryTheme.themeNumber" value="4">
															</td>
															<td><input type="text" name="ppWorkList[0].woInsurancePayList[0].eInsurancepayContent"></td>
															<td><input type="date" name="ppWorkList[0].woInsurancePayList[0].eInsurancepayStartday"></td>
															<td><input type="date" name="ppWorkList[0].woInsurancePayList[0].eInsurancepayEndday"></td>
															<td><input type="number" name="ppWorkList[0].woInsurancePayList[0].eInsurancepayTerm"></td>
															<td><input type="number" name="ppWorkList[0].woInsurancePayList[0].eInsurancepayTotalcost"></td>
															<td><input type="number" name="ppWorkList[0].woInsurancePayList[0].eInsurancepayExpectcost"></td>
															<td><input type="radio" name="ppWorkList[0].woInsurancePayList[0].eInsurancepaySecret" value="true" checked="checked">공개<input type="radio" name="ppWorkList[0].woInsurancePayList[0].eInsurancepaySecret" value="false">비공개</td>
														</tr>
													</tbody>
												</table>
											</div>
										</div> --%>
									</div>
									<input type="button" value="작업단계 추가" id="addPpWork">
								</div>
							</section>
							<button type="submit">등록</button>
	    				</form>
					</div>
				</div>
    		</c:if>
    	</section>
   	</section>
</body>
</html>