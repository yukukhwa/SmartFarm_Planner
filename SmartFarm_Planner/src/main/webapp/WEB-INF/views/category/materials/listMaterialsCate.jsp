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
    		<div align="center" style="width: 100%;">
				<div style="background-color: #FAFAFA; margin: 7% 0% 10% 0%; padding: 5% 0% 8% 0%; width: 75%;">
					<div style="text-align: left; margin-left: 10%;">
						<h3>
							<b><i class="icon_genius"></i>원자재 카테고리 리스트</b>
						</h3>
					</div>
					<!-- 원자재 카테고리 검색 폼 시작 -->
					<div style="float: right; margin: 6% 5% 1% 0%;">
		    			<form id="materialsCateSearchForm" method="post" action="${pageContext.request.contextPath}/listMaterialsCate">
		    				<div style="width: 27%; float: left;">
			    				<select class="form-control m-bot15" name="materialsCateSearchOption">
			    					<option value="materialsName">원자재이름</option>
			    					<option value="aName">등록기관이름</option>
			    				</select>
		    				</div>
		    				<div style="width: 30%; float: left;">
		    					<input type="text" class="form-control" id="searchKeyword" name="searchKeyword">
		    				</div>
		    				<div style="width: 30%; float: left;">
		    					<button class="btn btn-info" id="materialsCateSearch">원자재 검색하기</button>
		    				</div>
		    			</form>
	    			</div>
	    			<!-- 원자재 카테고리 검색 폼 끝 -->
	    			<div style="text-align: center; margin: 1% 10% 5% 10%;">
						<table class="table table-striped table-advance table-hover">
							<thead>
								<tr>
									<th style="text-align: center;">원자재 넘버</th>
									<th style="text-align: center;">테마명</th>
									<th style="text-align: center;">원자재 이름</th>
									<th style="text-align: center;">원자재 단위</th>
									<th style="text-align: center;">등록기관명</th>
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
												<div class="btn-group">
													<a class="btn btn-default" href="${pageContext.request.contextPath}/updateMaterialsCate?materialsName=${categoryMaterials.materialsName}"><i class="icon_plus_alt2"></i></a>
													<a class="btn btn-danger" href="${pageContext.request.contextPath}/deleteMaterialsCate?materialsNumber=${categoryMaterials.materialsNumber}"><i class="icon_close_alt2"></i></a>
												</div>
											</td>
										</c:if>
									</tr>
								</tbody>
							</c:forEach>
						</table>
					</div>
					<div>
						<button id="goHome" type="button" class="btn btn-default">메인으로</button>
						<button id="addMaterialsCate" type="button" class="btn btn-primary">원자재 카테고리 등록</button>
					</div>
				</div>
			</div>
		</section>
	</section>
</body>
</html>