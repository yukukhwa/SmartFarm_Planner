<!-- [김재희] -->
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>oneFarmMember</title>
<jsp:include page="/WEB-INF/views/css.jsp"/>
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
				<h3>농가 회원 상세보기(내정보보기)</h3>
				<div>
					<label>
						<b>아이디 : </b><br>
						<input type="text" disabled="disabled" value="${farmMemberInfo.fMemberId}">
					</label>
				</div>
				<div>
					<label> 
						<b>패스워드  : </b><br>
						<input type="password" disabled="disabled" name="fMemberPw" value="${farmMemberInfo.fMemberPw}" > 
					</label>
				</div>
				<div>
					<label>
						<b>이름 : </b><br>
						<input type="text" disabled="disabled" name="fMemberName" value="${farmMemberInfo.fMemberName}">
					</label>
				</div>
				<div>
					<label>
						<b>연락처 : </b><br>
						<input type="text" disabled="disabled" name="fMemberPhone" value="${farmMemberInfo.fMemberPhone}">
					</label>
				</div>
				<div>
					<label>
						<b>성별  : </b><br>
						<input type="text" disabled="disabled" name="fMemberGender" value="${farmMemberInfo.fMemberGender}">
					</label>
				</div>
				<div>
					<label>
						<b>이메일 : </b><br>
						<input type="text" disabled="disabled" name="fMemberEmail" value="${farmMemberInfo.fMemberEmail}">
					</label>
				</div>
				<div>
					<label>
						<b>도로명주소 : </b><br>
						<input type="text" disabled="disabled" name="fMemberDoroaddress" value="${farmMemberInfo.fMemberDoroaddress}">
					</label>
				</div>
				<div>
					<label>
						<b>지번주소 : </b><br>
						<input type="text" disabled="disabled" name="fMemberJibunaddress" value="${farmMemberInfo.fMemberJibunaddress }">
					</label>
				</div>
				<div>
					<label>
						<b>상세주소 : </b><br>
						<input type="text" disabled="disabled" name="fMemberDetailaddress" value="${farmMemberInfo.fMemberDetailaddress}">		
					</label>
				</div>
				<div>
					<label>
						<b>등록일자 : </b><br>
						<input type="text" disabled="disabled" name="fMemberRegistdate" value="${farmMemberInfo.fMemberRegistdate}">
					</label>		
				</div>
				<button id="updateFarmMember">내정보 수정하기</button>
				<button id="goHome">메인으로</button>
			</div>
			</section>
	</section>
</body>
</html>