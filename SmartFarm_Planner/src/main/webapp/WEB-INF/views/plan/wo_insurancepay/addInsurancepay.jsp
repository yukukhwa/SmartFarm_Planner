<!-- 나성수 -->
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>addInsurancepay</title>
<jsp:include page="/WEB-INF/views/css.jsp"/>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script>
	$(document).ready(function(){
		$('input#eInsurancepayStartday').change(function(){
			$('input#eInsurancepayTerm').val($('input#eInsurancepayEndday').val()-$('input#eInsurancepayStartday').val());
		});
		$('input#eInsurancepayTotalcost').keydown(function(){
			$('input#eInsurancepayExpectcost').val(($(this).val()/$('input#eInsurancepayTerm').val()).toFixed(2));
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
    			<a href="${pageContext.request.contextPath}/">
    				<strong>
    					농가회원만 이용가능합니다.
    				</strong>
    			</a>
    		</c:if>
    		<c:if test="${loginMember.level == 'farm'}">
				<h1>예상보험비를 등록해주세요</h1>
				<form action="#" method="post">
    				작업단계 : 
    				<select name="ppWork.ppWorkNumber" id="ppWorkNumber">
    					<c:forEach items="${ppWorkList}" var="ppWork">
    						<option value="${ppWork.ppWorkNumber}">${ppWork.ppWorkName}</option>
    					</c:forEach>
    				</select>
    				<select name="categoryTheme.themeNumber" id="themeNumber">
    					<c:forEach items="${themeList}" var="categoryTheme">
    						<option value="${categoryTheme.themeNumber}">${categoryTheme.themeName}</option>
    					</c:forEach>
    				</select>
    				<div>
    					보험명 : <input type="text" name="eInsurancepayMame" id="eInsurancepayMame">
    				</div>
    				<div>
    					보험내용 : <textarea rows="4" cols="50" name="eInsurancepayContent" id="eInsurancepayContent"></textarea>
    				</div>
	    			<div>
	    				보험가입일 : <input type="date" name="eInsurancepayStartday" id="eInsurancepayStartday">
	    			</div>
	    			<div>
	    				보험만료일 : <input type="date" name="eInsurancepayEndday" id="eInsurancepayEndday">
	    			</div>
	    			<div>
	    				보헙가입기간 : <input type="number" name="eInsurancepayTerm" id="eInsurancepayTerm">
	    			</div>
	    			<div>
	    				총보험비 : <input type="number" name="eInsurancepayTotalcost" id="eInsurancepayTotalcost">
	    			</div>
	    			<div>
	    				예상보험비(월) : <input type="text" name="eInsurancepayExpectcost" id="eInsurancepayExpectcost">
	    			</div>
	    			<div>
	    				공개여부 : <input type="radio" value="true" name="eInsurancepaySecret" checked="checked">공개 <input type="radio" value="false" name="eInsurancepaySecret">비공개
	    			</div>
	    			<button type="submit">계획서 등록</button>
	    		</form>
    		</c:if>
		</section>
    </section>
</body>
</html>