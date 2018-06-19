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
		$('input#addPpWork').click(function(){
			var ppWorkNum = $('div.ppWork').length;
			$('div#addPpWorkForm').append('<div class="ppWork">'
											+'<div>'
												+'<label>'
													+'작업명 : <input type="text" name="ppWorkList['+ppWorkNum+'].ppWorkName" class="ppWorkName">'
												+'</label>'
											+'</div>'
											+'<div>'
												+'<label>'
													+'작업시작일 : <input type="date" name="ppWorkList['+ppWorkNum+'].ppWorkStartday">'
												+'</label>'
											+'</div>'
											+'<div>'
												+'<label>'
													+'작업완료일 : <input type="date" name="ppWorkList['+ppWorkNum+'].ppWorkEndday">'
												+'</label>'
											+'</div>'
											+'<div>'
												+'<label>'
													+'작업면적 : <input type="number" name="ppWorkList['+ppWorkNum+'].ppWorkArea">'
												+'</label>'
											+'</div>'
											+'<div>'
												+'<label>'
													+'작업상세내용 : <textarea rows="10" cols="80" name="ppWorkList['+ppWorkNum+'].ppWorkContent"></textarea>'
												+'</label>'
											+'</div>'
											+'<div class="addPayForm">'
					   						+'</div>'
					   						+'<input type="button" class="addPay" value="예상 비용 작성란 추가">'
											/* +'<input type="button" id="deletePpWork" value="작업단계 제거">' */
			    						+'</div>');
		});

		$(document).on('click','.addPay',function(){
			$(this).parent().find('.addPayForm').append('<div class="pay">'
															+'<select class="themeNumber">'
																+'<c:forEach items="${themeList}" var="categoryTheme">'
																	+'<option value="${categoryTheme.themeNumber}">${categoryTheme.themeName}</option>'
																+'</c:forEach>'
															+'</select>'
															+'<div class="selectPay">'
															+'</div>'
							   							+'</div>');
		});
		
		$(document).on('change','select.themeNumber',function(){
			var select = $(this);
			var ppWorkName = $(select).parents('.ppWork').find('input.ppWorkName').attr('name');
			var ppWorkList = ppWorkName.split('.')[0];
			var selectVal = select.val();
			switch (selectVal) {
			case '4':
				$(select).parent().find('.selectPay').empty();
				var insurancePayNum = $(select).parents('.ppWork').find('.insurancePay').length;
				$(select).parent().find('.selectPay').append('<div class="insurancePay">'
												   				+'<div>'
																	+'보험명 : <input type="text" name="'+ppWorkList+'.woInsurancePayList['+insurancePayNum+'].eInsurancepayMame">'
																	+'<input type="hidden" name="'+ppWorkList+'.woInsurancePayList['+insurancePayNum+'].categoryTheme.themeNumber" value="'+selectVal+'">'
																+'</div>'
																+'<div>'
																	+'보험내용 : <textarea rows="4" cols="50" name="'+ppWorkList+'.woInsurancePayList['+insurancePayNum+'].eInsurancepayContent"></textarea>'
																+'</div>'
																+'<div>'
																	+'보험가입일 : <input type="date" name="'+ppWorkList+'.woInsurancePayList['+insurancePayNum+'].eInsurancepayStartday">'
																+'</div>'
																+'<div>'
																	+'보험만료일 : <input type="date" name="'+ppWorkList+'.woInsurancePayList['+insurancePayNum+'].eInsurancepayEndday">'
																+'</div>'
																+'<div>'
																	+'보헙가입기간 : <input type="number" name="'+ppWorkList+'.woInsurancePayList['+insurancePayNum+'].eInsurancepayTerm">'
																+'</div>'
																+'<div>'
																	+'총보험비 : <input type="number" name="'+ppWorkList+'.woInsurancePayList['+insurancePayNum+'].eInsurancepayTotalcost">'
																+'</div>'
																+'<div>'
																	+'예상보험비(월) : <input type="text" name="'+ppWorkList+'.woInsurancePayList['+insurancePayNum+'].eInsurancepayExpectcost">'
																+'</div>'
																+'<div>'
																	+'공개여부 : <input type="radio" value="true" name="'+ppWorkList+'.woInsurancePayList['+insurancePayNum+'].eInsurancepaySecret" checked="checked">공개 <input type="radio" value="false" name="'+ppWorkList+'.woInsurancePayList['+insurancePayNum+'].eInsurancepaySecret">비공개'
																+'</div>'
															+'</div>');
				break;
			default :
				$(select).parent().find('.selectPay').empty();
				break;
			}
		});
		
		/* $('div#addPpWorkForm').on('click','div#deletePpWork',function(){
			$('div#deletePpWork').parent('div.ppWork').remove();
		}); */
	})
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
	    		<h1>계획서를 작성해주세요.</h1>
	    		<form action="${pageContext.request.contextPath}/addPlanner" method="post">
    				계획명 : 
    				<select name="titlePlan.ppNameNumber" id="ppNameNumber">
    					<c:forEach items="${titleList}" var="title">
    						<option value="${title.ppNameNumber}">${title.ppNamePlanname}</option>
    					</c:forEach>
    				</select>
    				<a href="${pageContext.request.contextPath}/addTitle">계획명 등록하러가기</a>
	    			<div>
	    				계획 기간 : <input type="date" name="ppStartday" id="ppStartday"> ~ <input type="date" name="ppEndday" id="ppEndday">
	    			</div>
	    			<div>
	    				소유면적 : <input type="number" name="ppOwnarea" id="ppOwnarea">
	    			</div>
	    			<div>
	    				임대면적 : <input type="number" name="ppRentarea" id="ppRentarea">
	    			</div>
	    			<div>
	    				공개여부 : <input type="radio" value="true" name="ppSecret" checked="checked">공개 <input type="radio" value="false" name="ppSecret">비공개
	    			</div>
	    			<div id="addPpWorkForm">
		    			<%-- <div class="ppWork">
	   						<div>
	   							<label>
	   								작업명 : <input type="text" name="ppWorkList[0].ppWorkName" class="ppWorkName">
	   							</label>
	   						</div>
	   						<div>
	   							<label>
	   								작업시작일 : <input type="date" name="ppWorkList[0].ppWorkStartday">
	   							</label>
	   						</div>
	   						<div>
	   							<label>
	   								작업완료일 : <input type="date" name="ppWorkList[0].ppWorkEndday">
	   							</label>
	   						</div>
	   						<div>
	   							<label>
	   								작업면적 : <input type="number" name="ppWorkList[0].ppWorkArea">
	   							</label>
	   						</div>
	   						<div>
	   							<label>
	   								작업상세내용 : <textarea rows="10" cols="80" name="ppWorkList[0].ppWorkContent"></textarea>
	   							</label>
	   						</div>
	   						<div class="addPayForm">
	   							<div class="pay">
	   								<select class="themeNumber">
				    					<c:forEach items="${themeList}" var="categoryTheme">
				    						<option value="${categoryTheme.themeNumber}">${categoryTheme.themeName}</option>
				    					</c:forEach>
				    				</select>
					   				<div class="selectPay">
						   				<div class="insurancePay">
							   				<div>
						    					보험명 : <input type="text" name="ppWorkList[0].woInsurancePayList[0].eInsurancepayMame">
						    					<input type="hidden" name="ppWorkList[0].woInsurancePayList[0].categoryTheme.themeNumber">
						    				</div>
						    				<div>
						    					보험내용 : <textarea rows="4" cols="50" name="ppWorkList[0].woInsurancePayList[0].eInsurancepayContent"></textarea>
						    				</div>
							    			<div>
							    				보험가입일 : <input type="date" name="ppWorkList[0].woInsurancePayList[0].eInsurancepayStartday">
							    			</div>
							    			<div>
							    				보험만료일 : <input type="date" name="ppWorkList[0].woInsurancePayList[0].eInsurancepayEndday">
							    			</div>
							    			<div>
							    				보헙가입기간 : <input type="number" name="ppWorkList[0].woInsurancePayList[0].eInsurancepayTerm">
							    			</div>
							    			<div>
							    				총보험비 : <input type="number" name="ppWorkList[0].woInsurancePayList[0].eInsurancepayTotalcost">
							    			</div>
							    			<div>
							    				예상보험비(월) : <input type="text" name="ppWorkList[0].woInsurancePayList[0].eInsurancepayExpectcost">
							    			</div>
							    			<div>
							    				공개여부 : <input type="radio" value="true" name="ppWorkList[0].woInsurancePayList[0].eInsurancepaySecret" checked="checked">공개 <input type="radio" value="false" name="ppWorkList[0].woInsurancePayList[0].eInsurancepaySecret">비공개
							    			</div>
						   				</div>
					   				</div>
	   							</div>
	   						</div>
	   						<input type="button" class="addPay" value="예상 비용 작성란 추가">
	   						<!-- <input type="button" id="deletePpWork" value="작업단계 제거"> -->
		    			</div> --%>
	    			</div>
	    			<input type="button" id="addPpWork" value="작업단계 추가"><br>
	    			<button type="submit">계획서 등록</button>
	    		</form>
    		</c:if>
    	</section>
   	</section>
</body>
</html>