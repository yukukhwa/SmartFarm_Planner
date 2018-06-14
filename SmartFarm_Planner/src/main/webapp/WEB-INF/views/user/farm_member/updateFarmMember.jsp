<!-- [김재희] -->
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>updateFarmMember</title>
<jsp:include page="/WEB-INF/views/css.jsp"/>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script type="text/javascript">
	$(document).ready(function(){
		$('#updateMember').click(function(){
			$('#updateFMember').submit();
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
			<c:if test="${loginMember.level != 'farm' || loginMember.id != farmMember.fMemberId}">
				<div>
					해당페이지에 접근할 수 없는 권한입니다.
				</div>
			</c:if>
			<c:if test="${loginMember.level == 'farm' && loginMember.id == farmMember.fMemberId}">
				<div>
					<h3>농가회원 수정화면</h3>
					<form id="updateFMember" action="${pageContext.request.contextPath}/updateFarmMember" method="post">
						<div>
						<label>
							<b>소속 농가 : </b><br>
							<input type="text" disabled="disabled" value="${farmMember.farm.fName}">
							<input type="hidden" name="fName" value="${farmMember.farm.fName}">
						</label>
						</div>
						<div>
							<label>
								<b>아이디 : </b><br>
								<input type="text" disabled="disabled"  value="${farmMember.fMemberId}">
								<input type="hidden" name="fMemberId" value="${farmMember.fMemberId}">					
							</label>
						</div>
						<div>
							<label>
								<b>패스워드 : </b><br>
								<input type="text" name="fMemberPw" value="${farmMember.fMemberPw}">
							</label>
						</div>
						<div>
							<label>
								<b>이름 : </b><br>
								<input type="text" name="fMemberName" value="${farmMember.fMemberName}">
							</label>
						</div>
						<div>
							<label>
								<b>연락처 : </b><br>
								<input type="text" name="fMemberPhone" value="${farmMember.fMemberPhone}">
							</label>
						</div>
						<div>
							<label>
								<b>성별 : </b><br>
								<input type="text" disabled="disabled" value="${farmMember.fMemberGender}">
								<input type="hidden" name="fMemberGender" value="${farmMember.fMemberGender}">						
							</label>
						</div>
						<div>
							<label>
								<b>이메일 : </b><br>
								<input type="text" name="fMemberEmail" value="${farmMember.fMemberEmail}">
							</label>
						</div>
						<div>
							<label>
								<b>도로명주소 : </b><br>
								<input type="text" name="fMemberDoroaddress" value="${farmMember.fMemberDoroaddress}">
							</label>
						</div>
						<div>
							<label>
								<b>지번주소 : </b><br>
								<input type="text" name="fMemberJibunaddress" value="${farmMember.fMemberJibunaddress}">
							</label>
						</div>
						<div>
							<label>
								<b>상세주소 : </b><br>
								<input type="text" name="fMemberDetailaddress" value="${farmMember.fMemberDetailaddress}">
							</label>
						</div>
						<div>
							<label>
								<b>등록일자 : </b><br>
								<input type="text" disabled="disabled" value="${farmMember.fMemberRegistdate}">
								<input type="hidden" name="fMemberRegistdate" value="${farmMember.fMemberRegistdate}">						
							</label>
						</div>
						<button id="updateMember">내 정보 업데이트하기</button>
					</form>
				</div>
			</c:if>
		</section>
	</section>
</body>
</html>