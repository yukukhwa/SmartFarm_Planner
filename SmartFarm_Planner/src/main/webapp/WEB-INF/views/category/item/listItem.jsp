<!-- 나성수 -->
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>listItem</title>
<jsp:include page="/WEB-INF/views/css.jsp"/>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script type="text/javascript">
$(document).ready(function(){
	$('select#column').change(function(){
		if($(this).val() == '등록기관명'){
			$('input#property').attr('name','aName');
			return;
		}
		if($(this).val() == '산업명'){
			$('input#property').attr('name','industryName');
			return;
		}
		$('input#property').attr('name','iItemName');
		return;
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
    		<div align="center">
    			<div style="background-color: #FAFAFA; margin: 5% 0% 2% 0%; padding: 5% 0% 4% 0%; width: 65%;">
    				<div style="margin: 0 auto; padding-bottom: 50px;">
		    			<h3><b><i class="fa fa-cubes"></i>품목분류 리스트</b></h3>
		    		</div>
					<div class="row">
			    		<div class="col-lg-2"></div>
						<div class="col-lg-8">
					   		<table class="table table-striped table-advance table-hover">
					   			<thead>
									<tr>
										<th>품목넘버</th>
										<th>산업명</th>
										<th>품목명</th>
										<th>등록기관명</th>
										<th></th>
									</tr>
								</thead>
					   			<tbody>
									<c:forEach items="${list}" var="categoryItemDb">
										<tr>
											<td>
												${categoryItemDb.iItemNumber}
											</td>
											<td>
												${categoryItemDb.categoryIndustryDb.industryName}
											</td>
											<td>
												${categoryItemDb.iItemName}
											</td>
											<td>
												<a href="${pageContext.request.contextPath}/oneAgency?aName=${categoryItemDb.agencyDb.aName}">${categoryItemDb.agencyDb.aName}</a>
											</td>
											<c:if test="${loginMember.corpName == categoryItemDb.agencyDb.aName}">
												<td>
													<a href="${pageContext.request.contextPath}/updateItem?iItemNumber=${categoryItemDb.iItemNumber}" class="btn btn-warning"><i class="icon_plus_alt2"></i></a>
													<a href="${pageContext.request.contextPath}/deleteItem?iItemNumber=${categoryItemDb.iItemNumber}" class="btn btn-danger"><i class="icon_close_alt2"></i></a>
												</td>
											</c:if>
										</tr>
									</c:forEach>
								</tbody>
					   		</table>
					   		<div class="panel-body" style="margin-left: 10%;">
						   		<form action="${pageContext.request.contextPath}/listItem" method="post">
									<div class="col-lg-3">
					    				<select name="column" id="column" class="form-control m-bot15">
						    				<option>품목명</option>
											<option>산업명</option>
											<option>등록기관명</option>
						    			</select>
				    				</div>
				    				<div class="col-lg-6">
				    					<input type="text" name="iItemName" id="property" class="form-control">
				    				</div>
				    				<div class="col-lg-3">
				    					<button type="submit" class="btn btn-primary">검색</button>
				    				</div>
								</form>
				    		</div>
					   	</div>
				    	<div class="col-lg-2"></div>
					</div>
	    			<div align="center">
	    				<a href="${pageContext.request.contextPath}/addItem"class="btn btn-primary">품목분류 등록하러가기</a>
	    			</div>
    			</div>
    		</div>
    	</section>
    </section>
</body>
</html>