<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>addMemo</title>
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
    		<form action="${pageContext.request.contextPath}/addMemo" method="post">
    			<div>
	    			<select name="ppWoResult.wrNumber">
	    				<c:forEach var="ppWoResult" items="${ppWoResultList}">
	    					<option value="${ppWoResult.wrNumber}">${ppWoResult.ppWork.ppWorkName}</option>
	    				</c:forEach>
	    			</select>
	    			<select name="categoryTheme.themeNumber">
	    				<c:forEach var="categoryTheme" items="${categoryThemeList}">
	    					<option value="${categoryTheme.themeNumber}">${categoryTheme.themeName}</option>
	    				</c:forEach>
	    			</select>
    				<input type="text" name="wrMemoSubject" placeholder="주제를 입력해주세요">
    			</div>
    			<div>
    				<textarea rows="5" cols="100" name="wrMemoContent" placeholder="내용을 입력해주세요"></textarea>
    			</div>
    			<button type="submit">등록</button>
    		</form>
		</section>
	</section>	
</body>
</html>