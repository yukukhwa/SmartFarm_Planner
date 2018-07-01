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
	    	<div class="panel panel-info" style="width: 80%; margin: 10% auto;">
    			<div class="panel-heading">
	    			${agencyDb.aName}
	    			<div class="panel-actions">
	   					<a href="${pageContext.request.contextPath}/listAgency" class="btn-close"><i class="fa fa-times"></i></a>
	    			</div>
	    		</div>
	   			<div class="panel-content" style="padding: 10px 10px 40px 10px;">
	   				<div>
		   				대표 : ${agencyDb.agencyMemberDb.aMemberName}<br>
		   				주소 : ${agencyDb.aDoroaddress}(${agencyDb.aJibunaddress})<br>
		   				연락처 : ${agencyDb.aPhone}<br>
		   				등록일자 : ${agencyDb.aRegistdate}
	   				</div>
	   				<div>
		   				<div style="float: left;">
		   					<a class="btn btn-info btn-sm" href="${pageContext.request.contextPath}/listAgencyMember?aName=${agencyDb.aName}">회사조직도</a>
		   				</div>
		   				<div style="float: right;">
				   			<c:if test="${loginMember.level == 'agency' && loginMember.corpNumber == agencyDb.aNumber}">
				   				<a class="btn btn-warning btn-sm" href="${pageContext.request.contextPath}/updateAgency?aName=${agencyDb.aName}">관리기관정보 수정하기</a>
					   			<c:if test="${loginMember.boss == 'boss'}">
					   				<a class="btn btn-danger btn-sm" href="${pageContext.request.contextPath}/deleteAgency?aNumber=${agencyDb.aNumber}&aName=${agencyDb.aName}">관리기관정보 삭제하기</a>
					   			</c:if>
				   			</c:if>
		   				</div>
		   			</div>
	   			</div>
	    	</div>
    	</section>
    </section>
</body>
</html>