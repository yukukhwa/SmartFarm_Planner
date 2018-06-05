<!--배건혜-->
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<title>addCompanyMember</title>
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
	<script type="text/javascript">
	$(document).ready(function(){
		$('input#level').click(function(){
				var level = $(this).val();
				if(level == '업체직원'){
					$('div#company').html('<br>업체코드 : <input type="number" name="cNumber" id="cNumber">');
					return;
				}else{
					$('div#company').html('<h5>'
											+'업체등록화면'
										+'</h5>'
										+'<div>'
											+'업체명 : <input type="text" name="cName" id="cName">'
										+'</div>'
										+'<div>'
											+'업체연락처 : <input type="text" name="cPhone" id="cPhone">'
										+'</div>'
										+'<div>'
											+'도로명주소 : <input type="text" name="cDoroaddress" id="cDoroaddress">'
										+'</div>'
										+'<div>'
											+'지번주소 : <input type="text" name="cJibunaddress" id="cJibunaddress">'
										+'</div>'
										+'<div>'
											+'업체인원 : <input type="number" name="cParty" id="cParty">'
										+'<div>');
					return;
				}
				return;
			});
	});
	 
		
		
	</script>
</head>
<body>
	<h1>업체회원가입</h1>
	<form action="${pageContext.request.contextPath}/addCompanyMember" method="post">
		<div>
			<div>
				개인정보제공동의<br>
				<textarea rows="" cols="" id="cMemberPrivacy" readonly="readonly"></textarea><br>
				<input type="checkbox" name="cMemberPrivacy" value="true">예 동의합니다.
			</div>
			<div id="companyLevel">
				업체회원권한선택
				<div id="level">
					<input type="radio" id="level" name="level" value="업체대표" checked="checked">업체대표
					<input type="radio" id="level" name="level" value="업체직원">업체직원
				</div>
				<div id="company">
					<h5>
						업체등록화면
					</h5>
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
						업체인원 : <input type="number" name="cParty" id="cParty">
					</div>
				</div>
			</div>
			<div>
				회원가입<br>
				아이디 : 
				<input type="text" name="cMemberId" placeholder="아이디를 입력해주세요"> 
			</div>
			<div>
				패스워드 : 
				<input type="password" name="cMemberPw" placeholder="패스워드">
			</div>
			<div>
				패스워드확인 : 
				<input type="password" name="cMemberPwCheck" placeholder="패스워드확인">		
			</div>
			<div>
				실명 :
				<input type="text" name="cMemberName">
			</div>
			<div>
				연락처 : 
				<input type="text" name="cMemberPhone">
			</div>
			<div>
				성별 :
				<input type="radio" name="cMemberGender" value="남" checked="checked">남
				<input type="radio" name="cMemberGender" value="여">여
			</div>
			<div>
				이메일 : 
				<input type="text" name="cMemberEmail">
			</div>
			<div>
				도로명주소
				<input type="text" name="cMemberDoroaddress">
				지번주소
				<input type="text" name="cMemberJibunaddress">
				상세주소
				<input type="text" name="cMemberDetailaddress">
			</div>
			<div>
				<button type="submit">회원가입 </button>		
			</div>		
		</div>
	</form>
</body>
</html>