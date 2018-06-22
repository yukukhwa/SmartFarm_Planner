<!-- [김재희] -->
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>addTheme</title>
<jsp:include page="/WEB-INF/views/css.jsp"/>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script type="text/javascript">
	$(document).ready(function(){
		$('#goLogin').click(function(){
			location.href = "${pageContext.request.contextPath}/login";
		})
		
		$('#insertThemeCate').click(function(){
			if($('#themeName').val() == ''){
				alert('테마이름을 입력해주세요');
				$('#themeName').focus();
				return false;
			}
			$('#insertThemeForm').submit();
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
    			<c:if test="${loginMember.level != 'agency'}">
    				<h3>해당 페이지에 접근할 수 없는 권한입니다.</h3> <br>
    			<button type="button" id="goLogin" class="btn btn-primary">로그인하러가기</button>
    			</c:if>
	    		<c:if test="${loginMember.level == 'agency'}">
	    		<h3>테마 등록하기</h3>
		    		<form id="insertThemeForm" action="${pageContext.request.contextPath}/addTheme" method="post">
			    		<div>
			  				<!-- 등록자 관리기관 아니면 등록 못하게 막아야함 -->
				    		<input type="hidden" name="agency.aNumber" id="aNumber" value="${loginMember.corpNumber}">
			    		</div>
			    		<div>
			    			<label>
			    				테마명 : <input type="text" name="themeName" id="themeName">
			    			</label>
			    		</div>
			    		<button class="btn btn-primary" type="button" id="insertThemeCate">테마등록하기</button>
		    		</form>
		    		<a href="${pageContext.request.contextPath}/listTheme">테마 리스트로 가기</a>
	    		</c:if>
    		</div>
    	</section>
    </section>
</body>
</html>