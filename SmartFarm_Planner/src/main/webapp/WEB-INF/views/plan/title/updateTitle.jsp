<!-- 나성수 -->
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>updateTitle</title>
<jsp:include page="/WEB-INF/views/css.jsp"/>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script type="text/javascript">
	$(document).ready(function(){
		$('select#iItemNumber').val(${title.categoryItemDb.iItemNumber});
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
	    		<h1>계획명을 수정해주세요.</h1>
	    		<form action="${pageContext.request.contextPath}/updateTitle" method="post">
		    		<select name="categoryItemDb.iItemNumber" id="iItemNumber">
		    			<c:forEach items="${list}" var="item">
		    				<option value="${item.iItemNumber}">${item.iItemName}</option>
		    			</c:forEach>
		    		</select>
	    			계획명 : <input type="text" name="ppNamePlanname" id="ppNamePlanname" value="${title.ppNamePlanname}">
	    			<input type="hidden" name="ppNameNumber" id="ppNameNumber" value="${title.ppNameNumber}">
	    		</form>
	    		<button type="button">등록</button>
    	</section>
   	</section>
</body>
</html>