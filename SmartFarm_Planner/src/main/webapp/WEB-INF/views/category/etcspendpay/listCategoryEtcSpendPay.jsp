<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>listCategoryEtcSpendPay</title>
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
	    	<table>
	    		<thead>
	    			<tr>
	    				<th>
	    					기타지출비카테고리넘버
	    				</th>
	    				<th>
	    					테마명
	    				</th>
	    				<th>
	    					기타지출비명
	    				</th>
	    				<th>
	    					농가명
	    				</th>
	    				<th>
	    					농가회원아이디
	    				</th>	
	    			</tr>
	    		</thead>
	    		<tbody>
	    			<c:forEach var="categoryEtcSpendPay" items="${list}">
		    			<tr>
		    				<td>
		    				   ${categoryEtcSpendPay.etcspendpayNumber} 				
		    				</td>
		    				<td>
		    				    ${categoryEtcSpendPay.categoryTheme.themeName}				
		    				</td>
		    				<td>
		    				    ${categoryEtcSpendPay.etcspendpayName}				
		    				</td>
		    				<td>
		    				   ${categoryEtcSpendPay.farm.fName} 				
		    				</td>
		    				<td>
		    				    ${categoryEtcSpendPay.farm.fMemberId}				
		    				</td>
		    				<c:if test="${loginMember.corpName == categoryEtcSpendPay.farm.fName}">
		    					<td>
		    						<a href="${pageContext.request.contextPath}/updateCategoryEtcSpendPay?etcspendpayNumber=${categoryEtcSpendPay.etcspendpayNumber}">수정</a>
		    					</td>
		    					<td>
		    						<a href="${pageContext.request.contextPath}/deleteCategoryEtcSpendPay?etcspendpayNumber=${categoryEtcSpendPay.etcspendpayNumber}">삭제</a>
		    					</td>
		    				</c:if>
		    			</tr>
	    			</c:forEach>
	    		</tbody>
	    	</table>
    	</section>
    </section>
</body>
</html>