<!-- 배건혜 -->
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE>
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<title>oneCompany</title>
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
    		<div>${companyDb.cName}&nbsp;업체 상세보기</div>
 			<div>
 				대표 : ${companyDb.companyMemberDb.cMemberName}<br>
 				거래처넘버 : ${companyDb.categoryDealDb.dealNumber}<br>
		 		업체주소 : ${companyDb.cDoroaddress}${companyDb.cJibunaddress}<br>
		 		업체 연락처 : ${companyDb.cPhone}<br>
		 		업체 인원 : ${companyDb.cParty}<br>
 			</div>
    		<div>
    			<a href="${pageContext.request.contextPath}/listCompany">리스트로 돌아가기</a>
    		</div>
    	
    	</section>
    </section>
</body>
</html>