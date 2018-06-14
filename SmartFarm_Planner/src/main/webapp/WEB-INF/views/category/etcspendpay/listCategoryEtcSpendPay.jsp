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
	    			<c:forEach var="categoryEtcSpendPayDb" items="${list}">
		    			<tr>
		    				<td>
		    				   ${categoryEtcSpendPayDb.etcspendpayNumber} 				
		    				</td>
		    				<td>
		    				    ${categoryEtcSpendPayDb.categoryThemeDb.themeName}				
		    				</td>
		    				<td>
		    				    ${categoryEtcSpendPayDb.etcspendpayName}				
		    				</td>
		    				<td>
		    				   ${categoryEtcSpendPayDb.farmDb.fName} 				
		    				</td>
		    				<td>
		    				    ${categoryEtcSpendPayDb.farmDb.fMemberId}				
		    				</td>
		    				<c:if test="${loginMember.corpName == categoryEtcSpendPayDb.farmDb.fName}">
		    					<td>
		    						<a href="${pageContext.request.contextPath}/updateCategoryEtcSpendPay?etcspendPayNumber=${categoryEtcSpendPayDb.etcspendpayNumber}">수정</a>
		    					</td>
		    					<td>
		    						<a href="${pageContext.request.contextPath}/deleteCategoryEtcSpendPay?etcspendPayNumber=${categoryEtcSpendPayDb.etcspendpayNumber}">삭제</a>
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