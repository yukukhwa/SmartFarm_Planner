<!-- [유국화] -->
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<title>listWorkResult</title>
	<jsp:include page="/WEB-INF/views/css.jsp"></jsp:include>
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
	<script>	
		$(document).ready(function(){			
			$('.stepshow').click(function(){
				if($(this).parent('div').find('.stepcontent').css("display") == "none"){
					$(this).parent('div').find('.stepcontent').show();					
				}else{
					$(this).parent('div').find('.stepcontent').hide();					
				}			
			});
		})
	</script>
</head>
<jsp:include page="/WEB-INF/views/top.jsp"></jsp:include>
<jsp:include page="/WEB-INF/views/left.jsp"></jsp:include>
<body>
<section id="main-content">
	<section class="wrapper">
		<div class="row">
			<div class="col-lg-12">
				<h3 class="page-header"><i class="fa fa-laptop"></i>실행결과리스트별 작업단계결과 전체리스트화면</h3>	
				<c:forEach var="workResultList" items="${workResultList}">
					<table border="1">
						<thead>
						<tr>
							<th>작업단계결과넘버</th>
							<th>실행결과리스트넘버</th>
							<th>실행결과리스트작성일</th>	
							<th>예상작업단계넘버</th>						
							<th>작업명</th>
							<th>작업시작일</th>	
							<th>작업완료일</th>	
							<th>작업면적</th>	
							<th>작업내용(상세)</th>	
							<th>총작업면적</th>	
							<th>이미작업한면적</th>												
						</tr>					
						</thead>
						<tbody>						
							<tr>
								<td>${workResultList.wrNumber }</td>
								<td>${workResultList.actResult.ppResultlistNumber}</td>
								<td>${workResultList.actResult.ppResultlistDate }</td>
								<td>${workResultList.ppWork.ppWorkNumber }</td>
								<td>${workResultList.ppWork.ppWorkName }</td>
								<td>${workResultList.ppWork.ppWorkStartday }</td>
								<td>${workResultList.ppWork.ppWorkEndday }</td>							
								<td>${workResultList.ppWork.ppWorkArea }</td>
								<td>${workResultList.ppWork.ppWorkContent }</td>
								<td>${workResultList.wrReworkarea }</td>
								<td>${workResultList.wrTotalarea }</td>
							</tr>							
						</tbody>				
					</table>
					<div class="stepview">
						<a href="#" class="stepshow">작업단계결과별 결과보기</a>
						<div class="stepcontent">
							<a href="${pageContext.request.contextPath }/listWrEtcSpendPay?wrNumber=${workResultList.wrNumber }">ㄴ${workResultList.wrNumber }단계 기타지출비결과</a><br>
							<a href="${pageContext.request.contextPath }/listWrInsurancePay?wrNumber=${workResultList.wrNumber }">ㄴ${workResultList.wrNumber }단계 보험비결과</a><br>
							<a href="${pageContext.request.contextPath }/listWrNeedEquip?wrNumber=${workResultList.wrNumber }">ㄴ${workResultList.wrNumber }단계 필요장비결과</a><br>
							<a href="${pageContext.request.contextPath }/listHumanpay.jsp">ㄴ${workResultList.wrNumber }단계 인건비결과</a><br>
							<a href="${pageContext.request.contextPath }/listMaterialspay">ㄴ${workResultList.wrNumber }단계 원자재비결과</a><br>
						</div>	
					</div>		
				</c:forEach>
			</div>
		</div>
	</section>
</section>
</body>
</html>