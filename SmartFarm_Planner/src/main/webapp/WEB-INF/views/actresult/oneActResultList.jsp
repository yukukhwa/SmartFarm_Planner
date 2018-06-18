<!-- [김기성] -->
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<title>oneActResultList.jsp</title>
	<jsp:include page="/WEB-INF/views/css.jsp"></jsp:include>
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
	<script>
		$(document).ready(function(){
			var num = Math.random()*4;
			if(Math.ceil(num) == 0) {
				$('.color').attr('class', 'panel panel-success');
			} else if(Math.ceil(num) == 1) {
				$('.color').attr('class', 'panel panel-primary');
			} else if(Math.ceil(num) == 2) {
				$('.color').attr('class', 'panel panel-warning');
			} else if(Math.ceil(num) == 3) {
				$('.color').attr('class', 'panel panel-danger');
			} else if(Math.ceil(num) == 4) {
				$('.color').attr('class', 'panel panel-info');
			}
			$('.panel-heading').click(function(){
				if($(this).parent('div').find('.panel-content').css("display") == "none"){
					$(this).parent('div').find('.panel-content').show();
				}else{
					$(this).parent('div').find('.panel-content').hide();
				}
				
			});
		});
	</script>
</head>
<body>
<jsp:include page="/WEB-INF/views/top.jsp"></jsp:include>
<jsp:include page="/WEB-INF/views/left.jsp"></jsp:include>
<!--main content start-->
<section id="main-content">
	<section class="wrapper">
		<!--overview start-->
		<div class="col">
			<div class="col-lg-10">
				<h3 class="page-header"><i class="icon_desktop"></i> 실행결과 리스트</h3>
				<header class="panel-heading">
					${actResult.productionPlan.titlePlan.ppNamePlanname}
					${actResult.ppResultlistDate}
					${actResult.farmMember.fMemberId}
				</header>
				<div class="panel-body">
					<c:forEach var="woResultList" items="${actResult.ppWoResult}">
						<div class="color">
							<div class="panel-heading col-lg-12">${woResultList.ppWork.ppWorkName}</div>
							<div class="panel-content" style="display:none">
								총 작업 면적 : ${woResultList.wrTotalarea}
								이미 작업한 면적 : ${woResultList.wrReworkarea}
								인건비
								<table class="table table-striped table-advance table-hover">
									<thead>
										<tr>
											<th>인부이름</th>
											<th>인부주민번호</th>
											<th>예상일당</th>
											<th>예상작업날짜</th>
											<th>실제일당</th>
											<th>실제작업날짜</th>
										</tr>
									</thead>
									<tbody>
										<c:forEach var="wrHumanPayList" items="${woResultList.wrHumanPayList}">
											<tr>
												<td>${wrHumanPayList.woHumanPay.eHumanpayName}</td>
												<td>${wrHumanPayList.woHumanPay.eHumanpayResidentnumber}</td>
												<td>${wrHumanPayList.woHumanPay.eHumanpayExpectpay}</td>
												<td>${wrHumanPayList.woHumanPay.eHumanpayExpectday}</td>
												<td>${wrHumanPayList.wrHumanpayRealcost}</td>
												<td>${wrHumanPayList.wrHumanpayDate}</td>
											</tr>
										</c:forEach>
									</tbody>
								</table>
								원자재비
								보험비
								기타지출비
								필요장비
								메모
							</div>
						</div>
					</c:forEach>
				</div>
			</div>
		</div>
	</section>
</section>
</body>
</html>