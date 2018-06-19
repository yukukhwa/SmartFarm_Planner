<!-- 배건혜 -->
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>updateCompanyRentEquip</title>
<jsp:include page="/WEB-INF/views/css.jsp"/>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script type="text/javascript">
	$(document).ready(function(){
		$('#equipNumber').val(${companyRentEquip.categoryEquip.equipNumber})
		$('#cNumber').val(${companyRentEquip.company.cNumber})
		$('button').click(function(){
			$('form').submit();
		});
	});
</script>
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
			<h3>대여가능장비 수정</h3>    
			<form action="${pageContext.request.contextPath}/updateCompanyRentEquip" method="post">
				<select name="categoryEquip.equipNumber" id="equipNumber">
    					<c:forEach var="categoryEquip" items="${categoryEquip}">
    						<option value="${categoryEquip.equipNumber}">${categoryEquip.equipName}</option>
    					</c:forEach>
    				</select><br>
    				<select name="company.cNumber" id="cNumber">
    					<c:forEach var="company" items="${company}">
    						<option value="${company.cNumber}">${company.cName}</option>
    					</c:forEach>
    				</select>
    			<div>
    				대여가능장비넘버 : <input type="number" value="${companyRentEquip.cRentNumber}" disabled="disabled">
    			</div>
				<div>
   					대당사용료 : <input type="text" name="cRentCost" id="cRentCost" value="${companyRentEquip.cRentCost}">원
   					<input type="hidden" name="cRentNumber" value="${companyRentEquip.cRentNumber}">
   				</div>
   				<div>
   					단위시간 : <input type="number" name="cRentDate" id="cRentDate" value="${companyRentEquip.cRentDate}">일
   				</div>
   				<div>
   					모델명 : <input type="text" name="cRentModelname" id="cRentModelname" value="${companyRentEquip.cRentModelname}">
   				</div>
			</form>		
			<button type="button">수정</button>
    	
    	</section>
    </section>	
</body>
</html>