<!-- 배건혜 -->
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<title>addCompanyMember</title>
	<jsp:include page="../../css.jsp"/>
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
	<script type="text/javascript">
	$(document).ready(function(){
		$('input#level').click(function(){
				var level = $(this).val();
				if(level == '업체직원'){
					$('div#company').html('<br>업체넘버 : <input type="number" name="cNumber" id="cNumber">');
					return;
				}else{
					$('div#company').html('<h5>'
											+'업체등록화면'
										+'</h5>'
										+'<div>'
											+'거래처넘버 : <input type="number" name="dealNumber" id="dealNumber">'
										+'</div>'
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
											+'업체인원 : <input type="text" name="cParty" id="cParty">명'
										+'<div>');
					return;
				}
				return;
			});
	});/* 
	$('#submitCompanyMember').click(function(){
		var cMemberPrivacy = $('#cMemberPrivacy').val();
		var dealNumber = $('#dealNumber').val();
		var cName = $('#cName').val();
		var cPhone = $('#cPhone').val();
		var cDoroaddress = $('#cDoroaddress').val();
		var cJibunaddress = $('#cJibunaddress').val();
		var cParty = $('#cParty').val();
		var cMemberId = $('#cMemberId').val();
		var cMemberPw = $('#cMemberPw').val();
		var cMemberPwCheck = $('#cMemberPwCheck').val();
		var cMemberName = $('#cMemberName').val();
		var cMemberPhone = $('#cMemberPhone').val();
		var cMemberEmail = $('#cMemberEmail').val();
		var cMemberDoroaddress = $('#cMemberDoroaddress').val();
		var cMemberJibunaddress = $('#cMemberJibunaddress').val();
		var cMemberDetailaddress = $('#cMemberDetailaddress').val();
		
		
		if($('#cMemberPrivacy').val() == ''){
			alert('개인정보동의를 체크해주세요.');
			$('#cMemberPrivacy').focus();
			return false;
		}
		if($('#cMemberId').val() == ''){
			alert('아이디를 입력해주세요.');
			$('#cMemberId').focus();
			return false;
		}
		if($('#cMemberPw').val() == ''){
			alert('비밀번호를 입력해주세요.');
			$('#cMemberPw').focus();
			return false;
		}else if($('#cMemberPw').val() != $('#cMemberPwCheck').val()){
			alert('비밀번호가 일치하지 않습니다.');
			$('#cMemberPwCheck').focus();
			return false;
		}
		if($('#cMemberName').val() ==''){
			alert('이름을 입력해주세요.');
			$('#cMemberName').focus();
			return false;
		}
		if($('#cMemberPhone').val() ==''){
			alert('연락처를 입력해주세요.');
			$('#cMemberPhone').focus();
			return false;
		}
		if($('#cMemberEmail').val() ==''){
			alert('이메일을 입력해주세요.');
			$('#cMemberEmail').focus();
			return false;
		}
		if($('#cMemberDoroaddress').val() == ''){
			alert('도로명주소를 입력해주세요.');
			$('#cMemberDoroaddress').focus();
			return false;
		}
		if($('#cMemberJibunaddress').val() == ''){
			alert('지번주소를 입력해주세요.');
			$('#cMemberJibunaddress').focus();
			return false;
		}
		if($('#cMemberDetailaddress').val() == ''){
			alert('상세주소를 입력해주세요.');
			$('#cMemberDetailaddress').focus();
			return false;
		}
		if($('#cNumber').val() == ''){
			alert('업체넘버를 입력해주세요.');
			$('#cNumber').focus();
			return false;
		}
		if($('#dealNumber').val() == ''){
			alert('거래처넘버를 입력해주세요.');
			$('#dealNumber').focus();
			return false;
		}		
		if($('#cName').val() == ''){
			alert('업체명을 입력해주세요.');
			$('#cName').focus();
			return false;
		}
		if($('#cPhone').val() == ''){
			alert('업체연락처를 입력해주세요.');
			$('#cPhone').focus();
			return false;
		}
		if($('#cDoroaddress').val() == ''){
			alert('업체도로명주소를 입력해주세요.');
			$('#cDoroaddress').focus();
			return false;
		}
		if($('#cJibunaddress').val() == ''){
			alert('업체지번주소를 입력해주세요.');
			$('#cJibunaddress').focus();
			return false;
		}
		if($('#cParty').val() == ''){
			alert('업체인원을 입력해주세요.');
			$('#cParty').focus();
			return false;
		}
		$('form#companyMember').submit();
	});	  */
	</script>
</head>
<body>
	<!-- container section start -->
		<jsp:include page="../../top.jsp"></jsp:include>
    <!--sidebar start-->
    	<jsp:include page="../../left.jsp"></jsp:include>
    <!--sidebar end-->
    
	 <!--main content start-->
    <section id="main-content">
    	<section class="wrapper">
			<h1>업체회원가입</h1>
			<form action="${pageContext.request.contextPath}/addCompanyMember" method="post" id="companyMember">
				<div>
					개인정보제공동의<br>
					<textarea rows="" cols=""  readonly="readonly"></textarea><br>
					<input type="checkbox" name="cMemberPrivacy" value="true" id="cMemberPrivacy">예 동의합니다.
				</div>
				<div id="companyLevel">
					업체회원권한선택
					<div id="level">
						<input type="radio" id="level" name="level" value="업체대표" checked="checked">업체대표
						<input type="radio" id="level" name="level" value="업체직원">업체직원
					</div>
				</div>	
				<div id="company">
					<h5>
						업체등록화면
					</h5>
					<div>
						거래처넘버 : <input type="number" name="dealNumber" id="dealNumber">
					</div>
					<div>
						업체명 : <input type="text" name="cName" id="cName">
					</div>
					<div>
						업체연락처 : <input type="text" name="cPhone" id="cPhone" placeholder="-를 넣고 입력해주세요">
					</div>
					<div>
						도로명주소 : <input type="text" name="cDoroaddress" id="cDoroaddress" placeholder="도로명주소를 입력해주세요">
					</div>
					<div>
						지번주소 : <input type="text" name="cJibunaddress" id="cJibunaddress" placeholder="지번주소를 입력해주세요">
					</div>
					<div>
						업체인원 : <input type="text" name="cParty" id="cParty" placeholder="숫자로 입력해주세요">명
					</div>
				</div>
				<div>
					회원가입<br>
					아이디 : 
					<input type="text" name="cMemberId" id="cMemberId" placeholder="아이디를 입력해주세요">&nbsp;&nbsp;<button type="button">아이디<br>중복확인</button>
				</div>
				<div>
					패스워드 : 
					<input type="password" name="cMemberPw" id="cMemberPw" placeholder="패스워드를 입력해주세요">
				</div>
				<div>
					패스워드확인 : 
					<input type="password" name="cMemberPwCheck" id="cMemberPwCheck" placeholder="패스워드를 한번 더 입력해주세요">		
				</div>
				<div>
					이름 :
					<input type="text" name="cMemberName" id="cMemberName" placeholder="이름을 입력해주세요">
				</div>
				<div>
					연락처 : 
					<input type="text" name="cMemberPhone" id="cMemberPhone" placeholder="-를 넣고 입력해주세요">
				</div>
				<div>
					성별 :
					<input type="radio" name="cMemberGender" value="남" checked="checked">남
					<input type="radio" name="cMemberGender" value="여">여
				</div>
				<div>
					이메일 : 
					<input type="text" name="cMemberEmail" id="cMemberEmail">
				</div>
				<div>
					도로명주소
					<input type="text" name="cMemberDoroaddress" id="cMemberDoroaddress" placeholder="도로명주소를 입력해주세요">
					지번주소
					<input type="text" name="cMemberJibunaddress" id="cMemberJibunaddress" placeholder="지번주소를 입력해주세요">
					상세주소
					<input type="text" name="cMemberDetailaddress" id="cMemberDetailaddress" placeholder="상세주소를 입력해주세요">
				</div>
				<div>
					<button type="submit" id="submitCompanyMember" value="submit">회원가입 </button>		
				</div>		
			</form>
		</section>
	</section>
</body>
</html>