<!-- [김재희] -->
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>listFarmMember</title>
<jsp:include page="/WEB-INF/views/css.jsp"/>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script type="text/javascript">
	$(document).ready(function(){
		/* 메인으로 버튼을 누르면 인덱스로 가기 */
		$('#goHome').click(function(){
			location.href = "${pageContext.request.contextPath}/";
		})
		
		$('#goFarmMemberList').click(function(){
			location.href = "${pageContext.request.contextPath}/oneFarm?fName=${fName}";
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
    <section id="main-content">
		<section class="wrapper">
			<div>
				<div>
					<h3>${fName}의 회원 리스트</h3>
				</div>
				<table class="table">
					<thead>
						<tr>
							<th>농가 회원 이름</th>
							<th>농가 회원 이메일</th>
							<th>농가 회원 연락처 </th>
						</tr>
					</thead>
					<c:forEach var="farmMember" items="${list}">
					<tbody>
						<tr>
							<td>${farmMember.fMemberName}</td>
							<td>${farmMember.fMemberEmail}</td>
							<td>${farmMember.fMemberPhone}</td>
						</tr>
					</tbody>
					</c:forEach>
				</table>
				<button type="button" class="btn btn-default" id="goHome">메인으로</button>
				<button type="button" class="btn btn-default" id="goFarmMemberList">농가 상세정보로 돌아가기</button>
			</div>
		</section>
	</section>
	
</body>
</html>