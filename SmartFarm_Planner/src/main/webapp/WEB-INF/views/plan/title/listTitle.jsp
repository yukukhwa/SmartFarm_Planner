<!-- 나성수 -->
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>listTitle</title>
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
    		<div align="center">
    			<div style="background-color: #FAFAFA; margin: 5% 0% 2% 0%; padding: 5% 0% 4% 0%; width: 65%;">
    				<div style="margin: 0 auto; padding-bottom: 50px;">
		    			<h3><b><i class="fa fa-cubes"></i>계획명 리스트</b></h3>
		    		</div>
					<div class="row">
			    		<div class="col-lg-2"></div>
						<div class="col-lg-8">
					   		<table class="table table-striped table-advance table-hover">
					   			<thead>
									<tr>
										<th>계획명 넘버</th>
										<th>품목명</th>
										<th>계획명</th>
										<th>등록농가명</th>
									</tr>
								</thead>
					   			<tbody>
									<c:forEach items="${list}" var="title">
										<tr>
											<td>
												${title.ppNameNumber}
											</td>
											<td>
												${title.categoryItemDb.iItemName}
											</td>
											<td>
												<a href="#">${title.ppNamePlanname}</a>
											</td>
											<td>
												<a href="${pageContext.request.contextPath}/oneFarm?fName=${title.farmDb.fName}">${title.farmDb.fName}</a>
											</td>
											<c:if test="${loginMember.corpName == title.farmDb.fName}">
												<td>
													<a href="${pageContext.request.contextPath}/updateTitle?ppNameNumber=${title.ppNameNumber}"><i class="icon_plus_alt2"></i></a>
												</td>
												<td>
													<a href="${pageContext.request.contextPath}/deleteTitle?ppNameNumber=${title.ppNameNumber}"><i class="icon_close_alt2"></i></a>
												</td>
											</c:if>
										</tr>
									</c:forEach>
								</tbody>
					   		</table>
					   		<div class="panel-body" style="margin-left: 10%;">
						   		<form action="${pageContext.request.contextPath}/listTitle" method="post">
									<div class="col-lg-3">
					    				<select name="column" id="column" class="form-control m-bot15">
						    				<option>계획명</option>
											<option>품목명</option>
											<option>등록농가명</option>
						    			</select>
				    				</div>
				    				<div class="col-lg-6">
				    					<input type="text" name="property" id="property" class="form-control">
				    				</div>
				    				<div class="col-lg-3">
				    					<button type="submit" class="btn btn-primary">검색</button>
				    				</div>
								</form>
				    		</div>
					   	</div>
				    	<div class="col-lg-2"></div>
					</div>
    			</div>
    		</div>
    	</section>
    </section>
</body>
</html>