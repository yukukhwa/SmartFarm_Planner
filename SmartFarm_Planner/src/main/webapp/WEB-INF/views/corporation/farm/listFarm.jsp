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
			location.href = "${pageContext.request.contextPath}/";
		})
		
		$('#searchFarm').click(function(){
			if($('#searchFarmForm').val() == ''){
				alert('검색어를 입력해주세요');
				$('#fName').focus();
				return;
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
			<div>
				<h3>농가 리스트</h3>
				<div>
					<form id="searchFarmForm" method="post" action="${pageContext.request.contextPath}/listFarm">
						<input type="text" name="fName" id="fName">
						<button id="searchFarm">농가 검색</button>
					</form>
				</div>
				<table class="table">
					<thead>
						<tr>
							<th>농가 이름</th>
						</tr>
					</thead>
					<c:forEach var="farm" items="${list}">
					<input type="hidden" name="fNumber" value="${farm.fNumber}">
					<tbody>
						<tr>
							<td>
								<a href="${pageContext.request.contextPath}/oneFarm?fName=${farm.fName}">${farm.fName}</a>
							</td>
						</tr>
					</tbody>
					</c:forEach>
				</table>
				<button id="goHome">메인으로 가기</button>
				<a href="${pageContext.request.contextPath}/oneFarmMember?fMemberId=${loginMember.id}">내 정보 보기</a>
			</div>
		</section>
	</section>
</body>
</html>