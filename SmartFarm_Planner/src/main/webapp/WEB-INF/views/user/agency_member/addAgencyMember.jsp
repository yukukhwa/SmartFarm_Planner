<!-- 나성수 -->
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>addAgencyMember</title>
<jsp:include page="/WEB-INF/views/css.jsp"/>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script type="text/javascript">
	$(document).ready(function(){
		/* 관리기관 확인버튼을 클릭시 ajax처리로 관리기관 존재여부를 파악해준다 */
		$(document).on('click','input:button[id="aNumberCheck"]',function(){
			var aNumber = $('input#aNumber').val();
			if(aNumber == ''){
				alert('관리기관코드를 입력해주세요');
				$('input#aNumber').focus();
				return;
			}
			$.ajax({
				type: "GET",
				url: "${pageContext.request.contextPath}/agencyNumberCheck",
				data: {"aNumber":aNumber},
				success:function(resultMap) {		
				    	if(resultMap.TF == 'F'){// 해당기관이 존재하지 않을때
				    		alert(resultMap.result);
				    		$('p#NumberCheckResult').hide();
				    		$('p#NumberCheckResult').text(resultMap.result);
				    		return;
				    	}
				    	if(resultMap.TF == 'T'){// 해당기관이 존재할때
				    		//alert(resultMap.result);
				    		$('p#NumberCheckResult').show();
				    		$('p#NumberCheckResult').text(resultMap.result);
				    		return;
				    	}
				    }
			});
			return;
		});
		
		/* 아이디 중복체크버튼을 클릭시 ajax처리로 아이디 중복체크를 해준다 */
		$('input:button[id="aMemberIdCheck"]').click(function(){
			var aMemberId = $('input#aMemberId').val();
			if(aMemberId == ''){
				alert('아이디를 입력해주세요');
				$('input#aMemberId').focus();
				return;
			}
			$.ajax({
				type: "POST",
				url: "${pageContext.request.contextPath}/agencyMemberIdCheck",
				data: {"aMemberId":aMemberId},
				success:function(result) {		
				    	if(result == 'F'){// 아이디가 이미 존재할시
				    		alert('사용불가능한 아이디입니다.');
				    		$('p#idCheckResult').text('사용불가능한 아이디입니다.');
				    		$('p#idCheckResult').show();
				    		return;
				    	}
				    	if(result == 'T'){// 아이디가 존재하지 않을시
				    		alert('사용가능한 아이디입니다.');
				    		$('p#idCheckResult').text('사용가능한 아이디입니다.');
				    		$('p#idCheckResult').hide();
				    		return;
				    	}
				    }
			});
			return;
		});
		
		/* 첫화면에서 불필요한 공간을 줄이기 위해서 숨겨준다 */
		$('p#idCheckResult').hide();
		$('p#PwCheckResult').hide();
		
		/* 관리기관 회원가입시 대표를 선택하면 관리기관등록폼이 나오며, 직원을 선택시 관기기관코드입력폼이 나오도록함 */
		$('input[name="level"]').click(function(){
			var level = $(this).val();
			if(level == '직원'){
				$('div#agency').html('<br>관리기관넘버 : <input type="number" name="aNumber" id="aNumber">'
									+'<input type="button" id="aNumberCheck" value="관리기관 확인">'
									+'<strong><p id="NumberCheckResult"/></strong>');
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
		
		/* 비밀번호확인부분 유효성검사를 해준다 */
		$('input#aMemberPwCheck').change(function(){
			if($('input#aMemberPw').val() != $('input#aMemberPwCheck').val()){
				alert('비밀번호가 불일치 합니다. 확인해주세요.');
				$('p#PwCheckResult').show();
				$('input#aMemberPwCheck').focus();
				return;
			}
			$('p#PwCheckResult').hide();
			return;
		})
		
		/* 가입하기 버튼을 클릭시 내용이 다 작성됫는지 유효성 검사후 해당주소로 제출한다  */
		$('button#insertAgencyMember').click(function(){
			if(!$('input#aMemberPrivacy').prop('checked')){
				alert('개인정보동의를 하셔야만 가입이 가능합니다.');
				$('input#aMemberPrivacy').focus();
				return;
			}
			if($('input#aNumber').val() == ''){
				alert('관리기관넘버를 입력해주세요.');
				$('input#aNumber').focus();
				return;
			}else if($('p#NumberCheckResult').text() == '해당기관은 존재하지 않습니다.'){
				alert('관리기관넘버를 다시 확인하세요.');
				return;
			}
			if($('input#aName').val() == ''){
				alert('관리기관명을 입력해주세요.');
				$('input#aName').focus();
				return;
			}
			if($('input#aPhone').val() == ''){
				alert('관리기관 연락처를 입력해주세요.');
				$('input#aPhone').focus();
				return;
			}
			if($('input#aDoroaddress').val() == ''){
				alert('관리기관 도로명주소를 입력해주세요.');
				$('input#aDoroaddress').focus();
				return;
			}
			if($('input#aJibunaddress').val() == ''){
				alert('관리기관 지번주소를 입력해주세요.');
				$('input#aJibunaddress').focus();
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
			}else if($('p#idCheckResult').text() == '사용불가능한 아이디입니다.'){
				alert('아이디 중복확인을 다시해주세요.');
				return;
			}
			if($('input#aMemberPw').val() == ''){
				alert('비밀번호를 입력해주세요.');
				$('input#aMemberPw').focus();
				return;
			}else if($('input#aMemberPw').val() != $('input#aMemberPwCheck').val()){
				alert('비밀번호를 다시 확인해주세요.');
				$('p#PwCheckResult').show();
				$('input#aMemberPwCheck').focus();
				return;
			}
			if($('input#aMemberPhone').val() == ''){
				alert('연락처를 등록해주세요.');
				$('input#aMemberPhone').focus();
				return;
			}
			if($('input#aMemberEmail').val() == ''){
				alert('이메일을 등록해주세요.');
				$('input#aMemberEmail').focus();
				return;
			}
			if($('input#aMemberDoroaddress').val() == ''){
				alert('도로명주소를 입력해주세요.');
				$('input#aMemberDoroaddress').focus();
				return;
			}
			if($('input#aMemberJibunaddress').val() == ''){
				alert('지번주소를 입력해주세요.');
				$('input#aMemberJibunaddress').focus();
				return;
			}
			if($('input#aMemberDetailaddress').val() == ''){
				alert('상세주소를 입력해주세요.');
				$('input#aMemberDetailaddress').focus();
				return;
			}
			$('form#agencyMember').submit();
		});
	});
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
							<input type="radio" value="대표" name="level" checked="checked">대표
							<input type="radio" value="직원" name="level">직원
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
								<input type="radio" value="남" name="aMemberGender" checked="checked">남
								<input type="radio" value="여" name="aMemberGender">여
							</div>
						</div>
						<div>
							ID : <input type="text" name="aMemberId" id="aMemberId">
							<input type="button" id="aMemberIdCheck" value="아이디 중복체크">
							<p id="idCheckResult">사용불가능한 아이디입니다.</p>
						</div>
						<div>
							PW : <input type="password" name="aMemberPw" id="aMemberPw">
						</div>
						<div>
							PW확인 : <input type="password" id="aMemberPwCheck">
							<p id="PwCheckResult">비밀번호 불일치</p>
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
		</section>
	</section>
</body>
</html>