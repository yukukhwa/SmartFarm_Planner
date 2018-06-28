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
		// 로그인하기 버튼을 클릭시 로그인페이지로 가도록 이동
		$('#goLogin').click(function(){
			location.href = "${pageContext.request.contextPath}/login";
		})
		
		// 테마리스트 버튼 클릭시 테마 리스트페이지로 가도록 이동
		$('#goThemeList').click(function(){
			location.href = "${pageContext.request.contextPath}/listTheme";
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
    			<!-- 만약 로그인한 레벨이 'agency'와 같지 않다면 아래의 문구와 함께 로그인창으로 연결되게 한다 -->
    			<c:if test="${loginMember.level != 'agency'}">
    				<div align="center" style="width: 100%; float: right;">
    					<div style="text-align: center; margin: 5% 0% 10% 0%; padding: 10% 0% 15% 0%; width: 65%; background-color: #FAFAFA;">
	    					<h3>해당 페이지에 접근할 수 없는 권한입니다.</h3> <br><br><br>
	    					<button type="button" id="goLogin" class="btn btn-primary">로그인하러가기</button>
	    					<button type="button" id="goThemeList" class="btn btn-default">테마리스트로 가기</button>
    					</div>
    				</div>
    			</c:if>
    			<!-- 만약 로그인한 레벨이 'agency'와 강다면 테마를 등록 할 수 있게 한다. -->
	    		<c:if test="${loginMember.level == 'agency'}">
		    		<div align="center" style="width: 100%">
			    			<div style="background-color: #FAFAFA; margin: 5% 0% 10% 0%; padding: 5% 0% 10% 0%; width: 65%;">
					    		<div style="text-align: left; margin-left: 15%;">
					    			<h3>
					    				<b><i class="fa fa-cubes"></i>테마 등록하기</b>
					    			</h3> <br><br>
					    		</div>
						    		<form id="insertThemeForm" action="${pageContext.request.contextPath}/addTheme" method="post">
							    		<div>
								    		<input type="hidden" name="agency.aNumber" id="aNumber" value="${loginMember.corpNumber}">
							    		</div>
							    		<div>
							    			<label>테마명 : </label>
							    			<div style="width: 20%;">
							    				<!-- 테마이름을 등록하는 input박스 -->
							    				<input class="form-control" type="text" name="themeName" id="themeName">
							    			</div>	
							    		</div> <br>
							    		<div style="margin: 5% 0% 0% 0%;">
								    		<button class="btn btn-primary" type="button" id="insertThemeCate">테마등록하기</button>
								    		<button class="btn btn-default" type="button" id="goThemeList">테마 리스트로 가기</button>
							    		</div>
						    		</form>
				    		</div>	
			    	</div>
	    		</c:if>
    		</div>
    	</section>
    </section>
</body>
</html>