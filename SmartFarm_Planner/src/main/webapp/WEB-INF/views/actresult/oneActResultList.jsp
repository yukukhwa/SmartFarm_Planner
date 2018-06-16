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
					${map.actResultList.productionPlan.titlePlan.ppNamePlanname}
					${map.actResultList.ppResultlistDate}
					${map.actResultList.farmMember.fMemberId}
				</header>
				<div class="panel-body">
					<c:forEach var="woResultList" items="${map.woResultList}">
						<c:if test="${woResultList.actResult.ppResultlistNumber == map.actResultList.ppResultlistNumber}">
							<div class="color">
								<div class="panel-heading col-lg-12">{$woResultList.ppWork.ppWorkNumber}</div>
								<div class="panel-content" style="display:none">
									{$woResultList.wrTotalarea}
									{$woResultList.wrReworkarea}
									인건비
									원자재비
									보험비
									기타지출비
									필요장비
									메모
								</div>
							</div>
						</c:if>
					</c:forEach>
				</div>
			</div>
		</div>
	</section>
</section>
</body>
</html>