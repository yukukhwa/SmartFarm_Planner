<!-- 나성수 -->
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>oneAgency</title>
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
	    	<div class="panel panel-danger">
    			<div class="panel-heading">
	    			${agencyDb.aName}
	    		</div>
	   			<div class="panel-content">
	   				대표 : ${agencyDb.agencyMemberDb.aMemberName}<br>
	   				주소 : ${agencyDb.aDoroaddress}(${agencyDb.aJibunaddress})<br>
	   				연락처 : ${agencyDb.aPhone}<br>
	   				등록일자 : ${agencyDb.aRegistdate}
	   			</div>
	   			<div>
	   				<a class="btn btn-danger  btn-sm" href="${pageContext.request.contextPath}/listAgencyMember?aName=${agencyDb.aName}">회사조직도</a>
	   			</div>
	   			<c:if test="${loginMember.level == 'agency' && loginMember.corpNumber == agencyDb.aNumber}">
	   				<div>
		   				<a class="btn btn-danger  btn-sm" href="${pageContext.request.contextPath}/updateAgency?aName=${agencyDb.aName}">관리기관정보 수정하기</a>
		   			</div>
		   			<c:if test="${loginMember.boss == 'boss'}">
			   			<div>
			   				<a class="btn btn-danger  btn-sm" href="${pageContext.request.contextPath}/deleteAgency?aNumber=${agencyDb.aNumber}&aName=${agencyDb.aName}">관리기관정보 삭제하기</a>
			   			</div>
		   			</c:if>
	   			</c:if>
	   			<div>
	   				<a class="btn btn-danger  btn-sm" href="${pageContext.request.contextPath}/listAgency">목록보기</a>
	   			</div>
	    	</div>
    	</section>
    </section>
</body>
</html>