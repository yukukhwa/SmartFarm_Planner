<!-- [김재희] -->
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>listFarm</title>
<jsp:include page="/WEB-INF/views/css.jsp"/>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script type="text/javascript">
	$(document).ready(function(){
		/* 메인으로 버튼을 누르면 인덱스로 가기 */
		$('#goHome').click(function(){
			location.href = "${pageContext.request.contextPath}/home";
		})
		
		$('#goFarmList').click(function(){
			location.href = "${pageContext.request.contextPath}/listFarm";
		})
		
		$('#searchFarm').click(function(){
			if($('#searchfName').val() == ''){
				alert('검색어를 입력해주세요');
				$('#fName').focus();
				return false;
			}
			$('#searchFarmForm').submit();
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
			<div align="center" style="margin: 0% 0% 10% 0%;">
				<div style="margin: 10% 50% 8% 0%;">
					<h2>
						<b>
							<i class="fa fa-home"></i>
							농가 리스트
						</b>
					</h2>
				</div>
				<div style="margin-right: 17%;">
					<form id="searchFarmForm" method="post" action="${pageContext.request.contextPath}/listFarm" style="float: right;">
						<input type="text" name="fName" id="searchfName" class="form-control" style="width: 60%; float: left;">&nbsp;
						<button id="searchFarm" class="btn btn-primary">농가검색</button>
					</form>
				</div> <br><br>
				<div style="text-align: center;">
					<table class="table table-striped table-advance table-hover" style="width: 65%; margin: auto;" >
						<thead>
							<tr>
								<th style="text-align: center; padding: 15px 0px 15px 0px;">
									<h3><b><i class="fa fa-home"></i>농가 이름</b></h3>
								</th>
							</tr>
						</thead>
						<c:forEach var="farm" items="${list}">
						<input type="hidden" name="fNumber" value="${farm.fNumber}">
						<tbody>
							<tr>
								<td style="padding: 10px 0px 10px 0px;">
									<a href="${pageContext.request.contextPath}/oneFarm?fName=${farm.fName}">${farm.fName}</a>
								</td>
							</tr>
						</tbody>
						</c:forEach>
					</table> <br>
					<div align="right" style="margin: 3% 18% 0% 0%;" >
						<button id="goHome" class="btn btn-primary" style="float: right;">메인으로 가기</button> 
						<button id="goFarmList" class="btn btn-default" style="float: right; margin: 0% 0% 0% 1%;">리스트로 돌아가기</button> 
					</div>
				</div> 
				
			</div>
		</section>
	</section>
</body>
</html>