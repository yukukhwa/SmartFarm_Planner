<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>addFarm</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script type="text/javascript">
	$(document).ready(function(){
		
	})
</script>
</head>
<body>
	<h3>농가등록하기</h3>
	<form action="${pageContext.request.contextPath}/addFarm" method="post">
		<div>
			<b>농장이름 : </b>
			<input type="text" placeholder="농장이름을 등록해주세요" name="fName" id="fName">
		</div>
		<div>
			<b>농가연락처</b>
			<input type="text" placeholder="-를 빼고 입력해주세요" name="fPhone" id="fPhone">
		</div>
		<div>
			<b>도로명 주소 : </b>
			<input type="text" name="fDoroaddress" placeholder="도로명주소를 입력해주세요"><br>
			<b>지번 주소 : </b>
			<input type="text" name="fJibunaddress" placeholder="지번주소를 입력해주세요"><br>
		</div>
		<div>
			<b>농가인원</b> <br>
			<input type="text" placeholder="농가인원 숫자를 입력해주세요" name="fParty" id="fParty"> 명
		</div>
		<br>
		<input type="submit" value="농장등록하기">
	</form>
</body>
</html>