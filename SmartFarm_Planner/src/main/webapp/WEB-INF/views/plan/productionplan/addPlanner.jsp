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
													+'작업명 : <input type="text" name="ppWorkList['+ppWorkNum+'].ppWorkName">'
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
											+'<div>'
												+'+예상인건비'
											+'</div>'
											+'<div>'
												+'+예상기타지출비'
											+'</div>'
											+'<div>'
												+'+예상보험비'
											+'</div>'
											+'<div>'
												+'+필요장비계획'
											+'</div>'
											/* +'<input type="button" id="deletePpWork" value="작업단계 제거">' */
			    						+'</div>');
		});
		
		/* $('input:button[id="4"]').click(function(){
			var ppWorkListNum = $(this).parent('div.ppWork').find().attr();
			$('div#addPayForm').append('<div id="insurancepay">'
						  				+'<div>'
											+'보험명 : <input type="text" name="ppWorkList[0].woInsurancePayList[0].eInsurancepayMame" id="eInsurancepayMame">'
											+'<input type="hidden" name="ppWorkList[0].woInsurancePayList[0].categoryTheme.themeNumber" id="themeNumber" value="">'
										+'</div>'
										+'<div>'
											+'보험내용 : <textarea rows="4" cols="50" name="ppWorkList[0].woInsurancePayList[0].eInsurancepayContent" id="eInsurancepayContent"></textarea>'
										+'</div>'
							   			+'<div>'
							   				+'보험가입일 : <input type="date" name="ppWorkList[0].woInsurancePayList[0].eInsurancepayStartday" id="eInsurancepayStartday">'
							   			+'</div>'
							   			+'<div>'
							   				+'보험만료일 : <input type="date" name="ppWorkList[0].woInsurancePayList[0].eInsurancepayEndday" id="eInsurancepayEndday">'
							   			+'</div>'
							   			+'<div>'
							   				+'보헙가입기간 : <input type="number" name="ppWorkList[0].woInsurancePayList[0].eInsurancepayTerm" id="eInsurancepayTerm">'
							   			+'</div>'
							   			+'<div>'
							   				+'총보험비 : <input type="number" name="ppWorkList[0].woInsurancePayList[0].eInsurancepayTotalcost" id="eInsurancepayTotalcost">'
							   			+'</div>'
							   			+'<div>'
							   				+'예상보험비(월) : <input type="text" name="ppWorkList[0].woInsurancePayList[0].eInsurancepayExpectcost" id="eInsurancepayExpectcost">'
							   			+'</div>'
							   			+'<div>'
							   				+'공개여부 : <input type="radio" value="true" name="ppWorkList[0].woInsurancePayList[0].eInsurancepaySecret" checked="checked">공개 <input type="radio" value="false" name="ppWorkList[0].woInsurancePayList[0].eInsurancepaySecret">비공개'							   			'</div>'
										+'</div>'
									+'</div>');
		}); */
		
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
		    			<div class="ppWork">
	   						<div>
	   							<label>
	   								작업명 : <input type="text" name="ppWorkList[0].ppWorkName">
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
	   						<div>
	   							<c:forEach items="${themeList}" var="categoryTheme">
		    						<input type="button" id="${categoryTheme.themeNumber}" value="${categoryTheme.themeName}추가">
		    					</c:forEach>
   							</div>
	   						<div id="addPayForm">
	   							<!-- <div id="insurancepay">
					   				<div>
				    					보험명 : <input type="text" name="ppWorkList[0].woInsurancePayList[0].eInsurancepayMame" id="eInsurancepayMame">
				    					<input type="hidden" name="ppWorkList[0].woInsurancePayList[0].categoryTheme.themeNumber" id="themeNumber" value="">
				    				</div>
				    				<div>
				    					보험내용 : <textarea rows="4" cols="50" name="ppWorkList[0].woInsurancePayList[0].eInsurancepayContent" id="eInsurancepayContent"></textarea>
				    				</div>
					    			<div>
					    				보험가입일 : <input type="date" name="ppWorkList[0].woInsurancePayList[0].eInsurancepayStartday" id="eInsurancepayStartday">
					    			</div>
					    			<div>
					    				보험만료일 : <input type="date" name="ppWorkList[0].woInsurancePayList[0].eInsurancepayEndday" id="eInsurancepayEndday">
					    			</div>
					    			<div>
					    				보헙가입기간 : <input type="number" name="ppWorkList[0].woInsurancePayList[0].eInsurancepayTerm" id="eInsurancepayTerm">
					    			</div>
					    			<div>
					    				총보험비 : <input type="number" name="ppWorkList[0].woInsurancePayList[0].eInsurancepayTotalcost" id="eInsurancepayTotalcost">
					    			</div>
					    			<div>
					    				예상보험비(월) : <input type="text" name="ppWorkList[0].woInsurancePayList[0].eInsurancepayExpectcost" id="eInsurancepayExpectcost">
					    			</div>
					    			<div>
					    				공개여부 : <input type="radio" value="true" name="ppWorkList[0].woInsurancePayList[0].eInsurancepaySecret" checked="checked">공개 <input type="radio" value="false" name="ppWorkList[0].woInsurancePayList[0].eInsurancepaySecret">비공개
					    			</div>
	   							</div> -->
	   						</div>
	   						<!-- <input type="button" id="deletePpWork" value="작업단계 제거"> -->
		    			</div>
	    			</div>
	    			<input type="button" id="addPpWork" value="작업단계 추가"><br>
	    			<button type="submit">계획서 등록</button>
	    		</form>
    		</c:if>
    	</section>
   	</section>
</body>
</html>