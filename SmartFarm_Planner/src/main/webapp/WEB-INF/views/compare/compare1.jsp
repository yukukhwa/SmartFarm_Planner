<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<!DOCTYPE html>
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<title>compare1</title>
	<jsp:include page="/WEB-INF/views/css.jsp"></jsp:include>
</head>
<body>
	<jsp:include page="/WEB-INF/views/top.jsp"></jsp:include>
	<jsp:include page="/WEB-INF/views/left.jsp"></jsp:include>
	<!--main content start-->
	<section id="main-content">
		<section class="wrapper">
			<h3 class="page-header"><i class="icon_desktop"></i>농가전용 계획서별 실행결과 비교</h3>
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
				<div class="panel">
					<header class="panel-heading"> 계획 대비 실행 결과 리스트별 달성도 </header>
					<div class="panel-body">
						<c:forEach var="result" items="${resultList}" varStatus="i">
							<div class="row">
								<div class="col-lg-1 col-md-1 col-sm-1 col-xs-1" style="text-align: right;">${i.count}차</div>
								<div class="col-lg-9 col-md-9 col-sm-9 col-xs-9">
									<div class="progress progress-striped active progress-sm">
										<c:if test="${75 < result && result <= 100}">
											<div class="progress-bar progress-bar-success" role="progressbar" aria-valuenow="${result}" aria-valuemin="0" aria-valuemax="100" style="width: ${result}%">
												<span class="sr-only">${result}% 달성</span>
											</div>
										</c:if>
										<c:if test="${50 < result && result <= 75}">
											<div class="progress-bar progress-bar-info" role="progressbar" aria-valuenow="${result}" aria-valuemin="0" aria-valuemax="100" style="width: ${result}%">
												<span class="sr-only">${result}% 달성</span>
											</div>
										</c:if>
										<c:if test="${25 < result && result <= 50}">
											<div class="progress-bar progress-bar-warning" role="progressbar" aria-valuenow="${result}" aria-valuemin="0" aria-valuemax="100" style="width: ${result}%">
												<span class="sr-only">${result}% 달성</span>
											</div>
										</c:if>
										<c:if test="${0 < result && result <= 25}">
											<div class="progress-bar progress-bar-danger" role="progressbar" aria-valuenow="${result}" aria-valuemin="0" aria-valuemax="100" style="width: ${result}%">
												<span class="sr-only">${result}% 달성</span>
											</div>
										</c:if>
									</div>
								</div>
								<div class="col-lg-2 col-md-2 col-sm-2 col-xs-2">${result}% 달성</div>
							</div>
						</c:forEach>
						<c:if test="${fn:length(resultList) == 0}">
							데이터가 존재하지 않습니다.
							<a href="${pageContext.request.contextPath}/listMyActResultList">데이터 등록하러가기</a>
						</c:if>
					</div>
				</div>
			</c:if>
		</section>
	</section>
</body>
</html>