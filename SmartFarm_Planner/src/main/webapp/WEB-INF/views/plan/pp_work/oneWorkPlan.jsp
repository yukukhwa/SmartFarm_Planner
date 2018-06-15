<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>oneWorkPlan</title>
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
    		<div>
    			<h3>작업단계별 상세리스트</h3>
    			<div>
    				계획서 넘버 : <input type="text" value="${ppNumber}"> <br>
    				작업단계 넘버 : <input type="text" value="${ppWorkNumber}"> <br>
    				<a href="${pageContext.request.contextPath}/listMaterialsPay?ppWorkNumber=${ppWorkNumber}">예상원자재비 리스트</a>
    			</div>
    			<div>
    				<table class="table">
    					
    				</table>
    			</div>
    		</div>
    	</section>
    </section>
</body>
</html>