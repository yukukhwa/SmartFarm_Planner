<!-- [김재희] -->
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>oneFarm</title>
<jsp:include page="/WEB-INF/views/css.jsp"/>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script type="text/javascript">
	$(document).ready(function(){
		$('#selectFarmMemberList').click(function(){
			location.href = "listFarmMember?fName=${oneFarmDb.fName}";
		})
		
		$('#updateFarm').click(function(){
			location.href = "updateFarm?fName=${oneFarmDb.fName}";
		})
		
		$('#goList').click(function(){
			location.href = "listFarm";
		})
		
		$('#deleteFarm').click(function(){
			location.href = "deleteFarm?fNumber=${oneFarmDb.fNumber}";
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
				<h3>농가 상세보기</h3>
				<input type="hidden" value="${oneFarmDb.fNumber}">
				<table border="1">
					<thead>
						<tr>
							<th>농가 이름</th>
							<th>농가 대표번호</th>
							<th>농가 도로명주소</th>
							<th>농가 지번주소</th>
							<th>농가 인원수</th>
							<th>농가 등록날짜</th>
						</tr>
					</thead>
					<tbody>
						<tr>
							<td>${oneFarmDb.fName}</td>
							<td>${oneFarmDb.fPhone}</td>
							<td>${oneFarmDb.fDoroaddress}</td>
							<td>${oneFarmDb.fJibunaddress}</td>
							<td>${oneFarmDb.fParty}</td>
							<td>${oneFarmDb.fRegistdate}</td>
						</tr>
					</tbody>
				</table>
				<button type="button" id="selectFarmMemberList">이 농가의 농가회원보기</button>
				<button id="goList">리스트로 돌아가기</button>
				<button id="updateFarm">농가정보 수정하기</button>
				<button id="deleteFarm">농가정보 삭제하기</button>
			</div>
		</section>
	</section>
</body>
</html>