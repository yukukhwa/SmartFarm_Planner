<!-- [김재희] -->
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>addFarmMember</title>
<jsp:include page="/WEB-INF/views/css.jsp"/>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script type="text/javascript">
	$(document).ready(function(){
		$("input:radio[name=formCheck]").click(function(){
			// 농가직원이면 addFarmForm이 농합코드 입력폼이 오게 
			if($(this).val() == 'staff'){
				$('#addFarmForm').html('<div><b>농가통합넘버 입력 : </b>'
						+'<input type="number" id="fNumber" name="fNumber" placeholder="농가코드를 입력해주세요">'
						+'<br></div>');
				return;
			}else{
				$('#addFarmForm').html('<h3>농가등록하기</h3>'
						+'<div><b>농장이름 : </b><input type="text" placeholder="농장이름을 등록해주세요" name="fName" id="fName"></div>'
						+'<div><b>농가연락처</b><input type="text" placeholder="-를 붙이고 입력해주세요" name="fPhone" id="fPhone"></div>'
						+'<div><b>도로명 주소 : </b><input type="text" name="fDoroaddress" placeholder="도로명주소를 입력해주세요"><br>'
						+'<b>지번 주소 : </b><input type="text" name="fJibunaddress" placeholder="지번주소를 입력해주세요"><br></div>'
						+'<div><b>농가인원</b> <br><input type="text" placeholder="농가인원 숫자를 입력해주세요" name="fParty" id="fParty"> 명</div>');
				return;
			}
			return;
		})
		
		$("#insertFarmMember").click(function(){
			var fName = $('#fName').val();
			var fPhone = $('#fPhone').val();
			var fDoroaddress = $('#fDoroaddress').val();
			var fJibunaddress = $('#fJibunaddress').val();
			var fParty = $('#fParty').val();
			var fMemberId = $('#fMemberId').val();
			var fMemberPw = $('#fMemberPw').val();
			
			//개인정보동의에 체크하지 않으면 경고문과 함께 submit하지 못하게
			if($('#fMemberPrivacy').prop('checked')){
				alert('개인정보 제공을 동의하셨습니다');
				return;
			}else{
				alert('개인정보제공동의를 체크하셔야 회원가입 됩니다');
				$('#fMemberPrivacy').focus();
				return false;
			}
				
			//아이디를 입력하지 않으면 아이디입력칸으로 돌아감
			if(fMemberId.length == 0){
				alert("아이디를 입력해주세요");
				$('#fMemberId').focus();
				return;
			}
			
			//비밀번호를 입력하지 않으면 비밀번호 입력칸으로 돌아감
			if(fMemberPw.length == 0){
				alert("아이디를 입력해주세요");
				$('#fMemberPw').focus();
				return;
			}
			
			//농가이름이 없으면 다시 입력칸으로 돌아감
			if(fName.length == 0){
				alert("농장이름을 입력해주세요");
				$('#fName').focus();
				return;
			}
			
			//농가의 대표번호가 없으면 다시 입력칸으로 돌아감
			if(fPhone.length == 0){
				alert("농장의 대표번호를 입력해주세요");
				$('#fPhone').focus();
				return;
			}
			
			// 농가의 도로명주소가 없으면 다시 입력칸으로 돌아가게
			if(fDoroaddress.length == 0){
				alert("농장의 도로명주소를 입력해주세요");
				$('#fDoroaddress').focus();
				return;
			}
			
			// 농가의 지번주소가 없으면 다시 입력칸으로 돌아가게
			if(fJibunaddress.length == 0){
				alert("농장의 도로명주소를 입력해주세요");
				$('#fJibunaddress').focus();
				return;
			}
			
			// 농가의 인원을 입력하지 않으면 다시 입력칸으로 돌아감
			if(fParty.length == 0){
				alert("농가의 인원을 입력해주세요");
				$('#fParty').focus();
				return;
				
			}
			$('#farmMemberInsert').submit();
			// 농가의 인원은 숫자만 받을 수 있게
			/* if(fParty) */
			
			// 모든 조건이 완료되면 submit으로 넘어가게
			/* if(confirm("농가로 회원가입 하시겠습니까?")){
				alert("농가로 회원가입 되셨습니다")
				return true;
			} */
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
     <!--main content start-->
    <section id="main-content">
    	<section class="wrapper">
			<h3>농가회원가입하기</h3>
			<div>
				<b>회원가입폼 선택</b><br>
				<input type="radio" name="formCheck" value="exponent" checked="checked"/> 농가대표
				<input type="radio" name="formCheck" value="staff" /> 농가직원
			</div>
			<form id="farmMemberInsert" action="${pageContext.request.contextPath}/addFarmMember" method="post">
				<div>
					<b>개인정보제공동의</b><br>
					<textarea rows="10" cols="50" id="fMemberPrivacyContent" readonly="readonly">개인정보제공 동의?</textarea> <br>
					<input type="checkbox" id="fMemberPrivacy" name="fMemberPrivacy" value="true"> 예, 동의합니다.
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
						<input type="text" name="fDoroaddress" id="fDoroaddress" placeholder="도로명주소를 입력해주세요"><br>
						<b>지번 주소 : </b>
						<input type="text" name="fJibunaddress" id="fJibunaddress" placeholder="지번주소를 입력해주세요"><br>
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
					<input type="text" name="fMemberId" id="fMemberId" placeholder="아이디를 입력해주세요">
					<button type="button" id="idCheck">아이디 중복확인</button><br>
				</div>
				<div>			
					<b>비밀번호 입력 : </b>
					<input type="password" name="fMemberPw" id="fMemberPw">
					<input type="checkbox" id="pwOpen"> 비밀번호 보이기 <br>
				</div>
				<div>		
					<b>비밀번호 확인  : </b>
					<input type="password" id="fPwCheckFomr">
					<button type="button" id="fPwCheck">비밀번호 일치확인</button><br>
				</div>
				<div>		
				<b>이름 : </b>
				<input type="text" name="fMemberName" id="fMemberName" placeholder="이름을 입력해주세요"> <br>
				</div>
				<div>
					<b>연락처 : </b>
					<input type="text" name="fMemberPhone" id="fMemberPhone" placeholder="-를 붙이고 연락처를 입력해주세요"> <br>
				</div>
				<div>
					<b>성별 : </b>
					<input type="radio" name="fMemberGender" value="여"> 여자
					<input type="radio" name="fMemberGender" value="남"> 남자 <br>
				</div>
				<div>
					<b>이메일 : </b>
					<input type="text" name="fMemberEmail" placeholder="이메일을 입력해주세요">
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
			<br>
			<button id="insertFarmMember">회원가입</button>
				<!-- 회원가입 폼 끝 -->
			</form>
		</section>
	</section>
</body>
</html>