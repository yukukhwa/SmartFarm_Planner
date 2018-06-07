<!-- [김재희] -->
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>oneFarm</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script type="text/javascript">
	$(document).ready(function(){
		$('#selectFarmMemberList').click(function(){
			location.href = "listFarmMember?fNumber=${oneFarmList.fNumber}";
		})
		
		$('#updateFarm').click(function(){
			location.href = "updateFarm?fNumber=${oneFarmList.fNumber}";
		})
	})
</script>
</head>
<body>
	<div>
		<h3>농가 상세보기</h3>
		<table border="1">
			<thead>
				<tr>
					<th>농가 통합넘버</th>
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
					<td>${oneFarmList.fNumber}</td>
					<td>${oneFarmList.fName}</td>
					<td>${oneFarmList.fPhone}</td>
					<td>${oneFarmList.fDoroaddress}</td>
					<td>${oneFarmList.fJibunaddress}</td>
					<td>${oneFarmList.fParty}</td>
					<td>${oneFarmList.fRegistdate}</td>
				</tr>
			</tbody>
		</table>
		<button type="button" id="selectFarmMemberList">이 농가의 농가회원보기</button>
		<button type="button" id="updateFarm">농가정보 수정하기</button>
	</div>
</body>
</html>