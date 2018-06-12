<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>listHumanPay</title>
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
    		<h3>예상 인건비 리스트</h3>
    		<a href="${pageContext.request.contextPath}/updateHumanPay">예상인건비 수정화면으로 가기</a> <br>
    		<a href="${pageContext.request.contextPath}/listMaterialsPay">예상 원자재비 리스트로 가기</a> <br>
    		<a href="${pageContext.request.contextPath}/addHumanPay">예상 인건비 등록으로 가기</a> <br>
    		<a href="${pageContext.request.contextPath}/listWorkPlan">작업단계 리스트로 가기</a>
    	</section>
	</section>
</body>
</html>