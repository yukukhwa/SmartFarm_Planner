<!-- 배건혜 -->
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>addWoNeRentPay</title>
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
    		<c:if test="${loginMember.level != 'farm'}">
	    		<div>
	    			해당페이지 접근할 수 없는 권한입니다.
	    		</div>
    		</c:if>
    		<c:if test="${loginMember.level == 'farm'}">
    			<div>
    				<h3>예상대여비 등록</h3>
    				<form action="${pageContext.request.contextPath}/addWoNeRentPay" method="post">
    					<div>
    						<input type="radio" name="neERentpaySecret" value="true" checked="checked">공개
    						<input type="radio" name="neERentpaySecret" value="false">비공개
    					</div>
    				
    					<div>
    						<label>테마카테고리선택 </label>
    						<select name="categoryTheme.themeNumber">
    							<c:forEach var="categoryTheme" items="${categoryThemeList}">
    									<option value="${categoryTheme.themeNumber}">${categoryTheme.themeName}</option>
    							</c:forEach>
    						</select>
    					</div>
    					<div>
    						<label>예상필요장비 선택 </label>
    						<select name="woNeedEquip.eNeedequipNumber">
    							<c:forEach var="woNeedEquip" items="${woNeedEquipList}">
    									<option value="${woNeedEquip.eNeedequipNumber}">${woNeedEquip.eNeedequipNumber}</option>
    							</c:forEach>
    						</select>
    					</div>
    					<div>
    						<label>대여가능장비 선택 </label><br>
    						장비명 : 
    						<select name="companyRentEquip.cRentNumber">
    							<c:forEach var="companyRentEquip" items="${companyRentEquipList}">
    								<option value="${companyRentEquip.cRentNumber}">${companyRentEquip.categoryEquip.equipName}</option>
    							</c:forEach>
    						</select><br>
    						대당 대여비 :
    						<select name="companyRentEquip.cRentNumber">
    							<c:forEach var="companyRentEquip" items="${companyRentEquipList}">
    								<option value="${companyRentEquip.cRentCost}">${companyRentEquip.cRentCost}</option>
    							</c:forEach>
    						</select><br>
    						단위기간 : 
    						<select name="companyRentEquip.cRentNumber">
    							<c:forEach var="companyRentEquip" items="${companyRentEquipList}">
    								<option value="${companyRentEquip.cRentDate}">${companyRentEquip.cRentDate}</option>
    							</c:forEach>
    						</select>
    					</div>
    				</form>
    			
    			</div>
    		</c:if>
    	</section>
    </section>	
</body>
</html>