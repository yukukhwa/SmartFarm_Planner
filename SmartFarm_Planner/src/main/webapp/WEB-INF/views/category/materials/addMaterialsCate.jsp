<!-- [김재희] -->
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>addMaterialsCate</title>
<jsp:include page="/WEB-INF/views/css.jsp"/>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script type="text/javascript">
	$(document).ready(function(){
		$('#goLogin').click(function(){
			location.href = "${pageContext.request.contextPath}/login";
		})
		
		$('#goCateMaterialsList').click(function(){
			location.href = "${pageContext.request.contextPath}/listMaterialsCate";
		})
		
		$('#insertMaterialsCate').click(function(){
			if($('#materialsName').val() == ''){
				alert('원자재 이름을 입력해주세요');
				$('#materialsName').focus();
				return false;
			}
			
			if($('#materialsUnit').val() == ''){
				alert('원자재 단위를 입력해주세요');
				$('#materialsUnit').focus();
				return false;
			}
			$('#insertMaterialsCateForm').submit();
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
    		<!-- 만약 로그인한 level이 'agency'가 아니라면 접근하지 못하는 권한을 알림과 동시에 로그인창으로 연결하는 버튼이 나타남 -->
    		<c:if test="${loginMember.level != 'agency'}">
    			<div align="center" style="width: 100%; float: right;">
    				<div style="text-align: center; margin: 5% 0% 10% 0%; padding: 10% 0% 15% 0%; width: 65%; background-color: #FAFAFA;">
		    			<h3>해당 페이지에 접근할 수 없는 권한입니다.</h3> <br><br><br>
		    			<button type="button" id="goLogin" class="btn btn-primary">로그인하러가기</button>
    					<button type="button" id="goCateMaterialsList" class="btn btn-default">원자재리스트로 가기</button>
    				</div>
    			</div>
    		</c:if>
    		<c:if test="${loginMember.level == 'agency'}">
	    		<div style="width: 100%;" align="center">
	    			<div style="background-color: #FAFAFA; text-align: center; margin: 5% 0% 10% 0%; padding: 5% 0% 10% 0%; width: 65%;">
		    			<div style="text-align: left; margin-left: 15%; margin-bottom: 5%;">
		    				<h3>
		    					<b><i class="icon_genius">원자재 카테고리 등록</i></b>
		    				</h3>
		    			</div> <br>
		    			
			    		<form id="insertMaterialsCateForm" method="post" action="${pageContext.request.contextPath}/addMaterialsCate">
			    			<div>
			    				<input type="hidden" name="agency.aNumber" value="${loginMember.corpNumber}">
			    			</div>
			    			<div>
			    				<label>
			    					테마 카테고리 선택하기
			    					<select name="categoryTheme.themeNumber" id="cateThemeOption">
			    						<c:forEach var="categoryTheme" items="${categoryThemeList}">
			    							<option value="${categoryTheme.themeNumber}">${categoryTheme.themeName}</option>
			    						</c:forEach>
			    					</select>
			    				</label>
			    			</div>
			    			<div>
		    					<label>
		    						원자재 카테고리 이름 : <input type="text" id="materialsName" name="materialsName">
		    					</label>
			    			</div>
			    			<div>
		    					<label>
		    						원자재 카테고리 단위 : <input type="text" id="materialsUnit" name="materialsUnit">
		    					</label>
			    			</div>
			    			<button type="button" class="btn btn-primary" id="insertMaterialsCate">원자재카테고리 등록하기</button>
			    			<button type="button" id="goCateMaterialsList" class="btn btn-default">원자재 카테고리 리스트</button>
			    		</form>
	    			</div>
	    		</div>
			</c:if>
		</section>
	</section>
</body>
</html>