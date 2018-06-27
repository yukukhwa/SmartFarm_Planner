<!-- [김재희] -->
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>listMaterialsCate</title>
<jsp:include page="/WEB-INF/views/css.jsp"/>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script type="text/javascript">
	$(document).ready(function(){
		$('#goHome').click(function(){
			location.href = "${pageContext.request.contextPath}/home";
		})
		
		$('#addMaterialsCate').click(function(){
			location.href = "${pageContext.request.contextPath}/addMaterialsCate";
		})
		
		$('#materialsCateSearch').click(function(){
			if($('#searchKeyword').val() == ''){
				alert('검색어를 입력해주세요');
				$('#searchKeyword').focus();
				return false;
			}
			$('#materialsCateSearchForm').submit();
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
    		<%-- <c:if test="${loginMember.level != 'agency'}">
    			<div>
    				해당 페이지에 접근할 수 없는 권한입니다.
    			</div>
    		</c:if>
    		<c:if test="${loginMember.level == 'agency'}"> --%>
			<div>
				<h3>원자재 카테고리 리스트</h3>
				<div>
	    			<form id="materialsCateSearchForm" method="post" action="${pageContext.request.contextPath}/listMaterialsCate">
	    				<select name="materialsCateSearchOption">
	    					<option value="materialsName">원자재 이름</option>
	    					<option value="aName">등록기관이름</option>
	    				</select> <br>
	    				<input type="text" id="searchKeyword" name="searchKeyword">
	    				<button id="materialsCateSearch">원자재 검색하기</button>
	    			</form>
    			</div>
				<table class="table">
					<thead>
						<tr>
							<th>원자재 넘버</th>
							<th>테마명</th>
							<th>원자재 이름</th>
							<th>원자재 단위</th>
							<th>등록기관명</th>
							<!-- <th>수정</th>
							<th>삭제</th> -->
						</tr>
					</thead>
					<c:forEach var="categoryMaterials" items="${list}">
					<div>
						<input type="hidden" name="themeNumber" value="${categoryMaterials.categoryTheme.themeNumber}">
						<input type="hidden" name="aNumber" value="${categoryMaterials.agency.aNumber}">	
					</div>
					<tbody>
						<tr>
							<td>${categoryMaterials.materialsNumber}</td>
							<td>${categoryMaterials.categoryTheme.themeName}</td>
							<td>${categoryMaterials.materialsName}</td>
							<td>${categoryMaterials.materialsUnit}</td>
							<td>${categoryMaterials.agency.aName}</td>
							<c:if test="${loginMember.corpName == categoryMaterials.agency.aName}">
								<td>
									<a href="${pageContext.request.contextPath}/updateMaterialsCate?materialsName=${categoryMaterials.materialsName}">수정</a>
								</td>
								<td>
									<a href="${pageContext.request.contextPath}/deleteMaterialsCate?materialsNumber=${categoryMaterials.materialsNumber}">삭제</a>
								</td>
							</c:if>
						</tr>
					</tbody>
					</c:forEach>
				</table>
				<button id="goHome" type="button" class="btn btn-default">메인으로</button>
				<button id="addMaterialsCate" type="button" class="btn btn-primary">원자재 카테고리 등록</button>
			</div>
			<%-- </c:if> --%>
		</section>
	</section>
</body>
</html>