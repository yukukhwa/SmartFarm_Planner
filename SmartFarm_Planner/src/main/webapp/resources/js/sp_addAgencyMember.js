/* 관리기관 회원가입 화면 자바스크립트 */
$(document).ready(function(){
		/* 첫화면에서 불필요한 공간을 줄이기 위해서 숨겨준다 */
		$('p#idCheckResult').hide();
		$('p#PwCheckResult').hide();
		
		/* 관리기관 회원가입시 대표를 선택하면 관리기관등록폼이 나오며, 직원을 선택시 관기기관코드입력폼이 나오도록함 */
		$('input#level').click(function(){
			var level = $(this).val();
			if(level == '직원'){
				$('div#agency').html('<br>관리기관코드 : <input type="number" name="aNumber" id="aNumber">'
									+'<input type="button" id="aNumberCheck" value="관리기관 확인">'
									+'<p id="NumberCheckResult"/>');
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
				alert('관리기관코드를 입력해주세요.');
				$('input#aNumber').focus();
				return;
			}else if($('p#NumberCheckResult').text() == '해당기관은 존재하지 않습니다.'){
				alert('관리기관을 다시 확인하세요.');
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