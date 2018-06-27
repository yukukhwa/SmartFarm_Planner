<!-- 배건혜 -->
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>addCompanyRentEquip</title>
<jsp:include page="/WEB-INF/views/css.jsp"/>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script type="text/javascript">
	$(document).ready(function(){
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
    		<c:if test="${loginMember.level != 'company'}">
    			<div>
    				해당페이지에 접근할 수 없는 권한입니다.
    			</div>
    		</c:if>
    		<c:if test="${loginMember.level == 'company'}">
    			<h3>대여가능장비 등록</h3>
    			<form action="${pageContext.request.contextPath}/addCompanyRentEquip" method="post">
    				<select name="categoryEquip.equipNumber" id="equipNumber">
    					<c:forEach var="categoryEquipList" items="${categoryEquipList}">
    						<option value="${categoryEquipList.equipNumber}">${categoryEquipList.equipName}</option>
    					</c:forEach>
    				</select><br>
    				<div>
    					업체명 : <input type="text" value="${loginMember.corpName}">
    				</div>
    				<div>
    					대당사용료 : <input type="text" name="cRentCost" id="cRentCost">원
    				</div>
    				<div>
    					단위시간 : <input type="number" name="cRentDate" id="cRentDate">일
    				</div>
    				<div>
    					모델명 : <input type="text" name="cRentModelname" id="cRentModelname">
    				</div>
    			</form>
    			<button type="button">등록</button>
    		</c:if>
    	</section>
    </section>	
</body>
</html>