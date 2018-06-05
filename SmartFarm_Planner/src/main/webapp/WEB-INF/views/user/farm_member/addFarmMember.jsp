<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>addFarmMember</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script type="text/javascript">
	$(document).ready(function(){
		$("input:radio[name=formCheck]").click(function(){
			
		})
	})
</script>
</head>
<body>
	<h3>농가회원가입하기</h3>
	<form action="${pageContext.request.contextPath}/addFarmMember" method="post">
		<div>
			<b>개인정보제공동의</b><br>
			<textarea rows="10" cols="50" id="fMemberPrivacyContent" readonly="readonly">개인정보제공 동의?</textarea> <br>
			<input type="checkbox" name="fMemberPrivacy" value="TURE"> 예, 동의합니다.
		</div>
		<br><br>
		<div>
			<b>회원가입폼 선택</b><br>
			<input type="radio" name="formCheck" value="대표" /> 농가대표
			<input type="radio" name="formCheck" value="직원" checked="checked"/> 농가직원
		</div>
		<br>
		<!-- 기본 회원가입 폼 -->
		<div>
			<h3>회원가입 폼</h3>
			<b>아이디 : </b>
			<input type="text" name="fMemberId" placeholder="아이디를 입력해주세요">
			<button type="button" id="idCheck">아이디 중복확인</button><br>
		</div>
		<div>
			<b>비밀번호 입력 : </b>
			<input type="password">
			<input type="checkbox" id="pwOpen"> 비밀번호 보이기 <br>
		</div>
		<div>
			<b>비밀번호 확인  : </b>
			<input type="password" id="passwordCheck">
			<button type="button" id="pwCheck">비밀번호 일치확인</button> 
		<div>
			<b>농가통합코드 선택</b><br>
			<select name="fNumber">
				<option value="1">성수농장</option>
				<option value="2">국화농장</option>
				<option value="3">기성농장</option>
				<option value="4">재희농장</option>
				<option value="5">쩌리농장</option>
			</select>
		</div>	
		</div>
		<div>
			<b>이름 : </b>
			<input type="text" name="fMemberName" placeholder="이름을 입력해주세요">
		</div>
		<div>
			<b>연락처 : </b>
			<input type="text" name="fMemberPhone" placeholder="-를 빼고 연락처를 입력해주세요">
		</div>
		<div>
			<b>성별 : </b>
			<input type="radio" name="fMemberGender" value="여"> 여자
			<input type="radio" name="fMemberGender" value="남"> 남자
		</div>
		<div>
			<b>이메일 : </b>
			<input type="text" name="fMemberEmail" placeholder="이메일을 입력해주세요">
			<button type="button" id="emailCheck">이메일 중복확인</button>
		</div>
		<div>
			<b>도로명 주소 : </b>
			<input type="text" name="fMemberDoroaddress" placeholder="도로명주소를 입력해주세요"><br>
			<b>지번 주소 : </b>
			<input type="text" name="fMemberJibunaddress" placeholder="지번주소를 입력해주세요"><br>
			<b>상세 주소 : </b>
			<input type="text" name="fMemberDetailaddress" placeholder="나머지 상세주소를 입력해주세요"><br>
		</div>
		<!-- 회원가입 폼 끝 -->
	</form>
</body>
</html>