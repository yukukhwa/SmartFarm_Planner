<!-- 배건혜 -->
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<title>addCpmpany</title>
</head>
<body>
	<form action="${pageContext.request.contextPath}/addCompany" method="post">
		<h5>업체등록회면</h5>
		<div>
			거래처넘버 : <input type="number" name="dealNumber" id="dealNumber">
		</div>
		<div>
			업체명 : <input type="text" name="cName" id="cName">
		</div>
		<div>
			업체연락처 : <input type="text" name="cPhone" id="cPhone">
		</div>
		<div>
			도로명주소 : <input type="text" name="cDoroaddress" id="cDoroaddress">
		</div>
		<div>
			지번주소 : <input type="text" name="cJibunaddress" id="cJibunaddress">
		</div>
		<div>
			업체인원 : <input type="text" name="cParty" id="cParty">
		</div>
		<div>
			<input type="submit" value="업체등록하기">
		</div>
	</form>
</body>
</html>