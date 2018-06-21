<!-- 배건혜 -->
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>addWoEtcSpendPay</title>
<jsp:include page="/WEB-INF/views/css.jsp"/>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script type="text/javascript">
	$(document).ready(function(){
		$('#addWoEtcSpendPay').click(function(){
			$('#addWoEtcSpendPayForm').submit();
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
    		<c:if test="${loginMember.level != 'farm'}">
	    		<div>
	    			해당페이지 접근할 수 없는 권한입니다.
	    		</div>
    		</c:if>
    		<c:if test="${loginMember.level == 'farm'}">
    			<div>
    				<h3>예상기타지출비 등록</h3>
    				<form action="${pageContext.request.contextPath}/addWoEtcSpendPay" method="post" id="addWoEtcSpendPayForm">
    					<div>
    						<input type="radio" name="eEtcspendpaySecret" value="true" checked="checked">공개
    						<input type="radio" name="eEtcspendpaySecret" value="false">비공개
    					</div>
    					<div>
    						<label>작업단계 선택</label>
    						<select name="ppWork.ppWorkNumber">
    							<c:forEach var="ppWork" items="${ppWorkList}">
    								<option value="${ppWork.ppWorkNumber}">${ppWork.ppWorkName}</option>
    							</c:forEach>
    						</select>
    					</div>
    					<div>
    						<label>기타지출비카테고리 선택</label>
    						<select name="categoryEtcSpendPay.etcspendpayNumber">
    							<c:forEach var="categoryEtcSpendPay" items="${categoryEtcSpendPay}">
    							<option value="${categoryEtcSpendPay.etcspendpayNumber}">${categoryEtcSpendPay.etcspendpayName}</option>
    							</c:forEach>
    						</select>
    					</div>
    					<div>
    						<label>
    							지출상세내용<input type="text" name="eEtcspendpayContent">
    						</label>
    					</div>
    					<div>
    						<label>
    							예상기타지출일<input type="text" name="eEtcspendpayDay">
    						</label>
    					</div>
    					<div>
    						<label>
    							예상기타지출비<input type="number" name="eEtcspendpayCost">
    						</label>
    					</div>
    				</form>
    				<button id="addWoEtcSpendPay">등록</button>
    			</div>
    		</c:if>
    	</section>
    </section>	
</body>
</html>