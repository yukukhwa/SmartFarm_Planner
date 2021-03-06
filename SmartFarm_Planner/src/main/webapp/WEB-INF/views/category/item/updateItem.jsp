<!-- 나성수 -->
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>updateItem</title>
<jsp:include page="/WEB-INF/views/css.jsp"/>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script type="text/javascript">
	$(document).ready(function(){
		$('select#industry').val(${item.categoryIndustryDb.industryNumber});
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
  			<h3>품목카테고리를 수정해주세요.</h3>
	   		<form action="${pageContext.request.contextPath}/updateItem" method="post">
	   			<select name="categoryIndustryDb.industryNumber" id="industry">
	   				<c:forEach items="${list}" var="industry">
	   					<option value="${industry.industryNumber}">${industry.industryName}</option>
	   				</c:forEach>
	   			</select>
	   			품목명 : <input type="text" name="iItemName" id="iItemName" value="${item.iItemName}">
	   			<input type="hidden" name="iItemNumber" id="iItemNumber" value="${item.iItemNumber}">
	   		</form>
	   		<button type="button">등록</button>
    	</section>
    </section>
</body>
</html>