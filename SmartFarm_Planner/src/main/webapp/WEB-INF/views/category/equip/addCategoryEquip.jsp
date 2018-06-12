<!-- 배건혜 -->
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<title>addCategoryEquip</title>
	<jsp:include page="/WEB-INF/views/css.jsp"/>
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
    	<c:if test="${loginMember.level == 'agency'}">
    		<h1>장비종류카테고리 등록화면</h1>
    		<form action="${pageContext.request.contextPath}/addCategoryEquip" method="post">
    			장비명<br>
    			<input type="text" name="equipName" id="equipName" placeholder="장비명을 입력해주세요">
    			<button type="submit">등록하기</button>
    		</form>
    	</c:if>
    	</section>
    </section>
</body>
</html>