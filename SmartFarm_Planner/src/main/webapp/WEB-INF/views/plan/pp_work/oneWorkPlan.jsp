<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>oneWorkPlan</title>
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
    			<h3>작업단계별 상세리스트</h3>
    			<div>
    				<label>예상 원자재비 리스트</label>
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
    					<c:forEach var="woMaterialsPay" items="${ppWork.woMaterialsPayList}">
    						<c:if test="${woMaterialsPay.eMaterialspaySecret != 'false'}">
		    					<tbody>
		    						<tr>
		    							<td>${woMaterialsPay.eMaterialspayNumber}</td>
		    							<td>${woMaterialsPay.ppWork.ppWorkName}</td>
		    							<td>${woMaterialsPay.categoryMaterials.materialsName}</td>
		    							<td>${woMaterialsPay.eMaterialspayUnitcost}</td>
										<td>${woMaterialsPay.eMaterialspayUse} ${woMaterialsPay.categoryMaterials.materialsUnit}</td>
		    						</tr>
		    					</tbody>
    					</c:if>
    					</c:forEach>
    				</table>
    			</div> <br> <br>
    			<div>
    				<label>예상 보험비 리스트</label>
    				<table class="table">
    					<thead>
    						<tr>
    							<th>예상보험비넘버</th>
	    						<th>작업명</th>
	    						<th>테마명</th>
	    						<th>보험명</th>
	    						<th>보험내용</th>
	    						<th>보험가입일</th>
	    						<th>보험만료일</th>
	    						<th>보험가입기간</th>
	    						<th>총보험비</th>
	    						<th>예상보험비(월)</th>
    						</tr>
    					</thead>
    					<tbody>
    					<c:forEach var="woInsurancePay" items="${ppWork.woInsurancePayList}">
	    					<c:if test="${woInsurancePay.eInsurancepaySecret != 'false'}">
	    						<tr>
	    							<td>${woInsurancePay.eInsurancepayNumber}</td>
	    							<td>${woInsurancePay.ppWork.ppWorkName}</td>
	    							<td>${woInsurancePay.categoryTheme.themeName}</td>
	    							<td>${woInsurancePay.eInsurancepayMame}</td>
			    					<td>${woInsurancePay.eInsurancepayContent}</td>
			    					<td>${woInsurancePay.eInsurancepayStartday}</td>
			    					<td>${woInsurancePay.eInsurancepayEndday}</td>
			    					<td>${woInsurancePay.eInsurancepayTerm}</td>
			    					<td>${woInsurancePay.eInsurancepayTotalcost}</td>
			    					<td>${woInsurancePay.eInsurancepayExpectcost}</td>
	    						</tr>
	    					</c:if>
    					</c:forEach>
    					</tbody>
    				</table>
    			</div> <br><br>
    			<div>
    				<label>예상 인건비 리스트</label>
    				<table class="table">
    					<thead>
    						<tr>
    							<th>예상 인건비 넘버</th>
    						</tr>
    					</thead>
    					<tbody>
    						<tr>
    							<td></td>
    						</tr>
    					</tbody>
    				</table>
    			</div>
    		</div>
    	</section>
    </section>
</body>
</html>