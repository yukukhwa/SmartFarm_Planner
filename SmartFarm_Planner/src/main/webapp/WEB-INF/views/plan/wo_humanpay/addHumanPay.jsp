<!-- [김재희] -->
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>addHumanPay</title>
<jsp:include page="/WEB-INF/views/css.jsp"/>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script type="text/javascript">
	$(document).ready(function(){
		$('#addHumanPay').click(function(){
			$('#addHumanPayForm').submit();
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
	    			해당 페이지에 접근할 수 없는 권한입니다.	
	    		</div>
    		</c:if>
    		<c:if test="${loginMember.level == 'farm'}">
				<h3>예상 인건비 등록하기</h3>
				<form id="addHumanPayForm" method="post" action="${pageContext.request.contextPath}/addHumanPay">
					<div>
						<input type="radio" name="eHumanpaySecret" value="true" checked="checked">공개
						<input type="radio" name="eHumanpaySecret" value="false">비공개
					</div>
					<div>
						<label>테마입력 : </label>
						<select name="categoryTheme.themeNumber">
							<c:forEach var="categoryTheme" items="${cateTheme}">
								<option value="${categoryTheme.themeNumber}">${categoryTheme.themeName}</option>
							</c:forEach>
						</select>
					</div>
					<div>
						<label>작업단계 등록 : </label>
						<select name="ppWork.ppWorkNumber">
							<c:forEach var="ppWork" items="${ppWorkList}">
								<option value="${ppWork.ppWorkNumber}">${ppWork.ppWorkName}</option>
							</c:forEach>
						</select>
					</div>
					<div>
						<label>
							인부이름 : <input type="text" name="eHumanpayName">
						</label>
					</div>
					<div>
						<label>
							주민번호 : <input type="text" name="eHumanpayResidentnumber">
						</label>
					</div>
					<div>
						<label>
							예상인건비 : <input type="number" name="eHumanpayExpectpay">
						</label>
					</div>
					<div>
						<label>
							예상작업일 : <input type="date" name="eHumanpayExpectday">
						</label> 
					</div>
					<button id="addHumanPay">예상인건비등록</button>
				</form>
			</c:if>
		</section>
	</section>
</body>
</html>