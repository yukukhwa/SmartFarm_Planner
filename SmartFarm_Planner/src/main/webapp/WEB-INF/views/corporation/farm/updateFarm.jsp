<!-- [김재희] -->
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>updateFarm</title>
<jsp:include page="/WEB-INF/views/css.jsp"/>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script type="text/javascript">
	$(document).ready(function(){
		$('#updateFarmBtn').click(function(){
			$('#updateFarmForm').submit();
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
			<h3>내 농가 수정하기</h3>
			<form id="updateFarmForm" method="post" action="${pageContext.request.contextPath}/updateFarm">
				<div>
					<label>
						<input type="hidden" value="${farmDb.fNumber}" name="fNumber">
					</label>
				</div>
				<div>
					<label>
						농가이름 :
						<input type="text" value="${farmDb.fName}" name="fName">
					</label>
				</div>
				<div>
					<label>
						농가 대표번호 : 
						<input type="text" value="${farmDb.fPhone}" name="fPhone">
					</label>
				</div>
				<div>
					<label>
						농가 도로명주소 : 
						<input type="text" value="${farmDb.fDoroaddress}" name="fDoroaddress">
					</label>
				</div>
				<div>
					<label>
						농가 지번주소 : 
						<input type="text" value="${farmDb.fJibunaddress}" name="fJibunaddress">
					</label>
				</div>
				<div>
					<label>
						농가 인원 수 : 
						<input type="number" value="${farmDb.fParty}" name="fParty">
					</label>
				</div>
				<div>
					<label>
						농가 등록시간 : 
						<input type="text" disabled="disabled" value="${farmDb.fRegistdate}" name="fRegistdate">
					</label>
				</div>
				<button id="updateFarmBtn">농가정보 수정하기</button>
			</form>
		</section>
	</section>
</body>
</html>