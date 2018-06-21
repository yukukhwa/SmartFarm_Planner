<!-- 배건혜 -->
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>listWoEtcSpendPay</title>
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
			<form action="${pageContext.request.contextPath}/listWoEtcSpendPay" method="post">
				<select name="column">
					<option>작업명</option>
					<option>기타지출비명</option>
				</select> 
				<input type="text" name="property"> 
				<input type="hidden" name="ppWorkNumber" value="${ppWorkNumber}">
				<button>검색</button>
			</form>
			<table>
				<thead>
					<tr>
						<th>에상기타지출비넘버</th>
						<th>작업명</th>
						<th>기타지출비명</th>
						<th>지출상세내용</th>
						<th>예상기타지출일</th>
						<th>예상기타지출비</th>
						<th>수정</th>
						<th>삭제</th>
					</tr>
				</thead>
				<tbody>
					<c:forEach var="woEtcSpendPay" items="${list}">
						<c:if test="${woEtcSpendPay.eEtcspendpaySecret != 'false'}">
							<tr>
								<td>${woEtcSpendPay.eEtcspendpayNumber}</td>
								<td>${woEtcSpendPay.ppWork.ppWorkName}</td>
								<td>${woEtcSpendPay.categoryEtcSpendPay.etcspendpayName}</td>
								<td>${woEtcSpendPay.eEtcspendpayContent}</td>
								<td>${woEtcSpendPay.eEtcspendpayDay}</td>
								<td>${woEtcSpendPay.eEtcspendpayCost}</td>
								<td>
									<a href="#">수정</a>
								</td>
								<td>
									<a href="#">삭제</a>
								</td>
							</tr>
						</c:if>
					</c:forEach>
				</tbody>
			
			</table>
		</section>
    </section>	
</body>
</html>