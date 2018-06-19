<!-- [김재희] -->
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>updateHumanPay</title>
<jsp:include page="/WEB-INF/views/css.jsp"/>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script type="text/javascript">
	$(document).ready(function(){
		$('#updateHumanPay').click(function(){
			('#updateHumanPayForm').submit();
		})
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
    		<h3>인건비 수정화면</h3>
    		<form id="updateHumanPayForm" method="post" action="${pageContext.request.contextPath}/updateHumanPay">
    			<div>
    				<input type="hidden" name="eHumanpayNumber" value="${woHumanPay.eHumanpayNumber}">
    				<input type="hidden" name="ppWorkNumber" value="${woHumanPay.ppWork.ppWorkNumber}">
   				</div>
   				<div>
   					<input type="hidden" name="ppNumber" value="${ppNumber}">
   				</div>
    			<div>
    				<label>
    					예상 인건비 공개여부 : 
    					<input type="radio" name="eHumanpaySecret" value="true" checked="checked">공개
    					<input type="radio" name="eHumanpaySecret" value="false">비공개
    				</label>
    			</div>
    			<div>
    				<label>테마 카테고리 수정 : </label>
    				<select name="categoryTheme.themeNumber">
    					<c:forEach var="categoryTheme" items="${categoryThemeList}">
    						<option value="${categoryTheme.themeNumber}">${categoryTheme.themeName}</option>
    					</c:forEach>
    				</select>
    			</div>
    			<div>
    				<label>작업단계 수정 : </label>
    				<select name="ppWork.ppWorkNumber">
    					<c:forEach var="ppWork" items="${ppWorkList}">
    						<option value="${ppWork.ppWorkNumber}">${ppWork.ppWorkName}</option>
    					</c:forEach>
    				</select>
    			</div>
    			<div>
    				<label>
    					인부 이름  : <input type="text" name="eHumanpayName" value="${woHumanPay.eHumanpayName}">
    				</label>
    			</div>
    			<div>
    				<label>
    					인부 주민등록 번호  : <input type="text" name="eHumanpayResidentnumber" value="${woHumanPay.eHumanpayResidentnumber}">
    				</label>
    			</div>
    			<div>
    				<label>
    					예상 인건비 일급 : <input type="number" name="eHumanpayExpectpay" value="${woHumanPay.eHumanpayExpectpay}">
    				</label>
    			</div>
    			<div>
    				<label>
    					예상 인건비지급날짜 : <input type="date" name="eHumanpayExpectday" value="${woHumanPay.eHumanpayExpectday}">
    				</label>
    			</div>
    			<button id="updateHumanPay">예상 인건비 수정하기</button>
    		</form>
    		<a href="${pageContext.request.contextPath}/listHumanPay">예상 인건비 리스트로 가기</a>
    	</section>
	</section>
</body>
</html>