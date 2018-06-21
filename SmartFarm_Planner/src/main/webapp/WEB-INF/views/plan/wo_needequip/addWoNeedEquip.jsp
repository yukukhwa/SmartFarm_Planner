<!-- 배건혜 -->
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<jsp:include page="/WEB-INF/views/css.jsp"/>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script type="text/javascript">
	$(document).ready(function(){
		$('#addWoNeedEquip').click(function(){
			$('#addWoNeedEquipForm').submit();
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
    				<h3>예상 필요장비 등록</h3>
    				<form action="${pageContext.request.contextPath}/addWoNeedEquip" method="post" id="addWoNeedEquipForm">
    					<div>
    						<label>작업단계 선택  </label>
    						<select name="ppWork.ppWorkNumber">
    							<c:forEach var="ppWork" items="${ppWorkList}">
    								<option value="${ppWork.ppWorkNumber}">${ppWork.ppWorkName}</option>
    							</c:forEach>
    						</select>
    					</div>
    					<div>
    						<label>장비종류카테고리 선택</label>
    						<select name="categoryEquip.equipNumber">
    							<c:forEach var="categoryEquip" items="${categoryEquip}">
    								<option value="${categoryEquip.equipNumber}">${categoryEquip.equipName}</option>
    							</c:forEach>
    						</select>
    					</div>
    					<div>
    						<label>
    							계획시 보유상태 <input type="text" name="eNeedequipState">
    						</label>
    					</div>
    					<button id="addWoNeedEquip">등록</button>
    				</form>
    			</div>
    		</c:if>
    	</section>
    </section>
</body>
</html>