<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>addMaterialsPay</title>
<jsp:include page="/WEB-INF/views/css.jsp"/>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script type="text/javascript">
	$(document).ready(function(){
		$('#addMaterialsPay').click(function(){
			$('#addMaterialsPayForm').submit();
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
    		<c:if test="${loginMember.level != 'farm'}">
	    		<div>
	    			해당페이지 접근할 수 없는 권한입니다.
	    		</div>
    		</c:if>
    		<c:if test="${loginMember.level == 'farm'}">
    			<div>
    				<h3>예상 원자재비 등록 화면</h3>
    				<form id="addMaterialsPayForm" method="post" action="${pageContext.request.contextPath}/addMaterialsPay">
    					<div>
    						<input type="radio" name="eMaterialspaySecret" value="true" checked="checked">공개
    						<input type="radio" name="eMaterialspaySecret" value="false">비공개
    					</div> 
    					<div>
    						<label>작업단계 선택 : </label>
    						<select name="ppWork.ppWorkNumber">
    							<c:forEach var="ppWork" items="${ppWorkList}">
    								<option value="${ppWork.ppWorkNumber}">${ppWork.ppWorkName}</option>
    							</c:forEach>
    						</select>
    					</div>
    					<div>
    						<label>원자재비 카테선택 : </label>
    						<select name="categoryMaterials.materialsNumber">
    							<c:forEach var="categoryMaterials" items="${categoryMaterials}">
    							<option value="${categoryMaterials.materialsNumber}">${categoryMaterials.materialsName}</option>
    							</c:forEach>
    						</select>
    					</div>
    					<div>
    						<label>
    							원자재 예상사용량 단위제외  : <input type="number" name="eMaterialspayUse">
    							<!-- 원자재비 카테고리의 넘버가  -->
	    						<%-- <c:if test="">
	    							${categoryMaterials.materialsUnit}
	    						</c:if> --%>
    						</label>
    					</div>
    				
    					<div>
    						<label>
    							원자재단가 : <input type="number" name="eMaterialspayUnitcost"> 원
    						</label>
    					</div>
    					<button id="addMaterialsPay">예상 원자재비 등록</button>
    				</form>
    			</div>
    		</c:if>
		</section>
	</section>
	
</body>
</html>