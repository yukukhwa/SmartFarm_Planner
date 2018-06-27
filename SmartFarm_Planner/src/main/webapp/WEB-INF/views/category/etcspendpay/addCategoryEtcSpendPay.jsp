<!-- 배건혜 -->
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<title>addCategoryEtcSpendPay</title>
	<jsp:include page="/WEB-INF/views/css.jsp"/>
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
	<script type="text/javascript">
	$(document).ready(function(){
		$('button').click(function(){
			$('form').submit();
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
    		<c:if test="${loginMember.level != 'farm'}">
    			해당 페이지에 접근할 수 없는 권한입니다.
    		</c:if>
    		<c:if test="${loginMember.level == 'farm'}">
    		<h1>기타지출비카테고리 등록</h1>
	    		<form action="${pageContext.request.contextPath}/addCategoryEtcSpendPay" method="post">
	    			<div>
	    				<label>
	    				테마카테고리 선택
		    				<select name="categoryTheme.themeNumber" id="categoryTheme.themeNumber">
		    					<option>테마선택</option>
		    					<c:forEach var="categoryTheme" items="${categoryTheme}">
		    						<option value="${categoryTheme.themeNumber}">${categoryTheme.themeName}</option>
		    					</c:forEach>
		    				</select>
	    				</label>
	    			</div>
	    			<div>
	    				기타지출비용명<br>
	    				<input type="text" name="etcspendpayName" id="etcspendpayName" placeholder="기타지출비명을 입력하세요">
	    			</div>
	    		</form>
	    		<button type="submit">등록하기</button>
    		</c:if>
    	</section>
    </section>
</body>
</html>