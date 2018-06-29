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
			/* 메모에 입력되는 테마넘버, 메모주제, 메모내용을 배열로 입력하기 위해서 배열변수를 선언하였다. */
			var classArray = [
				 {targetClass:'themeNumber', targetName : 'ppWoResultList[#index#].memoList[#count#].categoryTheme.themeNumber'}
				,{targetClass:'wrMemoSubject', targetName : 'ppWoResultList[#index#].memoList[#count#].wrMemoSubject'}
				,{targetClass:'wrMemoContent', targetName : 'ppWoResultList[#index#].memoList[#count#].wrMemoContent'}
			];
			/* 실행결과 작업단계 index를 활용하기 위해 hidden type의 input에 값을 가져오는 매서드 */
			var getCount = function(index){				
				return parseInt($('.ppWoResultListCount[data-target-index="'+index+'"]').val());
			}
			/* 실행결과 작업단계 index를 활용하기 위해 hidden type의 input에 값을 세팅하는 매서드 */
			var setCount = function(index, count){
				$('.ppWoResultListCount[data-target-index="'+index+'"]').val(count);
			}
			/* index와 count를 매개변수로 받아 배열의 row를 작업단계는 index로 세팅하고 메모는 메모의 i번째로 셋팅한다. */
			var reNumber = function(index, count){
				for(var i=0; i <= count; i++){
					/* 메모에 입력해야하는 값의 갯수만큼 치환하기 위한 반복문 */
					for(var j=0; j < classArray.length; j++){
						var targetClass = classArray[j].targetClass;
						var targetName = classArray[j].targetName;
						targetName = targetName.replace('#index#', index);
						targetName = targetName.replace('#count#', i);
						$('.'+targetClass+'[data-target-index="'+index+'"]').eq(i).attr('name',targetName);
					}
				}
			}
			/* 메모추가를 클릭할 때 메모입력창을 추가한다. 그리고 그 버튼의 작업단계 index를 가져와 입력해야하는 태그에 각각 셋팅한다.
			그 후 reNumber매서드를 활용하여 메모의 count변수를 활용하여 name을 치환한다.
			마지막으로 hidden input에 값을 1더한다. */
			$(document).on('click','.addMemo',function(){
				
				var index = $(this).attr('data-target-index');
				var count = getCount(index);
				
				$(this).parent('div').append(
					'<div class="memo panel">'
						+'<div class="row">'
							+'<div class="col-lg-2 col-md-2">'
								+'<select class="themeNumber form-control m-bot15" data-target-index="'+index+'">'
									+'<c:forEach var="categoryTheme" items="${categoryThemeList}">'
   										+'<option value="${categoryTheme.themeNumber}">${categoryTheme.themeName}</option>'
   									+'</c:forEach>'
   								+'</select>'
   							+'</div>'
   							+'<div class="col-lg-4 col-md-4">'
   								+'<input class="wrMemoSubject form-control" type="text" data-target-index="'+index+'" placeholder="주제를 입력해주세요">'
							+'</div>'
							+'<div class="col-lg-6 col-md-6">'
								+'<a class="removeMemo btn btn-danger" data-target-index="'+index+'"><i class="icon_close_alt2"></i></a>'
							+'</div>'
						+'</div>'
						+'<div class="col-lg-12">'
							+'<textarea class="wrMemoContent form-control" rows="5" cols="100" data-target-index="'+index+'" placeholder="내용을 입력해주세요"></textarea>'
						+'</div>'
					+'</div>'
				);
				
				reNumber(index, count);
				setCount(index, count+1);
				
			});
			/* 메모 삭제 버튼을 누를때 해당하는 div를 삭제하고, hidden input의 index와 메모 count를 매개변수로하여 reNumber매서드를 실행하여 값을 치환한다.
			그리고 hidden input의 val에 1을 뺀다. */
			$(document).on('click','.removeMemo',function(){
				
				var index = $(this).attr('data-target-index');
				var count = getCount(index);
				
				$(this).parents('div.memo').remove();
				
				reNumber(index, count);
				setCount(index, count-1);
			});
			/* 전체 체크를 클릭시 모든 체크박스가 클릭되고 클릭되지 않도록 하였다.
			그리고 체크박스가 변할때 각각의 체크박스의 매서드가 실행하기 위해서 trigger를 추가하였다. */
			$('#checkAll').click(function(){
				if($('#checkAll').prop('checked')){
					$(':checkbox').prop('checked', true);
				}else{
					$(':checkbox').prop('checked', false);
				}
				$(':checkbox').trigger('change');
			});
			/* 인건비, 원자재, 기타지출비의 체크박스가 변할시
			체크하면 속성을 readonly로 변화시키고, 예상값을 그대로 대입한다.
			체크를 해제하면 속성을 해제하고, 빈칸으로 전환한다. */
			$('.humanPayCheck').change(function(){
				if($(this).prop('checked')){
					$(this).parents('tr').find('.form-control').attr('readonly', true);
					$(this).parents('tr').find('td').eq(5).find('.form-control').val($(this).parents('tr').find('td').eq(3).text());
					$(this).parents('tr').find('td').eq(6).find('.form-control').val($(this).parents('tr').find('td').eq(4).text());
				}else{
					$(this).parents('tr').find('.form-control').attr('readonly', false);
					$(this).parents('tr').find('td').eq(5).find('.form-control').val('');
					$(this).parents('tr').find('td').eq(6).find('.form-control').val('');
				}
			});
			$('.materialsPayCheck').change(function(){
				if($(this).prop('checked')){
					$(this).parents('tr').find('.form-control').attr('readonly', true);
					$(this).parents('tr').find('td').eq(4).find('.form-control').val($(this).parents('tr').find('td').eq(2).text());
					$(this).parents('tr').find('td').eq(5).find('.form-control').val($(this).parents('tr').find('td').eq(3).find('div').text());
				}else{
					$(this).parents('tr').find('.form-control').attr('readonly', false);
					$(this).parents('tr').find('td').eq(4).find('.form-control').val('');
					$(this).parents('tr').find('td').eq(5).find('.form-control').val('');
				}
			});
			$('.etcSpendPayCheck').change(function(){
				if($(this).prop('checked')){
					$(this).parents('tr').find('.form-control').attr('readonly', true);
					$(this).parents('tr').find('td').eq(5).find('.form-control').val($(this).parents('tr').find('td').eq(3).text());
					$(this).parents('tr').find('td').eq(4).find('.form-control').val($(this).parents('tr').find('td').eq(2).text());
				}else{
					$(this).parents('tr').find('.form-control').attr('readonly', false);
					$(this).parents('tr').find('td').eq(5).find('.form-control').val('');
					$(this).parents('tr').find('td').eq(4).find('.form-control').val('');
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
					<form id="signUpForm" action="${pageContext.request.contextPath}/addActResultList" method="post">
						<header class="panel-heading">
							${productionPlan.titlePlan.ppNamePlanname}
							<input type="hidden" name="productionPlan.ppNumber" value="${productionPlan.ppNumber}">
							<input type="hidden" name="farmMember.fMemberId" value="${loginMember.id}">
							<input type="hidden" name="farm.fNumber" value="${loginMember.corpNumber}">
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
							<div>
								전체일치 <input id="checkAll" type="checkbox">
							</div>
							<c:forEach var="ppWorkList" items="${productionPlan.ppWorkList}" varStatus="i">
								
								<input type="hidden" value="0" class="ppWoResultListCount" data-target-index="${i.index}" />
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
													<td><input type="number" class="form-control" name="ppWoResultList[${i.index}].wrTotalarea"></td>
													<td><input type="number" class="form-control" name="ppWoResultList[${i.index}].wrReworkarea"></td>
												</tr>
											</tbody>
										</table>
										<input type="hidden" name="ppWoResultList[${i.index}].ppWork.ppWorkNumber" value="${ppWorkList.ppWorkNumber}">
										인건비
										<table class="table table-striped table-advance table-hover">
											<thead>
												<tr>
													<th>일치</th>
													<th>인부이름</th>
													<th>인부주민번호</th>
													<th>예상일당</th>
													<th>예상작업날짜</th>
													<th>실제일당</th>
													<th>실제작업날짜</th>
												</tr>
											</thead>
											<tbody>
												<c:forEach var="woHumanPayList" items="${ppWorkList.woHumanPayList}" varStatus="j">
													<tr>
														<td><input class="humanPayCheck" type="checkbox"></td>
														<td>${woHumanPayList.eHumanpayName}</td>
														<td>${woHumanPayList.eHumanpayResidentnumber}</td>
														<td>${woHumanPayList.eHumanpayExpectpay}</td>
														<td>${woHumanPayList.eHumanpayExpectday}</td>
														<td><input type="number" class="form-control" name="ppWoResultList[${i.index}].wrHumanPayList[${j.index}].wrHumanpayRealcost"></td>
														<td><input type="date" class="form-control" name="ppWoResultList[${i.index}].wrHumanPayList[${j.index}].wrHumanpayDate"></td>
													</tr>
													<input type="hidden" name="ppWoResultList[${i.index}].wrHumanPayList[${j.index}].woHumanPay.eHumanpayNumber" value="${woHumanPayList.eHumanpayNumber}">
												</c:forEach>
											</tbody>
										</table>
										원자재비
										<table class="table table-striped table-advance table-hover">
											<thead>
												<tr>
													<th>일치</th>
													<th>원자재명</th>
													<th>원자재단가(원)</th>
													<th>예상사용량</th>
													<th>실제단가(원)</th>
													<th>실제사용량</th>
												</tr>
											</thead>
											<tbody>
												<c:forEach var="woMaterialsPayList" items="${ppWorkList.woMaterialsPayList}" varStatus="j">
													<tr>
														<td><input class="materialsPayCheck" type="checkbox"></td>
														<td>${woMaterialsPayList.categoryMaterials.materialsName}</td>
														<td>${woMaterialsPayList.eMaterialspayUnitcost}</td>
														<td>
															<div class="col-lg-10">${woMaterialsPayList.eMaterialspayUse}</div>
															${woMaterialsPayList.categoryMaterials.materialsUnit}</td>
														<td><input type="number" class="form-control" name="ppWoResultList[${i.index}].wrMaterialsPayList[${j.index}].wrMaterialspayUnitcost"></td>
														<td>
															<div class="col-lg-10">
																<input type="number" class="form-control" name="ppWoResultList[${i.index}].wrMaterialsPayList[${j.index}].wrMaterialspayQuantity">
															</div>
															${woMaterialsPayList.categoryMaterials.materialsUnit}
														</td>
													</tr>
													<input type="hidden" name="ppWoResultList[${i.index}].wrMaterialsPayList[${j.index}].woMaterialsPay.eMaterialspayNumber" value="${woMaterialsPayList.eMaterialspayNumber}">
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
												<c:forEach var="woInsurancePayList" items="${ppWorkList.woInsurancePayList}" varStatus="j">
													<tr>
														<td>${woInsurancePayList.eInsurancepayMame}</td>
														<td>${woInsurancePayList.eInsurancepayTotalcost}</td>
														<td>${woInsurancePayList.eInsurancepayExpectcost}</td>
														<td><input type="number" class="form-control" name="ppWoResultList[${i.index}].wrInsurancePayList[${j.index}].wrInsurancepayMonthcost"></td>
														<td><input type="date" class="form-control" name="ppWoResultList[${i.index}].wrInsurancePayList[${j.index}].wrInsurancepayDate"></td>
													</tr>
													<input type="hidden" name="ppWoResultList[${i.index}].wrInsurancePayList[${j.index}].woInsurancePay.eInsurancepayNumber" value="${woInsurancePayList.eInsurancepayNumber}">
												</c:forEach>
											</tbody>
										</table>
										기타지출비
										<table class="table table-striped table-advance table-hover">
											<thead>
												<tr>
													<th>일치</th>
													<th>기타지출명</th>
													<th>예상 지출비</th>
													<th>예상 지출일</th>
													<th>실제 지출비</th>
													<th>실제 지출일</th>
												</tr>
											</thead>
											<tbody>
												<c:forEach var="woEtcSpendPayList" items="${ppWorkList.woEtcSpendPayList}" varStatus="j">
													<tr>
														<td><input class="etcSpendPayCheck" type="checkbox"></td>
														<td>${woEtcSpendPayList.categoryEtcSpendPay.etcspendpayName}</td>
														<td>${woEtcSpendPayList.eEtcspendpayCost}</td>
														<td>${woEtcSpendPayList.eEtcspendpayDay}</td>
														<td><input type="number" class="form-control" name="ppWoResultList[${i.index}].wrEtcSpendPayList[${j.index}].wrEtcspendpayRealcost"></td>
														<td><input type="date" class="form-control" name="ppWoResultList[${i.index}].wrEtcSpendPayList[${j.index}].wrEtcspendpayDate"></td>
													</tr>
													<input type="hidden" name="ppWoResultList[${i.index}].wrEtcSpendPayList[${j.index}].woEtcSpendPay.eEtcspendpayNumber" value="${woEtcSpendPayList.eEtcspendpayNumber}">
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
												<c:forEach var="woNeedEquipList" items="${ppWorkList.woNeedEquipList}" varStatus="j">
													<tr>
														<td>${woNeedEquipList.categoryEquip.equipName}</td>
														<td>${woNeedEquipList.eNeedequipState}</td>
														<td><input type="text" class="form-control" name="ppWoResultList[${i.index}].wrNeedEquipList[${j.index}].wrNeedequipState"></td>
														<td>${woNeedEquipList.woNeRentPayList[0].companyRentEquip.cRentCost}</td>
														<td>${woNeedEquipList.woNeRentPayList[0].companyRentEquip.cRentDate}</td>
														<td><input type="number" class="form-control" name="ppWoResultList[${i.index}].wrNeedEquipList[${j.index}].wrNeRentPayList[0].neRentpayCost"></td>
														<td><input type="date" class="form-control" name="ppWoResultList[${i.index}].wrNeedEquipList[${j.index}].wrNeRentPayList[0].neRentpayDate"></td>
													</tr>
													<input type="hidden" name="ppWoResultList[${i.index}].wrNeedEquipList[${j.index}].woNeedEquip.eNeedequipNumber" value="${woNeedEquipList.eNeedequipNumber}">
													<input type="hidden" name="ppWoResultList[${i.index}].wrNeedEquipList[${j.index}].wrNeRentPayList[0].woNeRentPay.neERentpayNumber" value="${woNeedEquipList.woNeRentPayList[0].neERentpayNumber}">
												</c:forEach>
											</tbody>
										</table>
										<div class="col-lg-12">
											<a class="addMemo btn btn-info" data-target-index="${i.index}">메모 추가</a><p></p>
										</div>
									</div>
								</div>
							</c:forEach>
							<div align="right">
								<a id="signUpBtn" class="btn btn-primary" type="submit">등록</a>
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