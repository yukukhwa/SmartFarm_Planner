<!-- 나성수 -->
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>updatePlanner</title>
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
		
		$(document).on('change','.eInsurancepayEndday',function(){
			var eInsurancepayStartday = $(this).parents('tr').find('.eInsurancepayStartday').val();
			var eInsurancepayEndday = $(this).val();
			//alert(eInsurancepayStartday);
			//alert(eInsurancepayEndday);
			var eInsurancepayStartdayArray = '';
			var eInsurancepayEnddayArray = '';
			if(eInsurancepayStartday == ''){
				alert('보험가입일자를 선택해주세요.');
				return;
			}
			eInsurancepayStartdayArray = eInsurancepayStartday.split('-');
			eInsurancepayEnddayArray = eInsurancepayEndday.split('-');
			eInsurancepayStartday = new Date(eInsurancepayStartdayArray[0],eInsurancepayStartdayArray[1],eInsurancepayStartdayArray[2]);
			eInsurancepayEndday = new Date(eInsurancepayEnddayArray[0],eInsurancepayEnddayArray[1],eInsurancepayEnddayArray[2]);
			if(eInsurancepayStartday.getTime() > eInsurancepayEndday.getTime()){
				alert('보험가입만료일이 보험가입시작일보단 빠를수없습니다.');
				return;
			}
			//alert(eInsurancepayStartday);
			//alert(eInsurancepayEndday);
			var eInsurancepayTerm = (eInsurancepayEndday-eInsurancepayStartday)/12/30/24/60/60/1000;
			//alert(eInsurancepayTerm);
			$(this).parents('tr').find('.eInsurancepayTerm').val(eInsurancepayTerm.toFixed(1));
			return;
		});
		
		$(document).on('keyup','.eInsurancepayTotalcost',function(){
			var eInsurancepayTotalcost = $(this).val();
			var eInsurancepayTerm = $(this).parents('tr').find('.eInsurancepayTerm').val();
			var eInsurancepayExpectcost = eInsurancepayTotalcost/(eInsurancepayTerm*12);
			//alert(eInsurancepayExpectcost);
			$(this).parents('tr').find('.eInsurancepayExpectcost').val(eInsurancepayExpectcost.toFixed(2));
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
    		<h3 class="page-header"><i class="icon_desktop"></i> 계획서 수정화면</h3>
    		<!--overview start-->
			<div class="col">
				<div class="col-lg-12">
					<div align="right">
						소속 : ${productionPlan.farmMember.farm.fName} / 작성자 : ${productionPlan.farmMember.fMemberName}(${productionPlan.farmMember.fMemberId}) / 등록일자 : ${productionPlan.ppRecordday}
					</div>
					<form action="${pageContext.request.contextPath}/updatePlanner" method="post">
	    				<section class="panel">
	    					<header class="panel-heading">
	    						계획명 :
								<select name="titlePlan.ppNameNumber" id="ppNameNumber">
				   					<c:forEach items="${titleList}" var="title">
				   						<c:if test="${productionPlan.titlePlan.ppNameNumber == title.ppNameNumber}">
				   							<option value="${title.ppNameNumber}" selected="selected">${title.ppNamePlanname}</option>
				   						</c:if>
				   						<c:if test="${productionPlan.titlePlan.ppNameNumber != title.ppNameNumber}">
				   							<option value="${title.ppNameNumber}">${title.ppNamePlanname}</option>
				   						</c:if>
				   					</c:forEach>
				   				</select>
								<input type="hidden" name="ppNumber" id="ppNumber" value="${productionPlan.ppNumber}">
								<div style="float: right;">
									<c:if test="${productionPlan.ppSecret == 'true'}">
										<input type="radio" name="ppSecret" value="true" checked="checked">공개<input type="radio" name="ppSecret" value="false">비공개
									</c:if>
									<c:if test="${productionPlan.ppSecret == 'false'}">
										<input type="radio" name="ppSecret" value="true">공개<input type="radio" name="ppSecret" value="false" checked="checked">비공개
									</c:if>
								</div>
							</header>
							<div class="panel-body">
								<div>
				    				계획 기간 : <input type="date" name="ppStartday" id="ppStartday" value="${productionPlan.ppStartday}"> ~ <input type="date" name="ppEndday" id="ppEndday" value="${productionPlan.ppEndday}">
				    			</div>
				    			<div>
				    				소유면적 : <input type="number" name="ppOwnarea" id="ppOwnarea" value="${productionPlan.ppOwnarea}">
				    			</div>
				    			<div>
				    				임대면적 : <input type="number" name="ppRentarea" id="ppRentarea" value="${productionPlan.ppRentarea}">
				    			</div>
								<c:set var="i" value="1"/>
								<c:forEach items="${productionPlan.ppWorkList}" var="ppWork" varStatus="j">
									<div id="color${i}">
										<div class="panel-heading col-lg-12">
											<span>
												작업명 : <input type="text" name="ppWorkList[${j.index}].ppWorkName" value="${ppWork.ppWorkName}" class="ppWorkName">
												<input type="hidden" name="ppWorkList[${j.index}].ppWorkNumber" value="${ppWork.ppWorkNumber}">
											</span>
										</div>
										<div class="panel-content" style="display:none">
											<div>
												작업기간 : <input type="date" name="ppWorkList[${j.index}].ppWorkStartday" value="${ppWork.ppWorkStartday}"> ~ <input type="date" name="ppWorkList[${j.index}].ppWorkEndday" value="${ppWork.ppWorkEndday}">
											</div>
											<div>
												작업면적 : <input type="number" name="ppWorkList[${j.index}].ppWorkArea" value="${ppWork.ppWorkArea}">
											</div>
											<div>
												작업상세내용 : <textarea rows="5" cols="100" name="ppWorkList[${j.index}].ppWorkContent">${ppWork.ppWorkContent}</textarea>
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
														<th>공개/비공개</th>
													</tr>
												</thead>
												<tbody>
													<c:forEach var="woHumanPay" items="${ppWork.woHumanPayList}" varStatus="k">
														<tr>
															<td>
																<input type="text" name="ppWorkList[${j.index}].woHumanPayList[${k.index}].eHumanpayName" value="${woHumanPay.eHumanpayName}">
																<input type="hidden" name="ppWorkList[${j.index}].woHumanPayList[${k.index}].eHumanpayNumber" value="${woHumanPay.eHumanpayNumber}">
															</td>
															<td><input type="text" name="ppWorkList[${j.index}].woHumanPayList[${k.index}].eHumanpayResidentnumber" value="${woHumanPay.eHumanpayResidentnumber}"></td>
															<td><input type="number" name="ppWorkList[${j.index}].woHumanPayList[${k.index}].eHumanpayExpectpay" value="${woHumanPay.eHumanpayExpectpay}"></td>
															<td><input type="date" name="ppWorkList[${j.index}].woHumanPayList[${k.index}].eHumanpayExpectday" value="${woHumanPay.eHumanpayExpectday}"></td>
															<td>
																<c:if test="${woHumanPay.eHumanpaySecret == 'true'}">
																	<input type="radio" name="ppWorkList[${j.index}].woHumanPayList[${k.index}].eHumanpaySecret" value="true" checked="checked">공개<input type="radio" name="ppWorkList[${j.index}].woHumanPayList[${k.index}].eHumanpaySecret" value="false">비공개
																</c:if>
																<c:if test="${woHumanPay.eHumanpaySecret == 'false'}">
																	<input type="radio" name="ppWorkList[${j.index}].woHumanPayList[${k.index}].eHumanpaySecret" value="true">공개<input type="radio" name="ppWorkList[${j.index}].woHumanPayList[${k.index}].eHumanpaySecret" value="false" checked="checked">비공개
																</c:if>
															</td>
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
														<th>공개/비공개</th>
													</tr>
												</thead>
												<tbody>
													<c:forEach var="woMaterialsPay" items="${ppWork.woMaterialsPayList}" varStatus="k">
														<tr>
															<td>
																<select name="ppWorkList[${j.index}].woMaterialsPayList[${k.index}].categoryMaterials.materialsNumber" disabled="disabled">
																	<c:forEach var="materials" items="${materialsList}">
																		<c:if test="${woMaterialsPay.categoryMaterials.materialsName == materials.materialsName}">
																			<option value="${materials.materialsNumber}" selected="selected">${materials.materialsName}(${materials.materialsUnit})</option>
																		</c:if>
																		<c:if test="${woMaterialsPay.categoryMaterials.materialsName != materials.materialsName}">
																			<option value="${materials.materialsNumber}">${materials.materialsName}(${materials.materialsUnit})</option>
																		</c:if>
																	</c:forEach>
																</select>
																<input type="hidden" name="ppWorkList[${j.index}].woMaterialsPayList[${k.index}].eMaterialspayNumber" value="${woMaterialsPay.eMaterialspayNumber}">
															</td>
															<td><input type="number" name="ppWorkList[${j.index}].woMaterialsPayList[${k.index}].eMaterialspayUnitcost" value="${woMaterialsPay.eMaterialspayUnitcost}"></td>
															<td><input type="text" name="ppWorkList[${j.index}].woMaterialsPayList[${k.index}].eMaterialspayUse" value="${woMaterialsPay.eMaterialspayUse}"></td>
															<td>
																<c:if test="${woMaterialsPay.eMaterialspaySecret == 'true'}">
																	<input type="radio" name="ppWorkList[${j.index}].woMaterialsPayList[${k.index}].eMaterialspaySecret" value="true" checked="checked">공개<input type="radio" name="ppWorkList[${j.index}].woMaterialsPayList[${k.index}].eMaterialspaySecret" value="false">비공개
																</c:if>
																<c:if test="${woMaterialsPay.eMaterialspaySecret == 'false'}">
																	<input type="radio" name="ppWorkList[${j.index}].woMaterialsPayList[${k.index}].eMaterialspaySecret" value="true">공개<input type="radio" name="ppWorkList[${j.index}].woMaterialsPayList[${k.index}].eMaterialspaySecret" value="false" checked="checked">비공개
																</c:if>
															</td>
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
													<c:forEach var="woInsurancePay" items="${ppWork.woInsurancePayList}" varStatus="k">
														<tr>
															<td>
																<input type="text" name="ppWorkList[${j.index}].woInsurancePayList[${k.index}].eInsurancepayMame" value="${woInsurancePay.eInsurancepayMame}">
																<input type="hidden" name="ppWorkList[${j.index}].woInsurancePayList[${k.index}].eInsurancepayNumber" value="${woInsurancePay.eInsurancepayNumber}">
															</td>
															<td><input type="text" name="ppWorkList[${j.index}].woInsurancePayList[${k.index}].eInsurancepayContent" value="${woInsurancePay.eInsurancepayContent}"></td>
															<td><input type="date" name="ppWorkList[${j.index}].woInsurancePayList[${k.index}].eInsurancepayStartday" value="${woInsurancePay.eInsurancepayStartday}" class="eInsurancepayStartday"></td>
															<td><input type="date" name="ppWorkList[${j.index}].woInsurancePayList[${k.index}].eInsurancepayEndday" value="${woInsurancePay.eInsurancepayEndday}" class="eInsurancepayEndday"></td>
															<td><input type="number" name="ppWorkList[${j.index}].woInsurancePayList[${k.index}].eInsurancepayTerm" value="${woInsurancePay.eInsurancepayTerm}" class="eInsurancepayTerm" readonly="readonly"></td>
															<td><input type="number" name="ppWorkList[${j.index}].woInsurancePayList[${k.index}].eInsurancepayTotalcost" value="${woInsurancePay.eInsurancepayTotalcost}" class="eInsurancepayTotalcost"></td>
															<td><input type="text" name="ppWorkList[${j.index}].woInsurancePayList[${k.index}].eInsurancepayExpectcost" value="${woInsurancePay.eInsurancepayExpectcost}" class="eInsurancepayExpectcost" readonly="readonly"></td>
															<td>
																<c:if test="${woInsurancePay.eInsurancepaySecret == 'true'}">
																	<input type="radio" name="ppWorkList[${j.index}].woInsurancePayList[${k.index}].eInsurancepaySecret" value="true" checked="checked">공개<input type="radio" name="ppWorkList[${j.index}].woInsurancePayList[${k.index}].eInsurancepaySecret" value="false">비공개
																</c:if>
																<c:if test="${woInsurancePay.eInsurancepaySecret == 'false'}">
																	<input type="radio" name="ppWorkList[${j.index}].woInsurancePayList[${k.index}].eInsurancepaySecret" value="true">공개<input type="radio" name="ppWorkList[${j.index}].woInsurancePayList[${k.index}].eInsurancepaySecret" value="false" checked="checked">비공개
																</c:if>
															</td>
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
													<c:forEach var="woEtcSpendPay" items="${ppWork.woEtcSpendPayList}" varStatus="k">
														<tr>
															<td>
																<select name="ppWorkList[${j.index}].woEtcSpendPayList[${k.index}].categoryEtcSpendPay.etcspendpayNumber">
									    							<c:forEach var="etcSpendPay" items="${etcSpendPayList}">
									    								<c:if test="${woEtcSpendPay.categoryEtcSpendPay.etcspendpayName == etcSpendPay.etcspendpayName}">
									    									<option value="${etcSpendPay.etcspendpayNumber}" selected="selected">${etcSpendPay.etcspendpayName}</option>
									    								</c:if>
									    								<c:if test="${woEtcSpendPay.categoryEtcSpendPay.etcspendpayName != etcSpendPay.etcspendpayName}">
									    									<option value="${etcSpendPay.etcspendpayNumber}">${etcSpendPay.etcspendpayName}</option>
									    								</c:if>
									    							</c:forEach>
									    						</select>
									    						<input type="hidden" name="ppWorkList[${j.index}].woEtcSpendPayList[${k.index}].eEtcspendpayNumber" value="${woEtcSpendPay.eEtcspendpayNumber}">
															</td>
															<td><input type="text" name="ppWorkList[${j.index}].woEtcSpendPayList[${k.index}].eEtcspendpayContent" value="${woEtcSpendPay.eEtcspendpayContent}"></td>
															<td><input type="date" name="ppWorkList[${j.index}].woEtcSpendPayList[${k.index}].eEtcspendpayDay" value="${woEtcSpendPay.eEtcspendpayDay}"></td>
															<td><input type="number" name="ppWorkList[${j.index}].woEtcSpendPayList[${k.index}].eEtcspendpayCost" value="${woEtcSpendPay.eEtcspendpayCost}"></td>
															<td>
																<c:if test="${woEtcSpendPay.eEtcspendpaySecret == 'true'}">
																	<input type="radio" name="ppWorkList[${j.index}].woEtcSpendPayList[${k.index}].eEtcspendpaySecret" value="true" checked="checked">공개<input type="radio" name="ppWorkList[${j.index}].woEtcSpendPayList[${k.index}].eEtcspendpaySecret" value="false">비공개
																</c:if>
																<c:if test="${woEtcSpendPay.eEtcspendpaySecret == 'false'}">
																	<input type="radio" name="ppWorkList[${j.index}].woEtcSpendPayList[${k.index}].eEtcspendpaySecret" value="true">공개<input type="radio" name="ppWorkList[${j.index}].woEtcSpendPayList[${k.index}].eEtcspendpaySecret" value="false" checked="checked">비공개
																</c:if>
															</td>
														</tr>
													</c:forEach>
												</tbody>
											</table>
											<%-- 필요장비계획
											<table class="table table-striped table-advance table-hover">
												<thead>
													<tr>
														<th>필요장비명</th>
														<th>계획시 보유현황</th>
													</tr>
												</thead>
												<tbody>
													<c:forEach var="woNeedEquip" items="${ppWork.woNeedEquipList}">
														<tr>
															<td>${woNeedEquip.categoryEquip.equipName}</td>
															<td>${woNeedEquip.eNeedequipState}</td>
														</tr>
													</c:forEach>
												</tbody>
											</table> --%>
										</div>
									</div>
									<c:set var="i" value="${i+1}"/>
								</c:forEach>	
							</div>
						</section>
						<button type="submit">수정</button>
	   				</form>
				</div>
			</div>
    	</section>
   	</section>
</body>
</html>