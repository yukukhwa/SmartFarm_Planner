<!-- [김재희] -->
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>addHumanPay</title>
<jsp:include page="/WEB-INF/views/css.jsp"/>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script type="text/javascript">
	$(document).ready(function(){
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
	    		<div>
	    			해당 페이지에 접근할 수 없는 권한입니다.	
	    		</div>
    		</c:if>
    		<c:if test="${loginMember.level == 'farm'}">
				<h3>예상 인건비 등록하기</h3>
				<form method="post" action="${PageContext.request.contextPath}/addHumanPay">
				
				</form>
				
				<a href="${pageContext.request.contextPath}/listHumanPay">예상 인건비 리스트로 가기</a>
			</c:if>
		</section>
	</section>
</body>
</html>