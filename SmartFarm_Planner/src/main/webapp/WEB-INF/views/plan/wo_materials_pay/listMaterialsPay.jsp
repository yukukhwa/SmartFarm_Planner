<!-- [김재희] -->
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>listMaterialsPay</title>
<jsp:include page="/WEB-INF/views/css.jsp"/>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script type="text/javascript">
	$(document).ready(function(){
	})
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
    		<div>
	    		<h3>예상 원자재비 리스트</h3>
    			<div>
    				<table class="table">
    					<thead>
    						<tr>
    							<th>예상원자재넘버</th>
    							<th>작업단계명</th>
    							<th>원자재카테_원자재명</th>
    							<th>원자재단가</th>
    							<th>사용예정(단위랑 같이)</th>
    							<th>공개/비공개 여부</th>
    						</tr>
    					</thead>
    					<c:forEach var="woMaterialsPay" items="${list}">
						<tbody>
							<tr>
								<td>${woMaterialsPay.eMaterialspayNumber}</td>
								<td>${woMaterialsPay.ppWork.ppWorkName}</td>
								<td>${woMaterialsPay.categoryMaterials.materialsName}</td>
								<td>${woMaterialsPay.eMaterialspayUnitcost}</td>
								<td>${woMaterialsPay.eMaterialspayUse} ${woMaterialsPay.categoryMaterials.materialsUnit}</td>
								<td>${woMaterialsPay.eMaterialspaySecret}</td>
							</tr>
						</tbody>
						</c:forEach>
    				</table>
    				
    			</div>
	    		<a href="${pageContext.request.contextPath}/updateMaterialsPay">예상 원자재비 수정하기</a> <br>
	    		<a href="${pageContext.request.contextPath}/addMaterialsPay">예상 원자재비 등록하기</a> <br>
	    		<a href="${pageContext.request.contextPath}/listHumanPay">예상 인건비 리스트로 가기</a> <br>
	    		<a href="${pageContext.request.contextPath}/listWorkPlan">작업단계 리스트로 가기</a>
    		</div>
    	</section>
    </section>
</body>
</html>