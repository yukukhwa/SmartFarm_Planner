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
		$('#searchMaterialsPay').click(function(){
			$('#searchMaterialsPayForm').submit();
		})
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
	    		<!-- 예상원자재비 검색 폼 시작 -->
	    		<div>
	    			<form id="searchMaterialsPayForm" method="post" action="${pageContext.request.contextPath}/listMaterialsPay">
		    			<label>예상 원자재비 검색</label>
				    		<select name="searchMaterialsPayOption">
				    			<option value="materialsName">원자재명</option>
				    		</select>
			    			<input type="text" name="searchKeyword">
			    			<input type="hidden" name="ppWorkNumber" value="${ppWorkNumber}">
		    			<button class="btn btn-info" id="searchMaterialsPay">예상원자재비 검색하기</button>
	    			</form>
	    		</div>
	    		<!-- 예상원자재비 검색 끝 -->
    			<div>
    				<table class="table">
    					<thead>
    						<tr>
    							<th>예상원자재넘버</th>
    							<th>작업단계명</th>
    							<th>원자재카테_원자재명</th>
    							<th>원자재단가</th>
    							<th>사용예정(단위랑 같이)</th>
    						</tr>
    					</thead>
						<tbody>
							<c:forEach var="woMaterialsPay" items="${list}">
								<c:if test="${woMaterialsPay.eMaterialspaySecret != 'false'}">
									<tr>
										<td>${woMaterialsPay.eMaterialspayNumber}</td>
										<td>${woMaterialsPay.ppWork.ppWorkName}</td>
										<td>${woMaterialsPay.categoryMaterials.materialsName}</td>
										<td>${woMaterialsPay.eMaterialspayUnitcost}</td>
										<td>${woMaterialsPay.eMaterialspayUse} ${woMaterialsPay.categoryMaterials.materialsUnit}</td>
										<td>
											<a href="${pageContext.request.contextPath}/updateMaterialsPay?eMaterialspayNumber=${woMaterialsPay.eMaterialspayNumber}&ppNumber=${woMaterialsPay.ppWork.productionPlan.ppNumber}">수정</a>
										</td>
										<td>
											<a href="${pageContext.request.contextPath}/deleteWoMaterialsPay?eMaterialspayNumber=${woMaterialsPay.eMaterialspayNumber}">삭제</a>
										</td>
									</tr>
								</c:if>
							</c:forEach>
						</tbody>
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