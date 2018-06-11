<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>updateTheme</title>
<jsp:include page="/WEB-INF/views/css.jsp"/>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script type="text/javascript">
	$(document).ready(function(){
		$('#updateTheme').click(function(){
			$('#updateThemeForm').submit();
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
			<c:if test="${loginMember.level != 'agency'}">
    			해당 페이지에 접근할 수 없는 권한입니다.
			</c:if>
			<c:if test="${loginMember.level == 'agency'}">
			<h3>테마 수정화면</h3>
			<div>
				<form id="updateThemeForm" action="${pageContext.request.contextPath}/updateTheme" method="post">
					<div>
						<label>
							등록기관 넘버 : <input type="text" name="aNumber" value="${themeCateList.agencyDb.aNumber}">
						</label>
					</div>
					<div>
						<label>
							등록기관 명 : <input type="text" name="aName" value="${themeCateList.agencyDb.aName}">
						</label>
					</div>
					<div>
						<label>
							테마 카테고리넘버 : <input type="text" name="themeNumber" value="${themeCateList.themeNumber}">
						</label>
					</div>
					<div>
						<label>
							테마 카테고리이름 : <input type="text" name="themeName" value="${themeCateList.themeName}">
						</label>
					</div>
					<button id="updateTheme">테마 카테고리 수정하기</button>
				</form>
			</div>
			</c:if>
		</section>
	</section>
</body>
</html>