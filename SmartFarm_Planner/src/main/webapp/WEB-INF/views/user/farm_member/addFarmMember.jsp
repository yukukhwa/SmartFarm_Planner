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
			if($(this).val() == 'staff'){
				// 이자리를 농가통합코드 오게
				$('#addFarmForm').html('<div><b>농가통합코드 입력 : </b><input type="text" id="farmNumber" name="fNumber" placeholder="농가코드를 입력해주세요"><br></div>');
			}else{
				$('#addFarmForm').html('<h3>농가등록하기</h3>'
						+'<div><b>농장이름 : </b><input type="text" placeholder="농장이름을 등록해주세요" name="fName" id="fName"></div>'
						+'<div><b>농가연락처</b><input type="text" placeholder="-를 붙이고 입력해주세요" name="fPhone" id="fPhone"></div>'
						+'<div><b>도로명 주소 : </b><input type="text" name="fDoroaddress" placeholder="도로명주소를 입력해주세요"><br>'
						+'<b>지번 주소 : </b><input type="text" name="fJibunaddress" placeholder="지번주소를 입력해주세요"><br></div>'
						+'<div><b>농가인원</b> <br><input type="text" placeholder="농가인원 숫자를 입력해주세요" name="fParty" id="fParty"> 명</div>');
			}
		})
	})
</script>
</head>
<body>
	<h3>농가회원가입하기</h3>
	<div>
		<b>회원가입폼 선택</b><br>
		<input type="radio" name="formCheck" value="exponent" checked="checked"/> 농가대표
		<input type="radio" name="formCheck" value="staff" /> 농가직원
	</div>
	<form action="${pageContext.request.contextPath}/addFarmMember" method="post">
		<div>
			<b>개인정보제공동의</b><br>
			<textarea rows="10" cols="50" id="fMemberPrivacyContent" readonly="readonly">개인정보제공 동의?</textarea> <br>
			<input type="checkbox" name="fMemberPrivacy" value="T"> 예, 동의합니다.
		</div>
		<!-- 농가등록 폼 시작 -->
		<!-- include버리고 html체인지로 하기 -->
		<div id="addFarmForm">
			<h3>농가등록하기</h3>
			<div>
				<b>농장이름 : </b>
				<input type="text" placeholder="농장이름을 등록해주세요" name="fName" id="fName">
			</div>
			<div>
				<b>농가연락처</b>
				<input type="text" placeholder="-를 붙이고 입력해주세요" name="fPhone" id="fPhone">
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
		</div>
	<!-- 농가등록 폼 끝 -->
	<br>
	<br>
	<!-- 기본 회원가입 폼 -->
	<div id="addFarmMemberForm">
		<h3>회원가입 폼</h3>
		<div>
			<b>아이디 : </b>
			<input type="text" name="fMemberId" placeholder="아이디를 입력해주세요">
			<button type="button" id="idCheck">아이디 중복확인</button><br>
		</div>
		<div>			
			<b>비밀번호 입력 : </b>
			<input type="password" name="fMemberPw">
			<input type="checkbox" id="pwOpen"> 비밀번호 보이기 <br>
		</div>
		<div>		
			<b>비밀번호 확인  : </b>
			<input type="password" id="passwordCheck">
			<button type="button" id="pwCheck">비밀번호 일치확인</button><br>
		</div>
		<div>		
		<b>이름 : </b>
		<input type="text" name="fMemberName" placeholder="이름을 입력해주세요"> <br>
		</div>
		<div>
			<b>연락처 : </b>
			<input type="text" name="fMemberPhone" placeholder="-를 붙이고 연락처를 입력해주세요"> <br>
		</div>
		<div>
			<b>성별 : </b>
			<input type="radio" name="fMemberGender" value="여"> 여자
			<input type="radio" name="fMemberGender" value="남"> 남자 <br>
		</div>
		<div>
			<b>이메일 : </b>
			<input type="text" name="fMemberEmail" placeholder="이메일을 입력해주세요">
			<button type="button" id="emailCheck">이메일 중복확인</button> <br>
		</div>
		<div>	
			<b>도로명 주소 : </b>
			<input type="text" name="fMemberDoroaddress" placeholder="도로명주소를 입력해주세요"><br>
			<b>지번 주소 : </b>
			<input type="text" name="fMemberJibunaddress" placeholder="지번주소를 입력해주세요"><br>
			<b>상세 주소 : </b>
			<input type="text" name="fMemberDetailaddress" placeholder="나머지 상세주소를 입력해주세요"><br>
		</div>
	</div>
	<input type="submit" value="농가회원가입하기">
		<!-- 회원가입 폼 끝 -->
	</form>
</body>
</html>