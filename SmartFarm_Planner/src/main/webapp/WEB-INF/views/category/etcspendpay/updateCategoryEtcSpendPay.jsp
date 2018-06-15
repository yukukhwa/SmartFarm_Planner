<!-- 배건혜 -->
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>updateCategoryEtcSpendPay</title>
<jsp:include page="/WEB-INF/views/css.jsp"/>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script type="text/javascript">
	$(document).ready(function(){
		$('select#categoryTheme').val(${categoryEtcSpendPay.categoryTheme.themeNumber});
		$('button').click(function(){
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
    		<c:if test="${loginMember.level != 'farm'}">
    			해당 페이지에 접근할 수 없는 권한입니다.
    		</c:if>
    		<c:if test="${loginMember.level == 'farm'}">
    			<h3>기타지출비카테고리 수정화면</h3>
	    		<form action="${pageContext.request.contextPath}/updateCategoryEtcSpendPay" method="post">
					테마카테고리
					<select name="categoryTheme.themeNumber" id="categoryTheme" >
						<c:forEach items="${categoryTheme}" var="categoryTheme">
							<option  value="${categoryTheme.themeNumber}">${categoryTheme.themeName}</option>
						</c:forEach>
					</select><br> 
					기타지출비명  
					<input type="text" name="etcspendpayName" id="etcspendpayName" value="${categoryEtcSpendPay.etcspendpayName}"> 
					<input type="hidden" name="etcspendpayNumber" id="etcspendpayNumber" value="${categoryEtcSpendPay.etcspendpayNumber}"> 		
	    		</form>
	    		<button type="submit">수정</button>
    		</c:if>
    	</section>
    </section>
</body>
</html>