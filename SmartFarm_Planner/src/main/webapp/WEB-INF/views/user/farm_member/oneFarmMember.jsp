<!-- [김재희] -->
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>oneFarmMember</title>
<jsp:include page="/WEB-INF/views/css.jsp"/>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script type="text/javascript">
	$(document).ready(function(){
		/* 메인으로 버튼을 클릭하면 홈으로 돌아감 */ 
		$('#goHome').click(function(){
			location.href = "${pageContext.request.contextPath}/";
		})
		
		/* 수정하기 버튼을 누르면 내정보를 수정하는 화면으로 간다 */
		$('#updateFarmMember').click(function(){
			location.href = "updateFarmMember?fMemberId=${farmMember.fMemberId}";
		})
		
		/* 탈퇴하기 버튼을 누르면 탈퇴가 된다. */
		$('#deleteFarmMember').click(function(){
			location.href = "deleteFarmMember?fMemberId=${farmMember.fMemberId}";
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
			<c:if test="${loginMember.level != 'farm'}">
				<div>
					해당 페이지에 접근할 수 없는 권한입니다.
				</div>
			</c:if>
			<c:if test="${loginMember.level == 'farm'}">
				<div>
					<h3>내정보 보기</h3>
					<div>
						<label>
							<b>소속 농가 : </b><br>
							<input type="text" disabled="disabled" value="${farmMember.farm.fName}">
						</label>
					</div>
					<div>
						<label>
							<b>아이디 : </b><br>
							<input type="text" disabled="disabled" value="${farmMember.fMemberId}">
						</label>
					</div>
					<div>
						<label> 
							<b>패스워드  : </b><br>
							<input type="password" disabled="disabled" name="fMemberPw" value="${farmMember.fMemberPw}" > 
						</label>
					</div>
					<div>
						<label>
							<b>이름 : </b><br>
							<input type="text" disabled="disabled" name="fMemberName" value="${farmMember.fMemberName}">
						</label>
					</div>
					<div>
						<label>
							<b>연락처 : </b><br>
							<input type="text" disabled="disabled" name="fMemberPhone" value="${farmMember.fMemberPhone}">
						</label>
					</div>
					<div>
						<label>
							<b>성별  : </b><br>
							<input type="text" disabled="disabled" name="fMemberGender" value="${farmMember.fMemberGender}">
						</label>
					</div>
					<div>
						<label>
							<b>이메일 : </b><br>
							<input type="text" disabled="disabled" name="fMemberEmail" value="${farmMember.fMemberEmail}">
						</label>
					</div>
					<div>
						<label>
							<b>도로명주소 : </b><br>
							<input type="text" disabled="disabled" name="fMemberDoroaddress" value="${farmMember.fMemberDoroaddress}">
						</label>
					</div>
					<div>
						<label>
							<b>지번주소 : </b><br>
							<input type="text" disabled="disabled" name="fMemberJibunaddress" value="${farmMember.fMemberJibunaddress }">
						</label>
					</div>
					<div>
						<label>
							<b>상세주소 : </b><br>
							<input type="text" disabled="disabled" name="fMemberDetailaddress" value="${farmMember.fMemberDetailaddress}">		
						</label>
					</div>
					<div>
						<label>
							<b>등록일자 : </b><br>
							<input type="text" disabled="disabled" name="fMemberRegistdate" value="${farmMember.fMemberRegistdate}">
						</label>		
					</div>
					<button id="updateFarmMember">내정보 수정하기</button>
					<button id="goHome">메인으로</button>
					<button id="deleteFarmMember">탈퇴하기</button>
					<a href="${pageContext.request.contextPath}/oneFarm?fName=${farmMember.farm.fName}">나의 농가 정보로 가기</a>
				</div>
			</c:if>
			</section>
	</section>
</body>
</html>