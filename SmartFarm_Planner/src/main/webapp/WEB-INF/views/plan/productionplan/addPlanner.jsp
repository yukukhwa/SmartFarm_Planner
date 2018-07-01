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
		/* 작업단계추가 버튼 클릭시 작업단계 입력 폼이 생성된다 */
		$('#addPpWork').click(function(){
			var ppWorkSize = $('.ppWork').length;
			$('#ppWorkList').append('<div class="ppWork col-lg-12">'
										+'<div class="panel-heading">'
											+'<span>'
												+'작업명 : <input type="text" name="ppWorkList['+ppWorkSize+'].ppWorkName" class="ppWorkName">'
											+'</span>'
											+'<span style="float: right;">'
												+'<input type="button" class="deletePpWork btn btn-danger" value="제거">'
											+'</span>'
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
											+'인건비 <input type="button" value="인건비 추가" class="addHumanPay btn btn-info" style="float: right;">'
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
											+'<br>원자재 <input type="button" value="원자재 추가" class="addMaterialsPay btn btn-info" style="float: right;">'
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
											+'<br>보험비 <input type="button" value="보험비 추가" class="addInsurancePay btn btn-info" style="float: right;">'
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
											+'<br>기타지출 <input type="button" value="기타지출 추가" class="addEtcSpendPay btn btn-info" style="float: right;">'
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
											+'<br>필요장비계획 <input type="button" value="필요장비 추가" class="addNeedEquip btn btn-info" style="float: right;">'
											+'<table class="needEquipList table table-striped table-advance table-hover">'
												+'<thead>'
													+'<tr>'
														+'<th>장비명</th>'
														+'<th>장비보유현황</th>'
														+'<th>모델명</th>'
														+'<th>대당대여비</th>'
														+'<th>단위대여시간</th>'
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
		
		/* 작업단계제거 버튼을 클릭시 작업단계 입력 폼이 제거 한다. */
		$(document).on('click','.deletePpWork',function(){
			/* 해당 작업 단계 입력 폼 제거한다. */
			$(this).parents('.ppWork').remove();
			/* 남아있는 작업단계 입력 폼 개수 만큼 name속성의 속성값을 재 작성해주는 작업을 한다. */
			$('#ppWorkList').find('.ppWork').each(function(i,e){
				var ppWorkListName = 'ppWorkList['+i+']';
				//alert(ppWorkListName);
				/* 작업 단계 입력 폼 내에 존재하는 input박스들의 name속성 속성값을 재 작성한다. */
				$(e).find('input').each(function(i,e){
					if($(e).attr('name') != null){
						/* 기존의 name속성의 속성값을 배열로 나눈다. */
						var inputNameArray = $(e).attr('name').split('.');
						var newInputName = '';
						/* 나누어진 name속성의 속성값을 재 조합한다. */
						for(var i = 0; i<inputNameArray.length; i++){
							switch (i) {
							case 0:
								newInputName += ppWorkListName;
								break;
							case 1:
								newInputName += '.'+inputNameArray[1];
								break;
							case 2:
								newInputName += '.'+inputNameArray[2];
								break;
							case 3:
								newInputName += '.'+inputNameArray[3];
								break;
							case 4:
								newInputName += '.'+inputNameArray[4];
								break;
							case 5:
								newInputName += '.'+inputNameArray[5];
								break;
							default:
								alert('error');
								break;
							}
							/* 재 조합된 name속성의 속성값을 다시 부여해준다. */
							if(i == inputNameArray.length-1){
								//alert(newInputName);
								$(e).attr('name',newInputName);
							}
						}
					}
				});
				/* 작업 단계 입력 폼 내에 존재하는 select박스들의 name속성 속성값을 재 작성한다. */
				$(e).find('select').each(function(i,e){
					if($(e).attr('name') != null){
						/* 기존의 name속성의 속성값을 배열로 나눈다. */
						var selectNameArray = $(e).attr('name').split('.');
						var newSelectName = '';
						/* 나누어진 name속성의 속성값을 재 조합한다. */
						for(var i = 0; i<selectNameArray.length; i++){
							switch (i) {
							case 0:
								newSelectName += ppWorkListName;
								break;
							case 1:
								newSelectName += '.'+selectNameArray[1];
								break;
							case 2:
								newSelectName += '.'+selectNameArray[2];
								break;
							case 3:
								newSelectName += '.'+selectNameArray[3];
								break;
							case 4:
								newSelectName += '.'+selectNameArray[4];
								break;
							case 5:
								newSelectName += '.'+selectNameArray[5];
								break;
							default:
								alert('error');
								break;
							}
							/* 재 조합된 name속성의 속성값을 다시 부여해준다. */
							if(i == selectNameArray.length-1){
								//alert(newInputName);
								$(e).attr('name',newSelectName);
							}
						}
					}
				});
				/* 작업 단계 입력 폼 내에 존재하는 textarea박스들의 name속성 속성값을 재 작성한다. */
				$(e).find('textarea').each(function(i,e){
					if($(e).attr('name') != null){
						/* 기존의 name속성의 속성값을 배열로 나눈다. */
						var textareaNameArray = $(e).attr('name').split('.');
						var newTextareaName = '';
						/* 나누어진 name속성의 속성값을 재 조합한다. */
						for(var i = 0; i<textareaNameArray.length; i++){
							switch (i) {
							case 0:
								newTextareaName += ppWorkListName;
								break;
							case 1:
								newTextareaName += '.'+textareaNameArray[1];
								break;
							case 2:
								newTextareaName += '.'+textareaNameArray[2];
								break;
							case 3:
								newTextareaName += '.'+textareaNameArray[3];
								break;
							case 4:
								newTextareaName += '.'+textareaNameArray[4];
								break;
							case 5:
								newTextareaName += '.'+textareaNameArray[5];
								break;
							default:
								alert('error');
								break;
							}
							/* 재 조합된 name속성의 속성값을 다시 부여해준다. */
							if(i == textareaNameArray.length-1){
								//alert(newInputName);
								$(e).attr('name',newTextareaName);
							}
						}
					}
				});
			});
			return;
		});
		
		/* 계획서 공개,비공개 radio박스 체크시 모든 radio박스들도 같은 값으로 셋팅된다. */
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
		
		/* 보험비 추가 버튼 클릭시 보험비 입력 폼이 추가 된다. */
		$(document).on('click','.addInsurancePay',function(){
			var ppWorkList = $(this).parents('.ppWork').find('.ppWorkName').attr('name').split('.')[0];
			var insurancePaySize = $(this).parents('.ppWork').find('.insurancePayList tbody tr').length;
			$(this).parents('.ppWork').find('.insurancePayList tbody').append('<tr>'
																		+'<td>'
																			+'<input type="text" name="'+ppWorkList+'.woInsurancePayList['+insurancePaySize+'].eInsurancepayMame">'
																			+'<input type="hidden" name="'+ppWorkList+'.woInsurancePayList['+insurancePaySize+'].categoryTheme.themeNumber" value="4">'
																		+'</td>'
																		+'<td><input type="text" name="'+ppWorkList+'.woInsurancePayList['+insurancePaySize+'].eInsurancepayContent"></td>'
																		+'<td><input type="date" name="'+ppWorkList+'.woInsurancePayList['+insurancePaySize+'].eInsurancepayStartday" class="eInsurancepayStartday"></td>'
																		+'<td><input type="date" name="'+ppWorkList+'.woInsurancePayList['+insurancePaySize+'].eInsurancepayEndday" class="eInsurancepayEndday"></td>'
																		+'<td><input type="number" name="'+ppWorkList+'.woInsurancePayList['+insurancePaySize+'].eInsurancepayTerm" class="eInsurancepayTerm" readonly="readonly"></td>'
																		+'<td><input type="number" name="'+ppWorkList+'.woInsurancePayList['+insurancePaySize+'].eInsurancepayTotalcost" class="eInsurancepayTotalcost"></td>'
																		+'<td><input type="text" name="'+ppWorkList+'.woInsurancePayList['+insurancePaySize+'].eInsurancepayExpectcost" class="eInsurancepayExpectcost" readonly="readonly"></td>'
																		+'<td>'
																			+'<input type="radio" name="'+ppWorkList+'.woInsurancePayList['+insurancePaySize+'].eInsurancepaySecret" value="true" checked="checked">공개<input type="radio" name="'+ppWorkList+'.woInsurancePayList['+insurancePaySize+'].eInsurancepaySecret" value="false">비공개'
																			+'<input type="button" class="deleteInsurancePay btn btn-danger" value="제거" style="float: right;">'
																		+'</td>'
																	+'</tr>');
			return;
		});
		
		/* 보험비 제거 버튼 클릭시 보험비 입력 폼이 제거 된다. */
		$(document).on('click','.deleteInsurancePay',function(){
			var insurancePayList = $(this).parents('.insurancePayList');
			/* 해당 보험비 입력 폼이 제거된다. */
			$(this).parents('tr').remove();
			/* 남아 있는 보험비 입력 폼들을 찾아서 name 속성값을 재 정의 한다. */
			insurancePayList.find('tbody tr').each(function(i,e){
				var insurancePayListName = 'woInsurancePayList['+i+']';
				//alert(insurancePayListName);
				/* 보험비 입력 폼내 input박스의 name 속성값을 재 정의 한다. */
				$(e).find('input').each(function(i,e){
					if($(e).attr('name') != null){
						/* name 속성값을 배열화 시킨다. */
						var inputNameArray = $(e).attr('name').split('.');
						var newInputName = '';
						/* 배열화 된 name 속성값을 재조합 한다. */
						for(var i = 0; i<inputNameArray.length; i++){
							switch (i) {
							case 0:
								newInputName += inputNameArray[0];
								break;
							case 1:
								newInputName += '.'+insurancePayListName;
								break;
							case 2:
								newInputName += '.'+inputNameArray[2];
								break;
							case 3:
								newInputName += '.'+inputNameArray[3];
								break;
							case 4:
								newInputName += '.'+inputNameArray[4];
								break;
							case 5:
								newInputName += '.'+inputNameArray[5];
								break;
							default:
								alert('error');
								break;
							}
							/* 재 조합된 name 속성값을 부여한다. */
							if(i == inputNameArray.length-1){
								//alert(newInputName);
								$(e).attr('name',newInputName);
							}
						}
					}
				});
			});
			return;
		});
		
		/* 보험비 가입 만료일 내용 추가 및 변경시 유호성 검사 및 가입일자 계산을 한다. */
		$(document).on('change','.eInsurancepayEndday',function(){
			var eInsurancepayStartday = $(this).parents('tr').find('.eInsurancepayStartday').val();
			var eInsurancepayEndday = $(this).val();
			//alert(eInsurancepayStartday);
			//alert(eInsurancepayEndday);
			var eInsurancepayStartdayArray = '';
			var eInsurancepayEnddayArray = '';
			/* 가입 시작일이 존재하지 않을 경우 입력하라고 알려준다. */
			if(eInsurancepayStartday == ''){
				alert('보험가입일자를 선택해주세요.');
				return;
			}
			eInsurancepayStartdayArray = eInsurancepayStartday.split('-');
			eInsurancepayEnddayArray = eInsurancepayEndday.split('-');
			eInsurancepayStartday = new Date(eInsurancepayStartdayArray[0],eInsurancepayStartdayArray[1],eInsurancepayStartdayArray[2]);
			eInsurancepayEndday = new Date(eInsurancepayEnddayArray[0],eInsurancepayEnddayArray[1],eInsurancepayEnddayArray[2]);
			/* 보험 가입 만료일이 가입 시작일보다 빠를경우 경고메세지로 알려준다. */
			if(eInsurancepayStartday.getTime() > eInsurancepayEndday.getTime()){
				alert('보험가입만료일이 보험가입시작일보단 빠를수없습니다.');
				return;
			}
			/* 가입 시작일과 가입 만료일을 비교하여 가입일자를 구한다. */
			//alert(eInsurancepayStartday);
			//alert(eInsurancepayEndday);
			var eInsurancepayTerm = (eInsurancepayEndday-eInsurancepayStartday)/12/30/24/60/60/1000;
			//alert(eInsurancepayTerm);
			$(this).parents('tr').find('.eInsurancepayTerm').val(eInsurancepayTerm.toFixed(1));
			return;
		});
		
		/* 총 보험비 입력시 예상보험비(월)을 계산한다. */
		$(document).on('keyup','.eInsurancepayTotalcost',function(){
			var eInsurancepayTotalcost = $(this).val();
			var eInsurancepayTerm = $(this).parents('tr').find('.eInsurancepayTerm').val();
			/* 총 보험비에서 가입기간(년)*12개월로 나눠 예상보험비를 계산한다. */
			var eInsurancepayExpectcost = eInsurancepayTotalcost/(eInsurancepayTerm*12);
			//alert(eInsurancepayExpectcost);
			$(this).parents('tr').find('.eInsurancepayExpectcost').val(eInsurancepayExpectcost.toFixed(2));
			return;
		});
		
		/* 인건비 추가 버튼 클릭시 입력 폼을 추가한다. */
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
																				+'<td>'
																					+'<input type="radio" name="'+ppWorkList+'.woHumanPayList['+humanPaySize+'].eHumanpaySecret" value="true" checked="checked">공개<input type="radio" name="'+ppWorkList+'.woHumanPayList['+humanPaySize+'].eHumanpaySecret" value="false">비공개'
																					+'<input type="button" class="deleteEHumanpay btn btn-danger" value="제거" style="float: right;">'
																				+'</td>'
																			+'</tr>');
			return;
		});
		
		/* 인건비 제거 버튼 클릭시 입력 폼을 제거한다. */
		$(document).on('click','.deleteEHumanpay',function(){
			var humanPayList = $(this).parents('.humanPayList');
			/* 인건비 입력폼 제거 */
			$(this).parents('tr').remove();
			/* 남아있는 인건비 입력 폼내 name 속성값을 재 정의한다. */
			humanPayList.find('tbody tr').each(function(i,e){
				var humanPayListName = 'woHumanPayList['+i+']';
				//alert(humanPayListName);
				/* 남아 있는 input박스들의 name 속성값을 재 정의한다. */
				$(e).find('input').each(function(i,e){
					if($(e).attr('name') != null){
						/* name 속성값을 배열화 시킨다. */
						var inputNameArray = $(e).attr('name').split('.');
						var newInputName = '';
						/* 배열화된 name 속성값을 재 조합한다. */
						for(var i = 0; i<inputNameArray.length; i++){
							switch (i) {
							case 0:
								newInputName += inputNameArray[0];
								break;
							case 1:
								newInputName += '.'+humanPayListName;
								break;
							case 2:
								newInputName += '.'+inputNameArray[2];
								break;
							case 3:
								newInputName += '.'+inputNameArray[3];
								break;
							case 4:
								newInputName += '.'+inputNameArray[4];
								break;
							case 5:
								newInputName += '.'+inputNameArray[5];
								break;
							default:
								alert('error');
								break;
							}
							/* 재 조합된 name 속성값을 부여한다. */
							if(i == inputNameArray.length-1){
								//alert(newInputName);
								$(e).attr('name',newInputName);
							}
						}
					}
				});
			});
			return;
		});
		
		/* 예상 원자재 추가 버튼 클릭시 입력 폼을 추가한다. */
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
																					+'<td>'
																						+'<input type="radio" name="'+ppWorkList+'.woMaterialsPayList['+materialsPaySize+'].eMaterialspaySecret" value="true" checked="checked">공개<input type="radio" name="'+ppWorkList+'.woMaterialsPayList['+materialsPaySize+'].eMaterialspaySecret" value="false">비공개'
																						+'<input type="button" class="deleteMaterialsPay btn btn-danger" value="제거" style="float: right;">'
																					+'</td>'
																				+'</tr>');
			return;
		});
		
		/* 예상 원자재 제거 버튼 클릭시 입력 폼을 제거한다. */
		$(document).on('click','.deleteMaterialsPay',function(){
			var materialsPayList = $(this).parents('.materialsPayList');
			/* 원자재 입력 폼을 제거한다. */
			$(this).parents('tr').remove();
			/* 남아있는 원자재 입력 폼내 name 속성값들을 재 정의한다. */
			materialsPayList.find('tbody tr').each(function(i,e){
				var materialsPayListName = 'woMaterialsPayList['+i+']';
				//alert(materialsPayListName);
				/* input박스내 name 속성값들을 재 정의한다. */
				$(e).find('input').each(function(i,e){
					if($(e).attr('name') != null){
						/* name 속성값들을 재 배열화 한다. */
						var inputNameArray = $(e).attr('name').split('.');
						var newInputName = '';
						/* 배열화된 name속성값들을 재 조합한다. */
						for(var i = 0; i<inputNameArray.length; i++){
							switch (i) {
							case 0:
								newInputName += inputNameArray[0];
								break;
							case 1:
								newInputName += '.'+materialsPayListName;
								break;
							case 2:
								newInputName += '.'+inputNameArray[2];
								break;
							case 3:
								newInputName += '.'+inputNameArray[3];
								break;
							case 4:
								newInputName += '.'+inputNameArray[4];
								break;
							case 5:
								newInputName += '.'+inputNameArray[5];
								break;
							default:
								alert('error');
								break;
							}
							/* 재 조합된 name 속성값을 부여한다. */
							if(i == inputNameArray.length-1){
								//alert(newInputName);
								$(e).attr('name',newInputName);
							}
						}
					}
				});
				/* select박스내 name 속성값들을 재 정의한다. */
				$(e).find('select').each(function(i,e){
					if($(e).attr('name') != null){
						/* name 속성값들을 재 배열화 한다. */
						var selectNameArray = $(e).attr('name').split('.');
						var newSelectName = '';
						/* 배열화된 name속성값들을 재 조합한다. */
						for(var i = 0; i<selectNameArray.length; i++){
							switch (i) {
							case 0:
								newSelectName += selectNameArray[0];
								break;
							case 1:
								newSelectName += '.'+materialsPayListName;
								break;
							case 2:
								newSelectName += '.'+selectNameArray[2];
								break;
							case 3:
								newSelectName += '.'+selectNameArray[3];
								break;
							case 4:
								newSelectName += '.'+selectNameArray[4];
								break;
							case 5:
								newSelectName += '.'+selectNameArray[5];
								break;
							default:
								alert('error');
								break;
							}
							/* 재 조합된 name 속성값을 부여한다. */
							if(i == selectNameArray.length-1){
								//alert(newInputName);
								$(e).attr('name',newSelectName);
							}
						}
					}
				});
			});
			return;
		});
		
		/* 예상 기타지출비 추가 버튼 클릭시 입력 폼을 추가 한다 */
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
																				+'<td>'
																					+'<input type="radio" name="'+ppWorkList+'.woEtcSpendPayList['+etcSpendPaySize+'].eEtcspendpaySecret" value="true" checked="checked">공개<input type="radio" name="'+ppWorkList+'.woEtcSpendPayList['+etcSpendPaySize+'].eEtcspendpaySecret" value="false">비공개'
																					+'<input type="button" class="deleteEtcSpendPay btn btn-danger" value="제거" style="float: right;">'
																				+'</td>'
																			+'</tr>');
			return;
		});
		
		/* 예상 기타지출비 제거 버튼 클릭시 입력 폼을 제거 한다. */
		$(document).on('click','.deleteEtcSpendPay',function(){
			var etcSpendPayList = $(this).parents('.etcSpendPayList');
			/* 기타지출비 입력 폼을 제거한다. */
			$(this).parents('tr').remove();
			/* 남아있는 기타지출비 입력 폼들내 name 속성값들을 재 정의한다. */
			etcSpendPayList.find('tbody tr').each(function(i,e){
				var etcSpendPayListName = 'woEtcSpendPayList['+i+']';
				//alert(etcSpendPayListName);
				/* input박스내 name 속성값을 재 정의한다. */
				$(e).find('input').each(function(i,e){
					if($(e).attr('name') != null){
						/* name 속성값을 배열화 한다. */
						var inputNameArray = $(e).attr('name').split('.');
						var newInputName = '';
						/* 배열화된 name 속성값을 재 조합한다. */
						for(var i = 0; i<inputNameArray.length; i++){
							switch (i) {
							case 0:
								newInputName += inputNameArray[0];
								break;
							case 1:
								newInputName += '.'+etcSpendPayListName;
								break;
							case 2:
								newInputName += '.'+inputNameArray[2];
								break;
							case 3:
								newInputName += '.'+inputNameArray[3];
								break;
							case 4:
								newInputName += '.'+inputNameArray[4];
								break;
							case 5:
								newInputName += '.'+inputNameArray[5];
								break;
							default:
								alert('error');
								break;
							}
							/* 재 조합된 name 속성값을 부여한다. */
							if(i == inputNameArray.length-1){
								//alert(newInputName);
								$(e).attr('name',newInputName);
							}
						}
					}
				});
				/* select박스내 name 속성값을 재 정의한다. */
				$(e).find('select').each(function(i,e){
					if($(e).attr('name') != null){
						/* name 속성값을 배열화 한다. */
						var selectNameArray = $(e).attr('name').split('.');
						var newSelectName = '';
						/* 배열화된 name 속성값을 재 조합한다. */
						for(var i = 0; i<selectNameArray.length; i++){
							switch (i) {
							case 0:
								newSelectName += selectNameArray[0];
								break;
							case 1:
								newSelectName += '.'+etcSpendPayListName;
								break;
							case 2:
								newSelectName += '.'+selectNameArray[2];
								break;
							case 3:
								newSelectName += '.'+selectNameArray[3];
								break;
							case 4:
								newSelectName += '.'+selectNameArray[4];
								break;
							case 5:
								newSelectName += '.'+selectNameArray[5];
								break;
							default:
								alert('error');
								break;
							}
							/* 재 조합된 name 속성값을 부여한다. */
							if(i == selectNameArray.length-1){
								//alert(newInputName);
								$(e).attr('name',newSelectName);
							}
						}
					}
				});
			});
			return;
		});
		
		/* 예상 필요장비게획 추가 버튼 클릭시 입력 폼이 추가 된다. */
		$(document).on('click','.addNeedEquip',function(){
			var ppWorkList = $(this).parents('.ppWork').find('.ppWorkName').attr('name').split('.')[0];
			var needEquipSize = $(this).parents('.ppWork').find('.needEquipList tbody tr').length;
			$(this).parents('.ppWork').find('.needEquipList tbody').append('<tr>'
																				+'<td>'
																					+'<select name="'+ppWorkList+'.woNeedEquipList['+needEquipSize+'].categoryEquip.equipNumber">'
														    							+'<c:forEach var="categoryEquip" items="${categoryEquipList}">'
														    								+'<option value="${categoryEquip.equipNumber}">${categoryEquip.equipName}</option>'
														    							+'</c:forEach>'
														    						+'</select>'
													    						+'</td>'
																				+'<td>'
																					+'<select name="'+ppWorkList+'.woNeedEquipList['+needEquipSize+'].eNeedequipState" class="eNeedequipState">'
																						+'<option>대여예정</option>'
														    							+'<option>대여중</option>'
														    							+'<option>구매예정</option>'
														    							+'<option>구매중</option>'
														    							+'<option>보유</option>'
														    						+'</select>'
																				+'</td>'
																				+'<td>'
																					+'<select name="'+ppWorkList+'.woNeedEquipList['+needEquipSize+'].woNeRentPayList[0].companyRentEquip.cRentNumber" class="cRentNumber">'
														    							+'<c:forEach var="companyRentEquip" items="${companyRentEquipList}">'
														    								+'<option value="${companyRentEquip.cRentNumber}">${companyRentEquip.cRentModelname}[${companyRentEquip.categoryEquip.equipName}]</option>'
														    							+'</c:forEach>'
														    						+'</select>'
														    						+'<input type="hidden" name="'+ppWorkList+'.woNeedEquipList['+needEquipSize+'].woNeRentPayList[0].categoryTheme.themeNumber" value="3">'
																				+'</td>'
																				+'<td>'
																					+'<select class="cRentCost" disabled="disabled">'
														    							+'<c:forEach var="companyRentEquip" items="${companyRentEquipList}">'
														    								+'<option value="${companyRentEquip.cRentNumber}">${companyRentEquip.cRentCost}</option>'
														    							+'</c:forEach>'
														    						+'</select>'
																				+'</td>'
																				+'<td>'
																					+'<select class="cRentDate" disabled="disabled">'
														    							+'<c:forEach var="companyRentEquip" items="${companyRentEquipList}">'
														    								+'<option value="${companyRentEquip.cRentNumber}">${companyRentEquip.cRentDate}</option>'
														    							+'</c:forEach>'
														    						+'</select>'
																				+'</td>'
																				+'<td>'
																					+'<input type="radio" name="'+ppWorkList+'.woNeedEquipList['+needEquipSize+'].woNeRentPayList[0].neERentpaySecret" value="true" checked="checked">공개<input type="radio" name="'+ppWorkList+'.woNeedEquipList['+needEquipSize+'].woNeRentPayList[0].neERentpaySecret" value="false">비공개'
																					+'<input type="button" class="deleteNeedEquip btn btn-danger" value="제거" style="float: right;">'
																				+'</td>'
																			+'</tr>');
			return;
		});
		
		/* 예상 필요장비계획 제거 버튼 클릭시 입력 폼이 제거된다. */
		$(document).on('click','.deleteNeedEquip',function(){
			var needEquipList = $(this).parents('.needEquipList');
			/* 필요장비계획 입력 폼이 제거 된다. */
			$(this).parents('tr').remove();
			var needEquipListName = '';
			/* 남아있는 필요장비게획 입력 폼내에 name 속성값을 재 정의한다. */
			needEquipList.find('tbody tr').each(function(i,e){
				needEquipListName = 'woNeedEquipList['+i+']';
				//alert(needEquipListName);
				/* input박스내 name 속성값을 재 정의한다. */
				$(e).find('input').each(function(i,e){
					if($(e).attr('name') != null){
						/* name 속성값을 배열화 한다. */
						var inputNameArray = $(e).attr('name').split('.');
						var newInputName = '';
						/* 배열화된 name 속성값을 재 조합한다. */
						for(var i = 0; i<inputNameArray.length; i++){
							switch (i) {
							case 0:
								newInputName += inputNameArray[0];
								break;
							case 1:
								newInputName += '.'+needEquipListName;
								break;
							case 2:
								newInputName += '.'+inputNameArray[2];
								break;
							case 3:
								newInputName += '.'+inputNameArray[3];
								break;
							case 4:
								newInputName += '.'+inputNameArray[4];
								break;
							case 5:
								newInputName += '.'+inputNameArray[5];
								break;
							default:
								alert('error');
								break;
							}
							/* 재 조합된 name 속성값을 부여한다. */
							if(i == inputNameArray.length-1){
								//alert(newInputName);
								$(e).attr('name',newInputName);
							}
						}
					}
				});
				/* select박스내 name 속성값을 재 정의한다. */
				$(e).find('select').each(function(i,e){
					if($(e).attr('name') != null){
						/* name 속성값을 배열화 한다. */
						var selectNameArray = $(e).attr('name').split('.');
						var newSelectName = '';
						/* 배열화된 name 속성값을 재 조합한다. */
						for(var i = 0; i<selectNameArray.length; i++){
							switch (i) {
							case 0:
								newSelectName += selectNameArray[0];
								break;
							case 1:
								newSelectName += '.'+needEquipListName;
								break;
							case 2:
								newSelectName += '.'+selectNameArray[2];
								break;
							case 3:
								newSelectName += '.'+selectNameArray[3];
								break;
							case 4:
								newSelectName += '.'+selectNameArray[4];
								break;
							case 5:
								newSelectName += '.'+selectNameArray[5];
								break;
							default:
								alert('error');
								break;
							}
							/* 재 조합된 name 속성값을 부여한다. */
							if(i == selectNameArray.length-1){
								//alert(newInputName);
								$(e).attr('name',newSelectName);
							}
						}
					}
				});
			});
			return;
		});
		
		/* 예상 필요장비계획 등록시 장비보유현황이 '대여예정'이거나 '대여중'일때 예상 대여비 입력폼이 추가 */
		$(document).on('change','select.eNeedequipState',function(){
			var eNeedequipState = $(this).val();
			/* 장비 보유 현황이 '대여예정' 또는 '대여중'이 아닐 경우 예상 대여비 입력 폼을 제거한다.*/
			if(eNeedequipState != '대여예정' && eNeedequipState != '대여중'){
				$(this).parents('tr').find('td').each(function(i,e){
					switch (i) {
					case 2:
						$(e).empty();
						break;
					case 3:
						$(e).empty();
						break;
					case 4:
						$(e).empty();
						break;
					case 5:
						$(e).empty();
						$(e).append('<input type="button" class="deleteNeedEquip btn btn-danger" value="제거" style="float: right;">');
						break;
					default:
						break;
					}
				});
				return;
			}
			/* 장비보유현황이 '대여예정'이거나 '대여중'일 경우 에상 대여비를 추가된다. */
			var needEquipIndex = '';
			var ppWorkIndex = '';
			$(this).parents('tr').find('td').each(function(i,e){
				needEquipIndex = $(e).parent().index();
				ppWorkIndex = $(e).parents('.ppWork').index();
				switch (i) {
				case 2:
					$(e).empty();
					$(e).append('<select name="ppWorkList['+ppWorkIndex+'].woNeedEquipList['+needEquipIndex+'].woNeRentPayList[0].companyRentEquip.cRentNumber" class="cRentNumber">'
										+'<c:forEach var="companyRentEquip" items="${companyRentEquipList}">'
										+'<option value="${companyRentEquip.cRentNumber}">${companyRentEquip.cRentModelname}[${companyRentEquip.categoryEquip.equipName}]</option>'
									+'</c:forEach>'
								+'</select>'
								+'<input type="hidden" name="ppWorkList['+ppWorkIndex+'].woNeedEquipList['+needEquipIndex+'].woNeRentPayList[0].categoryTheme.themeNumber" value="3">');
					break;
				case 3:
					$(e).empty();
					$(e).append('<select class="cRentCost" disabled="disabled">'
										+'<c:forEach var="companyRentEquip" items="${companyRentEquipList}">'
										+'<option value="${companyRentEquip.cRentNumber}">${companyRentEquip.cRentCost}</option>'
									+'</c:forEach>'
								+'</select>');
					break;
				case 4:
					$(e).empty();
					$(e).append('<select class="cRentDate" disabled="disabled">'
										+'<c:forEach var="companyRentEquip" items="${companyRentEquipList}">'
										+'<option value="${companyRentEquip.cRentNumber}">${companyRentEquip.cRentDate}</option>'
									+'</c:forEach>'
								+'</select>');
					break;
				case 5:
					$(e).empty();
					$(e).append('<input type="radio" name="ppWorkList['+ppWorkIndex+'].woNeedEquipList['+needEquipIndex+'].woNeRentPayList[0].neERentpaySecret" value="true" checked="checked">공개<input type="radio" name="ppWorkList['+ppWorkIndex+'].woNeedEquipList['+needEquipIndex+'].woNeRentPayList[0].neERentpaySecret" value="false">비공개'
								+'<input type="button" class="deleteNeedEquip btn btn-danger" value="제거" style="float: right;">');
					break;
				default:
					break;
				}
			});
			return;
		});
		
		/* 예상대여장비가 바뀌면 해당 대여비 및 단위 시간도 체인지 된다. */
		$(document).on('change','select.cRentNumber',function(){
			var cRentNumber = $(this).val();
			$(this).parents('tr').find('select.cRentCost').val(cRentNumber);
			$(this).parents('tr').find('select.cRentDate').val(cRentNumber);
			return;
		});
		
		/* 계획서 등록 버튼 클릭시 입력해야 할 항목들이 다 입력이 되어 있는지 유호성 검사를 한다. */
		$('#addProductionPlan').click(function(){
			/* 값이 입력 되어있지 않다면 경고메세지와 함께 포커스해준다. */
			$('input').each(function(i,e){
				var inputValue = $(e).val();
				if(inputValue == ''){
					alert('값을 채워주세요');
					$(e).focus();
					preventDefault();
				}
			});
			//alert('등록합니다.');
			$('form').submit();
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
    		<h3 class="page-header"><i class="icon_desktop"></i> 계획서 등록화면</h3>
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
				<div class="row">
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
										소유면적 : <input type="number" name="ppOwnarea">
									</div>
									<div>
										임대면적 : <input type="number" name="ppRentarea">
									</div>
									<br>
									<div id="ppWorkList">
										<div class="ppWork col-lg-12">
											<div class="panel-heading">
												<span>
													작업명 : <input type="text" name="ppWorkList[0].ppWorkName" class="ppWorkName">
												</span>
												<span style="float: right;">
													<input type="button" class="deletePpWork btn btn-danger" value="제거">
												</span>
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
												인건비 <input type="button" value="인건비 추가" class="addHumanPay btn btn-info" style="float: right;">
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
															<td>
																<input type="radio" name="ppWorkList[0].woHumanPayList[0].eHumanpaySecret" value="true" checked="checked">공개<input type="radio" name="ppWorkList[0].woHumanPayList[0].eHumanpaySecret" value="false">비공개
																<input type="button" class="deleteEHumanpay btn btn-danger" value="제거" style="float: right;">
															</td>
														</tr>
													</tbody>
												</table>
												<br>원자재 <input type="button" value="원자재 추가" class="addMaterialsPay btn btn-info" style="float: right;">
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
															<td>
																<input type="radio" name="ppWorkList[0].woMaterialsPayList[0].eMaterialspaySecret" value="true" checked="checked">공개<input type="radio" name="ppWorkList[0].woMaterialsPayList[0].eMaterialspaySecret" value="false">비공개
																<input type="button" class="deleteMaterialsPay btn btn-danger" value="제거" style="float: right;">
															</td>
														</tr>
													</tbody>
												</table>
												<br>보험비 <input type="button" value="보험비 추가" class="addInsurancePay btn btn-info" style="float: right;">
												<table class="insurancePayList table table-striped table-advance table-hover">
													<thead>
														<tr>
															<th>보험명</th>
															<th>보험내용</th>
															<th>보험가입일</th>
															<th>보험만료일</th>
															<th>보험가입기간(년)</th>
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
															<td><input type="date" name="ppWorkList[0].woInsurancePayList[0].eInsurancepayStartday" class="eInsurancepayStartday"></td>
															<td><input type="date" name="ppWorkList[0].woInsurancePayList[0].eInsurancepayEndday" class="eInsurancepayEndday"></td>
															<td><input type="number" name="ppWorkList[0].woInsurancePayList[0].eInsurancepayTerm" class="eInsurancepayTerm" readonly="readonly"></td>
															<td><input type="number" name="ppWorkList[0].woInsurancePayList[0].eInsurancepayTotalcost" class="eInsurancepayTotalcost"></td>
															<td><input type="text" name="ppWorkList[0].woInsurancePayList[0].eInsurancepayExpectcost" class="eInsurancepayExpectcost" readonly="readonly"></td>
															<td>
																<input type="radio" name="ppWorkList[0].woInsurancePayList[0].eInsurancepaySecret" value="true" checked="checked">공개<input type="radio" name="ppWorkList[0].woInsurancePayList[0].eInsurancepaySecret" value="false">비공개
																<input type="button" class="deleteInsurancePay btn btn-danger" value="제거" style="float: right;">
															</td>
														</tr>
													</tbody>
												</table>
												<br>기타지출 <input type="button" value="기타지출 추가" class="addEtcSpendPay btn btn-info" style="float: right;">
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
															<td>
																<input type="radio" name="ppWorkList[0].woEtcSpendPayList[0].eEtcspendpaySecret" value="true" checked="checked">공개<input type="radio" name="ppWorkList[0].woEtcSpendPayList[0].eEtcspendpaySecret" value="false">비공개
																<input type="button" class="deleteEtcSpendPay btn btn-danger" value="제거" style="float: right;">
															</td>
														</tr>
													</tbody>
												</table>
												<br>필요장비계획 <input type="button" value="필요장비 추가" class="addNeedEquip btn btn-info" style="float: right;">
												<table class="needEquipList table table-striped table-advance table-hover">
													<thead>
														<tr>
															<th>장비명</th>
															<th>장비보유현황</th>
															<th>대여모델명</th>
															<th>대당대여비</th>
															<th>단위대여시간</th>
															<th>공개/비공개</th>
														</tr>
													</thead>
													<tbody>
														<tr>
															<td>
																<select name="ppWorkList[0].woNeedEquipList[0].categoryEquip.equipNumber">
									    							<c:forEach var="categoryEquip" items="${categoryEquipList}">
									    								<option value="${categoryEquip.equipNumber}">${categoryEquip.equipName}</option>
									    							</c:forEach>
									    						</select>
								    						</td>
															<td>
																<select name="ppWorkList[0].woNeedEquipList[0].eNeedequipState" class="eNeedequipState">
									    							<option>대여예정</option>
									    							<option>대여중</option>
									    							<option>구매예정</option>
									    							<option>구매중</option>
									    							<option>보유</option>
									    						</select>
															</td>
															<td>
																<select name="ppWorkList[0].woNeedEquipList[0].woNeRentPayList[0].companyRentEquip.cRentNumber" class="cRentNumber">
									    							<c:forEach var="companyRentEquip" items="${companyRentEquipList}">
									    								<option value="${companyRentEquip.cRentNumber}">${companyRentEquip.cRentModelname}[${companyRentEquip.categoryEquip.equipName}]</option>
									    							</c:forEach>
									    						</select>
									    						<input type="hidden" name="ppWorkList[0].woNeedEquipList[0].woNeRentPayList[0].categoryTheme.themeNumber" value="3">
															</td>
															<td>
																<select class="cRentCost" disabled="disabled">
									    							<c:forEach var="companyRentEquip" items="${companyRentEquipList}">
									    								<option value="${companyRentEquip.cRentNumber}">${companyRentEquip.cRentCost}</option>
									    							</c:forEach>
									    						</select>
															</td>
															<td>
																<select class="cRentDate" disabled="disabled">
									    							<c:forEach var="companyRentEquip" items="${companyRentEquipList}">
									    								<option value="${companyRentEquip.cRentNumber}">${companyRentEquip.cRentDate}</option>
									    							</c:forEach>
									    						</select>
															</td>
															<td>
																<input type="radio" name="ppWorkList[0].woNeedEquipList[0].woNeRentPayList[0].neERentpaySecret" value="true" checked="checked">공개<input type="radio" name="ppWorkList[0].woNeedEquipList[0].woNeRentPayList[0].neERentpaySecret" value="false">비공개
																<input type="button" class="deleteNeedEquip btn btn-danger" value="제거" style="float: right;">
															</td>
														</tr>
													</tbody>
												</table>
											</div>
										</div> 
									</div>
									<div>
										<div>
											<input type="button" value="작업단계 추가" id="addPpWork" class="btn btn-info">
										</div>
										<div style="float: right;">
											<button type="button" id="addProductionPlan" class="btn btn-primary">등록</button>
										</div>
									</div>
								</div>
							</section>
	    				</form>
					</div>
				</div>
    		</c:if>
    	</section>
   	</section>
</body>
</html>