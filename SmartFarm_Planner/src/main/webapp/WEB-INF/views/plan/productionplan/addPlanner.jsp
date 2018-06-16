<!-- 나성수 -->
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>addPlanner</title>
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
    		<c:if test="${loginMember.level == null}">
    			<a href="${pageContext.request.contextPath}/login">
    				<strong>
    					농가로 로그인 하셔야 이용가능합니다.
    				</strong>
    			</a>
    		</c:if>
    		<c:if test="${loginMember.level == 'company' || loginMember.level == 'agency'}">
    			<a href="${pageContext.request.contextPath}/">
    				<strong>
    					농가회원만 이용가능합니다.
    				</strong>
    			</a>
    		</c:if>
    		<c:if test="${loginMember.level == 'farm'}">
	    		<h1>계획서를 작성해주세요.</h1>
	    		<form action="${pageContext.request.contextPath}/addPlanner" method="post">
    				계획명 : 
    				<select name="ppNumber" id="ppNumber">
    					<c:forEach items="${titleList}" var="title">
    						<option value="${title.ppNameNumber}">${title.ppNamePlanname}</option>
    					</c:forEach>
    				</select>
	    			<div>
	    				계획 기간 : <input type="date" name="ppStartday" id="ppStartday"> ~ <input type="date" name="ppEndday" id="ppEndday">
	    			</div>
	    			<div>
	    				소유면적 : <input type="number" name="ppOwnarea" id="ppOwnarea">
	    			</div>
	    			<div>
	    				임대면적 : <input type="number" name="ppRentarea" id="ppRentarea">
	    			</div>
	    			<div>
	    				공개여부 : <input type="radio" value="true" name="ppSecret" checked="checked">공개 <input type="radio" value="false" name="ppSecret">비공개
	    			</div>
	    			<div>
	    				<div>
	    					+ 작업단계 등록 화면
	    				</div>
	    			</div>
	    			<button type="submit">계획서 등록</button>
	    		</form>
	    		
    		</c:if>
    	</section>
   	</section>
</body>
</html>