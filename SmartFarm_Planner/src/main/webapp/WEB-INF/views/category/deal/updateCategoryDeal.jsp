<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<title>updateCategoryDeal</title>
	<jsp:include page="/WEB-INF/views/css.jsp"/>
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
	<script type="text/javascript">
	$(document).ready(function(){
		$('updateSubmit').click(function(){
			$('updateForm').submit();
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
    		<c:if test="${loginMember.level != 'agency'}">
    			접근 할 수 없는 권한 입니다.
    		</c:if>
    		<c:if test="${loginMember.level == 'agency'}">
    		<h3>거래처 카테고리 수정</h3>
    		<div>
	    		<form action="${pageContext.request.contextPath}/updateCategoryDeal" method="post" id="updateForm">
	    			<div>
	    				<label>
		    				거래처넘버
		    				<input type="text" id="dealNumber" name="dealNumber" value="${listCategoryDeal.dealNumber}" disabled="disabled">
	    				</label>
	    			</div>
	    			<div>
	    				<label>
		    				거래처분류
		    				<input type="text" id="dealClassification" name="dealClassification" value="${listCategoryDeal.dealClassification}">
	    				</label>
	    			</div>
	    			<div>
	    				<label>
		    				관리기관
		    				<input type="text" id="aName" name="aName" value="${listCategoryDeal.agencyDb.aName}" disabled="disabled">
	    				</label>
	    			</div>
	    			<button id="updateSumit">수정</button>
	    		</form>
	    	</div>
    		</c:if>
    	</section>
    </section>
</body>
</html>