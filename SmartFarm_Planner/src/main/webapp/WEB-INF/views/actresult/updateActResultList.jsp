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
			/* 작업단계 panel div의 색을 변화하기 위해서 random() method를 사용하였다. */
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
			/* 작업단계 div를 클릭할시 하위 div를 보이도록 하고, 나타나있을때는 다시 숨기도록 처리하였다. */
			$('.panel-heading').click(function(){
				if($(this).parent('div').find('.panel-content').css("display") == "none"){
					$(this).parent('div').find('.panel-content').show();
				}else{
					$(this).parent('div').find('.panel-content').hide();
				}
				
			});
			/* 등록버튼 클릭시 빈칸이 있으면 경고창 띄우고, 빈칸이 없다면 submit한다. */
			$('#signUpBtn').click(function(){
				$('input').each(function(i,e){
					if($(e).val() == ''){
						alert('모든 입력란을 기입하시오.');
						$(e).focus();
						preventDefault();
					}
				});
				$('#signUpForm').submit();
			});
			$(document).on('change','select.equipState', function(){
				if($(this).val() == '구매중' || $(this).val() == '보유'){
					$(this).parents('tr').find('.rentEquip').remove();
				} else if($(this).val() == '대여중' || $(this).val() == '대여완료'){
					$(this).parents('tr').find('.rentEquip').remove();
					$(this).parents('tr').find('td').eq(5).append('<input type="number" class="form-control rentEquip" name="ppWoResultList[${i.index}].wrNeedEquipList[${j.index}].wrNeRentPayList[0].neRentpayCost">');
					$(this).parents('tr').find('td').eq(6).append('<input type="date" class="form-control rentEquip" name="ppWoResultList[${i.index}].wrNeedEquipList[${j.index}].wrNeRentPayList[0].neRentpayDate">');
					$(this).parents('tr').append('<input type="hidden" class="rentEquip" name="ppWoResultList[${i.index}].wrNeedEquipList[${j.index}].wrNeRentPayList[0].neRentpayNumber" value="${wrNeedEquipList.wrNeRentPayList[0].neRentpayNumber}">');
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
			<div class="col-lg-12">
				<h3 class="page-header"><i class="fa fa-table"></i> 실행결과 수정</h3>
					<div align="right">
						소속 : ${actResult.farm.fName} / 작성자 : ${actResult.farmMember.fMemberName}(${actResult.farmMember.fMemberId}) / 등록일자 : ${actResult.ppResultlistDate}
					</div>
				<section class="panel">
					<form id="signUpForm" action="${pageContext.request.contextPath}/updateActResultList" method="post">
						<header class="panel-heading">
							${actResult.productionPlan.titlePlan.ppNamePlanname}
						</header>
						<div class="panel-body">
							<div>
								계획명 : ${actResult.productionPlan.titlePlan.ppNamePlanname}
							</div>
							<div>
								계획기간 : ${actResult.productionPlan.ppStartday} ~ ${actResult.productionPlan.ppEndday}
							</div>
							<div>
								소유면적/임대면적 : ${actResult.productionPlan.ppOwnarea} / ${actResult.productionPlan.ppRentarea}
							</div>
							<c:forEach var="ppWoResultList" items="${actResult.ppWoResultList}" varStatus="i">
								<div class="color">
									<div class="panel-heading col-lg-12">${ppWoResultList.ppWork.ppWorkName}</div>
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
													<td>${ppWoResultList.ppWork.ppWorkArea}</td>
													<td><input type="number" class="form-control" name="ppWoResultList[${i.index}].wrTotalarea" value="${ppWoResultList.wrTotalarea}"></td>
													<td><input type="number" class="form-control" name="ppWoResultList[${i.index}].wrReworkarea" value="${ppWoResultList.wrReworkarea}"></td>
												</tr>
											</tbody>
										</table>
										<input type="hidden" name="ppWoResultList[${i.index}].wrNumber" value="${ppWoResultList.wrNumber}">
										인건비
										<table class="table table-striped table-advance table-hover">
											<thead>
												<tr>
													<th>인부이름</th>
													<th>인부주민번호</th>
													<th>예상일당</th>
													<th>예상작업날짜</th>
													<th>실제일당</th>
													<th>실제작업날짜</th>
												</tr>
											</thead>
											<tbody>
												<c:forEach var="wrHumanPayList" items="${ppWoResultList.wrHumanPayList}" varStatus="j">
													<tr>
														<td>${wrHumanPayList.woHumanPay.eHumanpayName}</td>
														<td>${wrHumanPayList.woHumanPay.eHumanpayResidentnumber}</td>
														<td>${wrHumanPayList.woHumanPay.eHumanpayExpectpay}</td>
														<td>${wrHumanPayList.woHumanPay.eHumanpayExpectday}</td>
														<td><input type="number" class="form-control" name="ppWoResultList[${i.index}].wrHumanPayList[${j.index}].wrHumanpayRealcost" value="${wrHumanPayList.wrHumanpayRealcost}"></td>
														<td><input type="date" class="form-control" name="ppWoResultList[${i.index}].wrHumanPayList[${j.index}].wrHumanpayDate" value="${wrHumanPayList.wrHumanpayDate}"></td>
													</tr>
													<input type="hidden" name="ppWoResultList[${i.index}].wrHumanPayList[${j.index}].wrHumanpayNumber" value="${wrHumanPayList.wrHumanpayNumber}">
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
													<th>실제단가(원)</th>
													<th>실제사용량</th>
												</tr>
											</thead>
											<tbody>
												<c:forEach var="wrMaterialsPayList" items="${ppWoResultList.wrMaterialsPayList}" varStatus="j">
													<tr>
														<td>${wrMaterialsPayList.woMaterialsPay.categoryMaterials.materialsName}</td>
														<td>${wrMaterialsPayList.woMaterialsPay.eMaterialspayUnitcost}</td>
														<td>
															<div class="col-lg-10">${wrMaterialsPayList.woMaterialsPay.eMaterialspayUse}</div>
															${wrMaterialsPayList.woMaterialsPay.categoryMaterials.materialsUnit}</td>
														<td><input type="number" class="form-control" name="ppWoResultList[${i.index}].wrMaterialsPayList[${j.index}].wrMaterialspayUnitcost" value="${wrMaterialsPayList.wrMaterialspayUnitcost}"></td>
														<td>
															<div class="col-lg-10">
																<input type="number" class="form-control" name="ppWoResultList[${i.index}].wrMaterialsPayList[${j.index}].wrMaterialspayQuantity" value="${wrMaterialsPayList.wrMaterialspayQuantity}">
															</div>
															${wrMaterialsPayList.woMaterialsPay.categoryMaterials.materialsUnit}
														</td>
													</tr>
													<input type="hidden" name="ppWoResultList[${i.index}].wrMaterialsPayList[${j.index}].wrMaterialspayNumber" value="${wrMaterialsPayList.wrMaterialspayNumber}">
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
													<th>실제 납부한 보험비</th>
													<th>실제 납부일</th>
												</tr>
											</thead>
											<tbody>
												<c:forEach var="wrInsurancePayList" items="${ppWoResultList.wrInsurancePayList}" varStatus="j">
													<tr>
														<td>${wrInsurancePayList.woInsurancePay.eInsurancepayMame}</td>
														<td>${wrInsurancePayList.woInsurancePay.eInsurancepayTotalcost}</td>
														<td>${wrInsurancePayList.woInsurancePay.eInsurancepayExpectcost}</td>
														<td><input type="number" class="form-control" name="ppWoResultList[${i.index}].wrInsurancePayList[${j.index}].wrInsurancepayMonthcost" value="${wrInsurancePayList.wrInsurancepayMonthcost}"></td>
														<td><input type="date" class="form-control" name="ppWoResultList[${i.index}].wrInsurancePayList[${j.index}].wrInsurancepayDate" value="${wrInsurancePayList.wrInsurancepayDate}"></td>
													</tr>
													<input type="hidden" name="ppWoResultList[${i.index}].wrInsurancePayList[${j.index}].wrInsurancepayNumber" value="${wrInsurancePayList.wrInsurancepayNumber}">
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
													<th>실제 지출비</th>
													<th>실제 지출일</th>
												</tr>
											</thead>
											<tbody>
												<c:forEach var="wrEtcSpendPayList" items="${ppWoResultList.wrEtcSpendPayList}" varStatus="j">
													<tr>
														<td>${wrEtcSpendPayList.woEtcSpendPay.categoryEtcSpendPay.etcspendpayName}</td>
														<td>${wrEtcSpendPayList.woEtcSpendPay.eEtcspendpayCost}</td>
														<td>${wrEtcSpendPayList.woEtcSpendPay.eEtcspendpayDay}</td>
														<td><input type="number" class="form-control" name="ppWoResultList[${i.index}].wrEtcSpendPayList[${j.index}].wrEtcspendpayRealcost" value="${wrEtcSpendPayList.wrEtcspendpayRealcost}"></td>
														<td><input type="date" class="form-control" name="ppWoResultList[${i.index}].wrEtcSpendPayList[${j.index}].wrEtcspendpayDate" value="${wrEtcSpendPayList.wrEtcspendpayDate}"></td>
													</tr>
													<input type="hidden" name="ppWoResultList[${i.index}].wrEtcSpendPayList[${j.index}].wrEtcspendpayNumber" value="${wrEtcSpendPayList.wrEtcspendpayNumber}">
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
												<c:forEach var="wrNeedEquipList" items="${ppWoResultList.wrNeedEquipList}" varStatus="j">
													<tr>
														<td>${wrNeedEquipList.woNeedEquip.categoryEquip.equipName}</td>
														<td>${wrNeedEquipList.woNeedEquip.eNeedequipState}</td>
														<td>
															<select class="form-control equipState" name="ppWoResultList[${i.index}].wrNeedEquipList[${j.index}].wrNeedequipState">
																<c:if test="${wrNeedEquipList.wrNeedequipState == '대여중'}">
																	<option selected="selected">대여중</option>
																	<option>대여완료</option>
																	<option>구매중</option>
																	<option>보유</option>
																</c:if>
																<c:if test="${wrNeedEquipList.wrNeedequipState == '대여완료'}">
																	<option>대여중</option>
																	<option selected="selected">대여완료</option>
																	<option>구매중</option>
																	<option>보유</option>
																</c:if>
																<c:if test="${wrNeedEquipList.wrNeedequipState == '구매중'}">
																	<option>대여중</option>
																	<option>대여완료</option>
																	<option selected="selected">구매중</option>
																	<option>보유</option>
																</c:if>
																<c:if test="${wrNeedEquipList.wrNeedequipState == '보유'}">
																	<option>대여중</option>
																	<option>대여완료</option>
																	<option>구매중</option>
																	<option selected="selected">보유</option>
																</c:if>
															</select>
														</td>
														<td>${wrNeedEquipList.wrNeRentPayList[0].woNeRentPay.companyRentEquip.cRentCost}</td>
														<td>${wrNeedEquipList.wrNeRentPayList[0].woNeRentPay.companyRentEquip.cRentDate}</td>
														<td><input type="number" class="form-control rentEquip" name="ppWoResultList[${i.index}].wrNeedEquipList[${j.index}].wrNeRentPayList[0].neRentpayCost" value="${wrNeedEquipList.wrNeRentPayList[0].neRentpayCost}"></td>
														<td><input type="date" class="form-control rentEquip" name="ppWoResultList[${i.index}].wrNeedEquipList[${j.index}].wrNeRentPayList[0].neRentpayDate" value="${wrNeedEquipList.wrNeRentPayList[0].neRentpayDate}"></td>
														<input type="hidden" name="ppWoResultList[${i.index}].wrNeedEquipList[${j.index}].wrNeedequipNumber" value="${wrNeedEquipList.wrNeedequipNumber}">
														<input type="hidden" class="rentEquip" name="ppWoResultList[${i.index}].wrNeedEquipList[${j.index}].wrNeRentPayList[0].neRentpayNumber" value="${wrNeedEquipList.wrNeRentPayList[0].neRentpayNumber}">
													</tr>
													
												</c:forEach>
											</tbody>
										</table>
										메모
										<table class="table table-striped table-advance table-hover">
											<thead>
												<tr>
													<th>테마명</th>
													<th>메모주제</th>
													<th>메모내용</th>
												</tr>
											</thead>
											<tbody>
												<c:forEach var="memoList" items="${ppWoResultList.memoList}" varStatus="j">
													<tr>
														<td>${memoList.categoryTheme.themeName}</td>
														<td><input class="form-control" name="ppWoResultList[${i.index}].memoList[${j.index}].wrMemoSubject" type="text" placeholder="주제를 입력해주세요" value="${memoList.wrMemoSubject}"></td>
														<td><textarea class="form-control" name="ppWoResultList[${i.index}].memoList[${j.index}].wrMemoContent" rows="5" cols="100" placeholder="내용을 입력해주세요">${memoList.wrMemoContent}</textarea></td>
													</tr>
													<input type="text" name="ppWoResultList[${i.index}].memoList[${j.index}].wrMemoNumber" value="${memoList.wrMemoNumber}">
												</c:forEach>
											</tbody>
										</table>
									</div>
								</div>
							</c:forEach>
							<div align="right">
								<a id="signUpBtn" class="btn btn-primary" type="submit">수정</a>
							</div>
						</div>
					</form>
				</section>
			</div>
		</div>
	</section>
</section>
</body>
</html>