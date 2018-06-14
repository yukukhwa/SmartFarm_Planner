<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<jsp:include page="/WEB-INF/views/css.jsp"/>
</head>
<body>
	!-- container section start -->
	<jsp:include page="/WEB-INF/views/top.jsp"></jsp:include>
    <!--sidebar start-->
    <jsp:include page="/WEB-INF/views/left.jsp"></jsp:include>
    <!--sidebar end-->
     <!--main content start-->
    <section id="main-content">
    	<section class="wrapper">
    		<a href="${pageContext.request.contextPath}/listEtcSpendPay">예상 기타지출비 리스트로 가기</a>
    		<a href="${pageContext.request.contextPath}/addEtcSpendPay">예상 기타지출비 등록하러 가기</a>
    		<a href="${pageContext.request.contextPath}/updateEtcSpendPay">예상 기타지출비 수정</a>
    		<a href="${pageContext.request.contextPath}/listWorkPlan">작업단계 리스트로 가기</a>
    	</section>
    </section>	
</body>
</html>