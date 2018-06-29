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
		
		/* 첫화면에서 불필요한 공간을 줄이기 위해서 숨겨준다 */
		$('#idCheckResult').hide();
		$('#PwCheckResult').hide();
		$('#NameCheckResult').hide();
		$('#NumberCheckResult').hide();
		
		/* 관리기관 확인버튼을 클릭시 ajax처리로 관리기관 존재여부를 파악해준다 */
		$(document).on('click','input:button[id="aNumberCheck"]',function(){
			var aNumber = $('input#aNumber').val();
			if(aNumber == ''){
				alert('관리기관넘버를 입력해주세요');
				$('input#aNumber').focus();
				return;
			}
			$.ajax({
				type: "POST",
				url: "${pageContext.request.contextPath}/agencyNumberCheck",
				data: {"aNumber":aNumber},
				success:function(resultMap) {		
				    	if(resultMap.TF == 'F'){// 해당기관이 존재하지 않을때
				    		alert(resultMap.result);
				    		$('#NumberCheckResult').hide();
				    		$('#NumberCheckResult').text(resultMap.result);
				    		return;
				    	}
				    	if(resultMap.TF == 'T'){// 해당기관이 존재할때
				    		//alert(resultMap.result);
				    		$('#NumberCheckResult').show();
				    		$('#NumberCheckResult').text(resultMap.result);
				    		aNumberBackup = $('input#aNumber').val();
				    		return;
				    	}
				    }
			});
			return;
		});
		
		$(document).on('click','input:button[id="aNameCheck"]',function(){
			var aName = $('input#aName').val();
			if(aName == ''){
				alert('관리기관명을 입력해주세요');
				$('input#aName').focus();
				return;
			}
			$.ajax({
				type: "POST",
				url: "${pageContext.request.contextPath}/agencyNameCheck",
				data: {"aName":aName},
				success:function(resultMap) {	
				    	if(resultMap.TF == 'F'){// 해당 등록기관명이 이미 등록되어있을때
				    		//alert(resultMap.result);
				    		$('#NameCheckResult').show();
				    		$('#NameCheckResult').text(resultMap.result+"은(는) 이미 존재하는 기관입니다.");
				    		return;
				    	}
				    	if(resultMap.TF == 'T'){// 해당 등록 기관명이 등록되어있지 않을때
				    		alert(resultMap.result);
				    		$('#NameCheckResult').hide();
				    		$('#NameCheckResult').text(resultMap.result);
				    		aNameBackup = $('input#aName').val();
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
				success:function(resultString) {		
				    	if(resultString == 'F'){// 아이디가 이미 존재할시
				    		alert('사용불가능한 아이디입니다.');
				    		$('#idCheckResult').text('사용불가능한 아이디입니다.');
				    		$('#idCheckResult').show();
				    		return;
				    	}
				    	if(resultString == 'T'){// 아이디가 존재하지 않을시
				    		alert('사용가능한 아이디입니다.');
				    		$('#idCheckResult').text('사용가능한 아이디입니다.');
				    		$('#idCheckResult').hide();
				    		return;
				    	}
				    }
			});
			return;
		});
		
		/* 관리기관 회원가입시 대표를 선택하면 관리기관등록폼이 나오며, 직원을 선택시 관기기관코드입력폼이 나오도록함 */
		$('input[name="level"]').click(function(){
			var level = $(this).val();
			if(level == '관리직원'){
			$('div#agency').html('<div class="col-lg-10">'
									+'<label class="col-sm-2 control-label">관리기관넘버</label>'
									+'<div class="col-lg-10">'
										+'<input type="number" name="aNumber" id="aNumber" class="form-control">'
										+'<b id="NumberCheckResult"></b>'
									+'</div>'
								+'</div>'
								+'<div class="col-lg-2">'
									+'<input type="button" id="aNumberCheck" value="&#xf00c; 관리기관 확인" class="btn btn-default">'
								+'</div>');
				return;
			}else{
				$('div#agency').html('<div class="col-lg-10">'
										+'<label class="col-sm-2 control-label">관리기관명</label>'
											+'<div class="col-lg-10">'
												+'<input type="text" name="aName" id="aName" class="form-control">'
												+'<b id="NameCheckResult"></b>'
											+'</div>'
											+'<label class="col-sm-2 control-label">관리기관연락처</label>'
											+'<div class="col-lg-10">'
												+'<input type="text" name="aPhone" id="aPhone" class="form-control">'
											+'</div>'
										+'</div>'
										+'<div class="col-lg-2">'
											+'<input type="button" id="aNameCheck" value="&#xf00e; 관리기관명 중복 확인" class="btn btn-default">'
										+'</div>'
										+'<div class="col-lg-10">'
											+'<label class="col-sm-2 control-label">도로명주소</label>'
											+'<div class="col-lg-10">'
												+'<input type="text" name="aDoroaddress" id="corporationDoroaddress" readonly="readonly" class="form-control">'
											+'</div>'
											+'<label class="col-sm-2 control-label">지번주소</label>'
											+'<div class="col-lg-10">'
												+'<input type="text" name="aJibunaddress" id="corporationJibunaddress" readonly="readonly" class="form-control">'
											+'</div>'
										+'</div>'
										+'<div class="col-lg-2">'
											+'<input type="button" id="agencyJusoCheck" value="&#xf124; 주소검색"  class="btn btn-default">'
										+'</div>'
									+'</div>');
				return;
			}
			return;
		});
		
		// opener관련 오류가 발생하는 경우 아래 주석을 해지하고, 사용자의 도메인정보를 입력합니다. ("팝업API 호출 소스"도 동일하게 적용시켜야 합니다.)
		// document.domain = "abc.go.kr";
		
		$(document).on('click','input#agencyJusoCheck',function(){
			// 주소검색을 수행할 팝업 페이지를 호출합니다.
			// 호출된 페이지(jusopopup.jsp)에서 실제 주소검색URL(http://www.juso.go.kr/addrlink/addrLinkUrl.do)를 호출하게 됩니다.
			var pop = window.open("${pageContext.request.contextPath}/jusoPopup","pop","width=570,height=420, scrollbars=yes, resizable=yes"); 
			whoJuso = 0;
			// 모바일 웹인 경우, 호출된 페이지(jusopopup.jsp)에서 실제 주소검색URL(http://www.juso.go.kr/addrlink/addrMobileLinkUrl.do)를 호출하게 됩니다.
		    //var pop = window.open("/popup/jusoPopup.jsp","pop","scrollbars=yes, resizable=yes"); 
		});
		
		$('input#memberJusoCheck').click(function(){
			// 주소검색을 수행할 팝업 페이지를 호출합니다.
			// 호출된 페이지(jusopopup.jsp)에서 실제 주소검색URL(http://www.juso.go.kr/addrlink/addrLinkUrl.do)를 호출하게 됩니다.
			var pop = window.open("${pageContext.request.contextPath}/jusoPopup","pop","width=570,height=420, scrollbars=yes, resizable=yes"); 
			whoJuso = 1;
			// 모바일 웹인 경우, 호출된 페이지(jusopopup.jsp)에서 실제 주소검색URL(http://www.juso.go.kr/addrlink/addrMobileLinkUrl.do)를 호출하게 됩니다.
		    //var pop = window.open("/popup/jusoPopup.jsp","pop","scrollbars=yes, resizable=yes"); 
		});
		
		/* 비밀번호확인부분 유효성검사를 해준다 */
		$('input#aMemberPwCheck').keyup(function(){
			if($('input#aMemberPw').val() != $('input#aMemberPwCheck').val()){
				//alert('비밀번호가 불일치 합니다. 확인해주세요.');
				$('#PwCheckResult').show();
				$('input#aMemberPwCheck').focus();
				return;
			}
			$('#PwCheckResult').hide();
			return;
		});
		
		/* 가입하기 버튼을 클릭시 내용이 다 작성됫는지 유효성 검사후 해당주소로 제출한다  */
		$(document).on('click','button#insertAgencyMember',function(){
			if(!$('input#aMemberPrivacy').prop('checked')){
				alert('개인정보동의를 하셔야만 가입이 가능합니다.');
				$('input#aMemberPrivacy').focus();
				return;
			}
			var level = $('input:radio[name="level"]:checked').val();
			if(level == '관리대표'){
				var aName = $('input#aName').val();
				if(aName == ''){
					alert('관리기관명을 입력해주세요.');
					$('input#aName').focus();
					return;
				}
				if($('#NameCheckResult').text() != '해당 등록기관명은 등록가능합니다.'){
					alert('관리기관명을 다시 확인하세요.');
					return;
				}
				if(aNameBackup != aName){
					alert('관리기관명을 다시 확인하세요.');
					return;
				}
				if($('input#aPhone').val() == ''){
					alert('관리기관 연락처를 입력해주세요.');
					$('input#aPhone').focus();
					return;
				}
				if($('input#corporationDoroaddress').val() == ''){
					alert('관리기관 도로명주소를 입력해주세요.');
					$('input#agencyJusoCheck').click();
					return;
				}
				if($('input#corporationJibunaddress').val() == ''){
					alert('관리기관 지번주소를 입력해주세요.');
					$('input#agencyJusoCheck').click();
					return;
				}
			}
			if(level == '관리직원'){
				var aNumber = $('input#aNumber').val();
				if(aNumber == ''){
					alert('관리기관넘버를 입력해주세요.');
					$('input#aNumber').focus();
					return;
				}
				if($('#NumberCheckResult').text() == '해당기관은 존재하지 않습니다.' || $('#NumberCheckResult').text() == ''){
					alert('관리기관넘버를 다시 확인하세요.');
					return;
				}
				if(aNumberback != aNumber){
					alert('관리기관넘버를 다시 확인하세요.');
					return;
				}
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
			}else if($('#idCheckResult').text() == '사용불가능한 아이디입니다.'){
				alert('아이디 중복확인을 다시해주세요.');
				return;
			}
			if($('input#aMemberPw').val() == ''){
				alert('비밀번호를 입력해주세요.');
				$('input#aMemberPw').focus();
				return;
			}else if($('input#aMemberPw').val() != $('input#aMemberPwCheck').val()){
				alert('비밀번호를 다시 확인해주세요.');
				$('#PwCheckResult').show();
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
			if($('input#memberDoroaddress').val() == ''){
				alert('도로명주소를 입력해주세요.');
				$('input#memberJusoCheck').click();
				return;
			}
			if($('input#memberJibunaddress').val() == ''){
				alert('지번주소를 입력해주세요.');
				$('input#memberJusoCheck').click();
				return;
			}
			if($('input#memberDetailaddress').val() == ''){
				alert('상세주소를 입력해주세요.');
				$('input#addrDetail').focus();
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
			<h1>
   				<b><i class="icon_profile">관리기관 회원가입</i></b>
   			</h1>
			<form id="agencyMember" action="${pageContext.request.contextPath}/addAgencyMember" method="post" class="form-horizontal" style="width: 80%; margin: 0 auto; padding: 15px; background-color: white;">
				<div>
					<div>
						<h4 align="center"><b><i class="fa fa-file-text-o"></i>개인정보동의</b></h4><br>
						<div style="width: 100%; height: 300px; background-color: white; padding: 10px 10px 10px 10px; overflow:scroll; overflow-x:hidden;  border: solid 0.5px;">
							스마트팜 플래너는 통합회원 서비스에 필요한 개인정보 수집·이용을 위하여 개인정보보호법 제15조 및 제22조, 제24조에 따라 귀하의 동의를 받고자 합니다.
							<dl>
								<dt>1. 개인정보 수집 목적</dt>
								<dd>스마트팜 플래너 통합로그인시스템에서는 다음의 목적을 위해 개인정보 수집하고 이용합니다.</dd>
								<ul>
									<li>가. 홈페이지 회원가입 및 관리 </li>
									<ul>
										<li>- 회원 가입의사 확인, 회원제 서비스 제공에 따른 본인 식별·인증, 회원자격 유지·관리, 제한적 본인확인제 시행에 따른 본인확인, 서비스 부정이용 방지, 가입의사 확인 및 가입횟수 제한, 각종 고지·통지, 고충처리, 분쟁 조정을 위한 기록 보존 등을 목적으로 개인정보를 처리합니다. </li>
									</ul>
									<li>나. 서비스 제공 </li>
									<ul>
										<li>- 로그인 한 회원에게 각종 콘텐츠, 서비스 이용자격 등을 목적으로 개인정보를 처리합니다. </li>
										<li>- 관련법령(산업기술혁신 촉진법, 중소기업기술혁신 촉진법 등 국가기술개발사업 관련)에 의거하여 국가 정부과제수행자(대표자, 책임자, 전문가 등)의 국가과제 운영정보로 활용을 목적으로 개인정보를 처리합니다. </li>
									</ul>
								</ul>
								<dt>2. 수집항목</dt>
								<ul>
									<li> 가. 스마트팜 플래너는 회원가입, 원활한 고객 상담, 각종 서비스의 제공을 위해 최초 회원가입 당시 아래와 같은 최소한의 개인정보를 필수항목과 선택항목으로 수집하고 있습니다. </li>
									<ul>
										<li>- 필수정보 : 아이디, 비밀번호, 성명, 이메일, 전화번호, 주소 </li>
									</ul>
									<li> 나. 서비스 이용과정에서 아래와 같은 정보들이 자동으로 생성되어 수집될 수 있습니다. </li>
									<ul>
										<li>- IP Address, 쿠키, 방문 일시, 서비스 이용기록, 시스템 로그 등 </li>
									</ul>
								</ul>
								<dt>3. 보유 및 이용기간</dt>
								<dd>- 정보주체의 동의를 받은 날로부터 회원 탈퇴 시 까지</dd>
								<dd>- 단, 국가 사업수행에 필수적인 정보에 포함된 개인정보에 대해서는 관련법령(산업기술혁신 촉진법, 중소기업기술혁신 촉진법 등 국가기술개발사업 관련)에 따라 법령에 따른 업무가 종료될 때까지 일정기간 보존합니다. </dd>
								<dt>4. 동의 거부권 및 거부에 대한 불이익</dt>
								<dd>- 정보주체는 개인정보 수집·이용에 대해 동의를 거부할 권리가 있으며, 최소한의 개인정보 이외의 개인정보 수집에 동의하지 아니한다는 이유로 회원에게 회원 가입 불가 및 홈페이지서비스 거부와 같은 불이익을 주지 않습니다. 단, 최소한의 개인정보 수집에 대해 동의 거부 시에는 통합회원가입이 제한됩니다. </dd>
							</dl>
							<strong>※ 만 14세미만 아동의 경우 개인정보 처리 목적 상 회원가입을 하실 수 없습니다. ※</strong>
						</div>
						<div style="float: right;">
							<input type="checkbox" value="true" name="aMemberPrivacy" id="aMemberPrivacy">예, 동의합니다
						</div>
					</div>
					<br>
					<div id="level_agency">
						<div id="level" class="form-group">
							<label class="col-sm-2 control-label">권한</label>
							<div class="col-lg-10">
								<div class="radio">
									<input type="radio" value="관리대표" name="level" checked="checked">관리대표
								</div>
								<div class="radio">
									<input type="radio" value="관리직원" name="level">관리직원
								</div>
							</div>
						</div>
						<div id="agency" class="form-group">
							<div class="col-lg-10">
								<label class="col-sm-2 control-label">관리기관명</label>
								<div class="col-lg-10">
									<input type="text" name="aName" id="aName" class="form-control">
									<b id="NameCheckResult"></b>
								</div>
								<label class="col-sm-2 control-label">관리기관연락처</label>
								<div class="col-lg-10">
									<input type="text" name="aPhone" id="aPhone" class="form-control">
								</div>
							</div>
							<div class="col-lg-2">
								<input type="button" id="aNameCheck" value="&#xf00e; 관리기관명 중복 확인" class="btn btn-default">
							</div>
							<div class="col-lg-10">
								<label class="col-sm-2 control-label">도로명주소</label>
								<div class="col-lg-10">
									<input type="text" name="aDoroaddress" id="corporationDoroaddress" readonly="readonly" class="form-control">
								</div>
								<label class="col-sm-2 control-label">지번주소</label>
								<div class="col-lg-10">
									<input type="text" name="aJibunaddress" id="corporationJibunaddress" readonly="readonly" class="form-control">
								</div>
							</div>
							<div class="col-lg-2">
								<input type="button" id="agencyJusoCheck" value="&#xf124; 주소검색"  class="btn btn-default">
							</div>
						</div>
					</div>
					<hr>
					<div>
						<div class="form-group">
							<label class="col-sm-2 control-label">이름</label>
							<div class="col-sm-10">
								<input type="text" name="aMemberName" id="aMemberName" class="form-control">
							</div>
						</div>
						<div class="form-group">
							<label class="col-sm-2 control-label">성별</label>
							<div class="col-lg-10">
								<div class="radio">
									<input type="radio" value="남" name="aMemberGender" checked="checked">남
								</div>
								<div class="radio">
									<input type="radio" value="여" name="aMemberGender">여
								</div>
							</div>
						</div>
						<div class="form-group">
							<label class="col-sm-2 control-label">ID</label>
							<div class="col-sm-10">
								<span class="col-sm-9">
									<input type="text" name="aMemberId" id="aMemberId" class="form-control">
									<b id="idCheckResult">사용불가능한 아이디입니다.</b>
								</span>
								<span class="col-sm-3">
									<input type="button" id="aMemberIdCheck" value="&#xf00c; 아이디 중복체크" class="btn btn-default">
								</span>
							</div>
						</div>
						<div class="form-group">
							<label class="col-sm-2 control-label">PW</label>
							<div class="col-sm-10">
								<input type="password" name="aMemberPw" id="aMemberPw" class="form-control">
							</div>
						</div>
						<div class="form-group">
							<label class="col-sm-2 control-label">PW확인</label>
							<div class="col-sm-10">
								<input type="password" id="aMemberPwCheck" class="form-control">
								<b id="PwCheckResult">비밀번호 불일치</b>
							</div>
						</div>
						<div class="form-group">
							<label class="col-sm-2 control-label">연락처확인</label>
							<div class="col-sm-10">
								<input type="text" name="aMemberPhone" id="aMemberPhone" class="form-control">
							</div>
						</div>
						<div class="form-group">
							<label class="col-sm-2 control-label">이메일</label>
							<div class="col-sm-10">
								<input type="email" name="aMemberEmail" id="aMemberEmail" class="form-control">
							</div>
						</div>
						<div class="form-group">
							<div class="col-sm-10">
								<div class="form-group">
									<label class="col-sm-2 control-label">도로명주소</label>
									<div class="col-sm-10">
										<input type="text" id="memberDoroaddress" name="aMemberDoroaddress" readonly="readonly" class="form-control"/>
									</div>
									<label class="col-sm-2 control-label">지번</label>
									<div class="col-sm-10">
										<input type="text" id="memberJibunaddress" name="aMemberJibunaddress" readonly="readonly" class="form-control"/>
									</div>
									<label class="col-sm-2 control-label">상세주소</label>
									<div class="col-sm-10">
										<input type="text" id="memberDetailaddress" name="aMemberDetailaddress" class="form-control"/>
									</div>
								</div>
							</div>
							<div class="col-sm-2">
								<div align="center">
									<input type="button" id="memberJusoCheck" value="&#xf124; 주소검색" class="btn btn-default">
								</div>
							</div>
						</div>
					</div>
					<button type="button" id="insertAgencyMember" class="btn btn-primary">&#xf00c; 가입하기</button>
				</div>
			</form>
		</section>
	</section>
</body>
</html>