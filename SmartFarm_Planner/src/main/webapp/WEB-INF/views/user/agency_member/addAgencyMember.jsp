<!-- 나성수 -->
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>addAgencyMember</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script type="text/javascript">
	$(document).ready(function(){
		/* 관리기관 회원가입시 대표를 선택하면 관리기관등록폼이 나오며, 직원을 선택시 관기기관코드입력폼이 나오도록함 */
		$('input#level').click(function(){
			var level = $(this).val();
			if(level == '직원'){
				$('div#agency').html('<br>관리기관코드 : <input type="number" name="aNumber" id="aNumber">');
				return;
			}else{
				$('div#agency').html('<h4>'
									+'관리기관등록화면'
									+'</h4>'
									+'<div>'
										+'관리기관명 : <input type="text" name="aName" id="aName">'
									+'</div>'
									+'<div>'
										+'관리기관연락처 : <input type="text" name="aPhone" id="aPhone">'
									+'</div>'
									+'<div>'
										+'도로명주소 : <input type="text" name="aDoroaddress" id="aDoroaddress">'
									+'</div>'
									+'<div>'
										+'지번주소 : <input type="text" name="aJibunaddress" id="aJibunaddress">'
									+'</div>');
				return;
			}
			return;
		});
		
		/* ajax처리로 아이디 중복체크를 해준다 */
		var checking = 0;
		
		var idCheck = function(){
			checking++;
			var aMemberId = $('input#aMemberId').val();
			alert(aMemberId);
			$.post({
				url: "${pageContext.request.contextPath}/agencyMemberIdCheck",
				data: {aMemberId:aMemberId},
				success:function(json) {		
				    	if(json == ''){
				    		alert('사용가능한 아이디가 맞습니다.');
				    		$('p#idCheckResult').text('사용가능한 아이디가 맞습니다.');
				    		return;
				    	}else{
				    		alert('사용가능한 아이디가 아닙니다.');
				    		$('p#idCheckResult').text('사용가능한 아이디가 아닙니다.');
				    		return;
				    	}
				    }
			});
			return;
		}
		
		 /* 아이디 중복체크버튼을 클릭시 ajax처리로 아이디 중복체크를 해준다 */
		$('button#aMemberIdCheck').click(idCheck());
		
		/* 가입하기 버튼을 클릭시 내용이 다 작성됫는지 유효성 검사후 해당주소로 제출한다  */
		$('button#insertAgencyMember').click(function(){
			if(!$('input#aMemberPrivacy').prop('checked')){
				alert('개인정보동의를 하셔야만 가입이 가능합니다.');
				$('input#aMemberPrivacy').focus();
				return;
			}
			if($('input#aMemberName').val() == ''){
				alert('이름을 입력해주세요.');
				$('input#aMemberName').focus();
				return;
			}
			if($('input#aMemberId').val() == ''){
				alert('아이디를 입력해주세요.');
				$('input#aMemberId').focus();
				return;
			}else if(checking == 0){
				alert('아이디');
			}
			if($('input#aMemberPw').val() == ''){
				alert('개인정보동의를 하셔야만 가입이 가능합니다.');
				return;
			}
			if($('input#aMemberPhone').val() == ''){
				alert('개인정보동의를 하셔야만 가입이 가능합니다.');
				return;
			}
			if($('input#aMemberEmail').val() == ''){
				alert('개인정보동의를 하셔야만 가입이 가능합니다.');
				return;
			}
			if($('input#aMemberDoroaddress').val() == ''){
				alert('개인정보동의를 하셔야만 가입이 가능합니다.');
				return;
			}
			if($('input#aMemberJibunaddress').val() == ''){
				alert('개인정보동의를 하셔야만 가입이 가능합니다.');
				return;
			}
			if($('input#aMemberDetailaddress').val() == ''){
				alert('개인정보동의를 하셔야만 가입이 가능합니다.');
				return;
			}
			$('form#agencyMember').submit();
		});
	});
</script>
</head>
<body>
	<h1>관리기관 회원가입</h1>
	<form id="agencyMember" action="${pageContext.request.contextPath}/addAgencyMember" method="post">
		<div>
			<div>
				<h4>
					개인정보동의
				</h4>
				<div style="width: 100%; height: 300px; background-color: rgba(150,150,150,.5);">
					개인정보동의
				</div>
				<div>
					<input type="checkbox" value="true" name="aMemberPrivacy" id="aMemberPrivacy">예, 동의합니다
				</div>
			</div>
			<br>
			<div id="level_agency">
				<div id="level">
					<input type="radio" value="대표" name="level" id="level" checked="checked">대표
					<input type="radio" value="직원" name="level" id="level">직원
				</div>
				<div id="agency">
					<h4>
						관리기관등록화면
					</h4>
					<div>
						관리기관명 : <input type="text" name="aName" id="aName">
					</div>
					<div>
						관리기관연락처 : <input type="text" name="aPhone" id="aPhone">
					</div>
					<div>
						도로명주소 : <input type="text" name="aDoroaddress" id="aDoroaddress">
					</div>
					<div>
						지번주소 : <input type="text" name="aJibunaddress" id="aJibunaddress">
					</div>
				</div>
			</div>
			<br>
			<div>
				<div>
					이름 : <input type="text" name="aMemberName" id="aMemberName">
				</div>
				<div>
					성별
					<div>
						<input type="radio" value="남자" name="aMemberGender" id="aMemberGender" checked="checked">남자
						<input type="radio" value="여자" name="aMemberGender" id="aMemberGender">여자
					</div>
				</div>
				<div>
					ID : <input type="text" name="aMemberId" id="aMemberId">
					<button id="aMemberIdCheck">아이디 중복체크</button>
					<p id="idCheckResult"/>
				</div>
				<div>
					PW : <input type="text" name="aMemberPw" id="aMemberPw">
				</div>
				<div>
					PW확인 : <input type="text">
				</div>
				<div>
					연락처 : <input type="text" name="aMemberPhone" id="aMemberPhone">
				</div>
				<div>
					이메일 : <input type="email" name="aMemberEmail" id="aMemberEmail">
				</div>
				<div>
					도로명주소 : <input type="text" name="aMemberDoroaddress" id="aMemberDoroaddress">
				</div>
				<div>
					지번주소 : <input type="text" name="aMemberJibunaddress" id="aMemberJibunaddress">
				</div>
				<div>
					상세주소 : <input type="text" name="aMemberDetailaddress" id="aMemberDetailaddress">
				</div>
			</div>
		</div>
	</form>
	<button id="insertAgencyMember">가입하기</button>
</body>
</html>