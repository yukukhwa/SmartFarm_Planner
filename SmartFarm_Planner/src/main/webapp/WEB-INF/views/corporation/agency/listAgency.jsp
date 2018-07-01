<!-- 나성수 -->
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>listAgency</title>
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
    		<div align="center" style="width: 100%">
    			<div style="background-color: #FAFAFA; margin: 5% 0% 2% 0%; padding: 5% 0% 4% 0%; width: 65%;">
			    	<div style="margin: 0 auto; padding-bottom: 50px;">
			    		<h3><b><i class="fa fa-home"></i>관리기관 리스트</b></h3>
		    		</div>
					<div class="row">
			    		<div class="col-lg-2"></div>
						<div class="col-lg-8">
							<div class="panel-body">
								<form action="${pageContext.request.contextPath}/listAgency" method="post" style="float: right;">
									<input type="text" name="aName" id="aName" class="form-control" style="width: 60%; float: left;">
									<button type="submit" class="btn btn-primary">검색</button>
								</form>
				    		</div>
							<table class="table table-striped table-advance table-hover" style="text-align: center;">
								<thead>
									<tr>
										<th style="text-align: center;"><b>관리기관명</b></th>
									</tr>
								</thead>
								<tbody>
									<c:forEach items="${list}" var="agencyName">
										<tr>
											<td>
												<a href="${pageContext.request.contextPath}/oneAgency?aName=${agencyName}">${agencyName}</a>
											</td>
										</tr>
									</c:forEach>
								</tbody>
							</table>
						</div>
				    	<div class="col-lg-2"></div>
				    </div>
			    </div>
		    </div>
		</section>
	</section>
</body>
</html>