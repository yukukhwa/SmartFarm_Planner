<!-- [김재희] -->
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>listTheme</title>
<jsp:include page="/WEB-INF/views/css.jsp"/>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script type="text/javascript">
	$(document).ready(function(){
		$('#goHome').click(function(){
			location.href = "${pageContext.request.contextPath}/home";
		})
		
		$('#addTheme').click(function(){
			location.href = "${pageContext.request.contextPath}/addTheme";
		})
		
		$('#goCateMaterialsList').click(function(){
			location.href = "${pageContext.request.contextPath}/listMaterialsCate";
		})
		
		$('#themeCateSearch').click(function(){
			if($('#searchKeyWord').val() == ''){
				alert('검색어를 입력해주세요.');
				$('#searchKeyWord').focus();
				return false;
			}
			$('#themeCateSearchForm').submit();
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
    		<div align="center" style="width: 100%;">
    			<div style="background-color: #FAFAFA; margin: 7% 0% 10% 0%; padding: 5% 0% 4% 0%; width: 75%;">
		    		<div style="text-align: left; margin-left: 10%;">
		    			<h3>
		    				<b><i class="fa fa-cubes"></i>테마카테고리 전체 리스트</b>
		    			</h3>
		    		</div>
		    		<!-- 테마카테고리 검색하는 폼 시작-->
		    		<div style="float: right; margin: 6% 4% 1% 0%;">
		    			<form id="themeCateSearchForm" method="post" action="${pageContext.request.contextPath}/listTheme">
			    			<!-- 테마검색옵션을 설정하는 셀렉트 박스 -->
				    		<div style="width: 25%; float: left;">
					    		<select name="themeCateSearchOption" class="form-control m-bot15">
					    			<option value="themeName">테마이름</option>
					    			<option value="aName">등록기관이름</option>
					    		</select>
				    		</div>
			    			<!-- 테마검색 키워드를 작성하는 input박스 -->
			    			<div style="width: 30%; float: left;">
			    				<input type="text" class="form-control" id="searchKeyWord" name="searchKeyword">
			    			</div>
			    			<div style="width: 30%; float: left;"> 
			    				<button type="button" class="btn btn-info" id="themeCateSearch">테마 검색하기</button>
			    			</div>
		    			</form>
	    			</div>
	    			<!-- 테마카테고리 검색 폼 끝 -->
		    		<div style="text-align: center; margin: 1% 10% 5% 10%;">
			    		<table class="table table-striped table-advance table-hover">
			    			<thead>
			    				<tr>
			    					<th style="text-align: center;">테마 카테고리 넘버</th>
			    					<th style="text-align: center;">테마 카테고리 이름</th>
			    					<th style="text-align: center;">테마 등록기관 이름</th>
			    				</tr>
			    			</thead>
			    			<c:forEach var="categoryTheme" items="${list}">
			    			<tbody>
			    				<tr>
			    					<td>${categoryTheme.themeNumber}</td>
			    					<td>${categoryTheme.themeName}</td>
			    					<td>${categoryTheme.agency.aName}</td>
			    					<!-- 수정,삭제는 자기가 등록한 등록기관이거나 테마카테고리 넘버가 5 초과 일때만 수정하거나 삭제할 수 있다. -->
			    					<c:if test="${loginMember.corpName == categoryTheme.agency.aName && categoryTheme.themeNumber > 5}">
			    						<!-- 수정삭제할때 테마의 넘버로 해야할지 이름으로 해야할지..상의해봐야함 일단 테마의 이름으로-->
					    				<td>
					    					<div class="btn-group">
						    					<a class="btn btn-default" href="${pageContext.request.contextPath}/updateTheme?themeName=${categoryTheme.themeName}"><i class="icon_plus_alt2"></i></a>
						    					<a class="btn btn-danger" href="${pageContext.request.contextPath}/deleteTheme?themeNumber=${categoryTheme.themeNumber}"><i class="icon_close_alt2"></i></a>
					    					</div>
					    				</td>
			    					</c:if>
			    				</tr>
			    			</tbody>
			    			</c:forEach>
			    		</table>
			    		<div style="text-align: center; margin: 8% 0% 0% 0%;">
				    		<button id="goCateMaterialsList" type="button" class="btn btn-default">원자재 카테고리 리스트로 가기</button>
							<button id="goHome" type="button" class="btn btn-default">메인화면으로</button>
				    		<button id="addTheme" type="button" class="btn btn-primary">테마 등록하기</button>
		    			</div>
		    		</div>
	    		</div>
	    		<br>
    		</div>
    	</section>
    </section>
</body>
</html>