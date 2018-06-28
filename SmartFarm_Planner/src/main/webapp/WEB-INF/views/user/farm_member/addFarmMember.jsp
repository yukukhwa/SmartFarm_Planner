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
		
		
		$('#goFarmList').click(function(){
			location.href = "${pageContext.request.contextPath}/listFarm";
		})
		
		// 주소 api쓰기 농가 등록에서
		$(document).on("click","#searchFarmAddress",function goPopup(){
			// 주소검색을 수행할 팝업 페이지를 호출합니다.
			// 호출된 페이지(jusopopup.jsp)에서 실제 주소검색URL(http://www.juso.go.kr/addrlink/addrLinkUrl.do)를 호출하게 됩니다.
			var pop = window.open("${pageContext.request.contextPath}/jusoPopup","pop","width=570,height=420, scrollbars=yes, resizable=yes"); 
			whoJuso = 2;
			// 모바일 웹인 경우, 호출된 페이지(jusopopup.jsp)에서 실제 주소검색URL(http://www.juso.go.kr/addrlink/addrMobileLinkUrl.do)를 호출하게 됩니다.
		    //var pop = window.open("/popup/jusoPopup.jsp","pop","scrollbars=yes, resizable=yes"); 
		})
		
		// 농가회원 등록에서 회원주소부분에 주소 api 
		$('#searchFarmMemberAddress').click(function goPopup(){
			// 주소검색을 수행할 팝업 페이지를 호출합니다.
			// 호출된 페이지(jusopopup.jsp)에서 실제 주소검색URL(http://www.juso.go.kr/addrlink/addrLinkUrl.do)를 호출하게 됩니다.
			var pop = window.open("${pageContext.request.contextPath}/jusoPopup","pop","width=570,height=420, scrollbars=yes, resizable=yes"); 
			whoJuso = 3;
			// 모바일 웹인 경우, 호출된 페이지(jusopopup.jsp)에서 실제 주소검색URL(http://www.juso.go.kr/addrlink/addrMobileLinkUrl.do)를 호출하게 됩니다.
		    //var pop = window.open("/popup/jusoPopup.jsp","pop","scrollbars=yes, resizable=yes"); 
		})
		
		//농장이름 중복체크
		$('#farmNameCheck').click(function(){
			var fName = $('#fName').val();
			
			// 농장 inputbox에 농장이름의 값이 들어있어야 중복체크 실행 할 수 있게 분기문처리
			if(fName == ""){ 
				alert("농장이름을 입력해주세요");
				$('#fName').focus();
				return;
			} else {
				$.ajax({ // 농장이름 ajax실행 시작
					type : "POST",
					data : fName,
					url : "${pageContext.request.contextPath}/farmNameCheck",
					dataType : "json",
					contentType : "application/json; charset=UTF-8",
					success : function(resultData){
						// 만약 농장이름이 존재할 경우 0이상이므로 분기문 처리해 인풋박스로 포커스
						if(resultData.count > 0){
							alert("해당 이름이 존재합니다. 다른 이름으로 입력해주세요.");
							$('#fName').focus();
							return;
						} else {
							alert("사용가능한 농장이름입니다.");
							$('#fPhone').focus();
							return;
						}
					},
					error : function(error){
						alert("error : "+error);
						return;
					}
				});// 농장이름 ajax실행 끝
			}
		})// 농장이름 중복체크 끝
		
		// 아이디 중복 체크
		$('#idCheck').click(function(){
			var fMemberId = $('#fMemberId').val();
			var idCk = 0;
			if(fMemberId == ""){
				alert("아이디를 입력해주세요 ");
				$('#fMemberId').focus();
				return;
			} else {
				$.ajax({ //ajax 시작
					type : "POST",
					data : fMemberId,
					url : "${pageContext.request.contextPath}/farmIdCheck",
					dataType : "json",
					contentType : "application/json; charset=UTF-8",
					success : function(resultData){
						// 아이디가 존재할 경우 0이상이므로 분기문처리
						if(resultData.count > 0) {
							alert("아이디가 이미 존재합니다. 다른 아이디를 입력해주세요.");
							$('#fMemberId').focus();
							return;
						} else {
							alert("사용가능한 아이디입니다.");
							$('#fMemberPw').focus();
							idCk = 1;
							return;
						}
					},
					error : function(error){
						alert("error : "+error);
						return;
					} 
				}); // ajax 끝
			}
			
		}) // 아이디 중복체크 끝
		
		
		
		$("input:radio[name=formCheck]").click(function(){
			// 농가직원이면 addFarmForm이 농합코드 입력폼이 오게 
			if($(this).val() == 'staff'){
				$('#addFarmForm').html('<div>'
											+'<b>농가통합넘버 입력 : </b>'
											+'<input type="number"  class="form-control" id="fNumber" name="fNumber" placeholder="농가코드를 입력해주세요"><br>'
										+'</div>');
				return;
			}else{
				$('#addFarmForm').html('<div>'
											+'<h3>농가등록하기</h3>'
										+'</div>'
										+'<div>'
											+'<b>농장이름 : </b>'
											+'<input type="text" placeholder="농장이름을 등록해주세요" class="form-control" name="fName" id="fName">'
											+'<button type="button" id="farmNameCheck" class="btn btn-info">농장이름 중복체크</button>'
										+'</div>'
										+'<div>'
											+'<b>농가연락처 : </b>'
											+'<input type="text" placeholder="-를 붙이고 입력해주세요" class="form-control" name="fPhone" id="fPhone">'
										+'</div>'
										+'<div>'
											+'<button type="button" id="searchFarmAddress" class="btn btn-info">주소검색</button>'
										+'</div>'
										+'<div>'
											+'<b>도로명 주소 : </b>'
											+'<input type="text" name="fDoroaddress" class="form-control" id="farmDoroaddress" placeholder="도로명주소를 입력해주세요"><br>'
										+'</div>'
										+'<div>'
											+'<b>지번 주소 : </b>'
											+'<input type="text" name="fJibunaddress" class="form-control" id="farmJibunaddress" placeholder="지번주소를 입력해주세요"><br>'
										+'</div>'
										+'<div>'
											+'<b>농가인원 : </b>'
											+'<input type="number"  class="form-control" placeholder="농가인원 숫자를 입력해주세요" name="fParty" id="fParty"> 명'
										+'</div>');
				return;
			}
			return;
		})
		
		//입력폼을 결정하는 라디오 버튼 선택에 따라 alert문구가 나옴
		
		
		
		$("#insertFarmMember").click(function(){
			$('#farmMemberInsert').submit();
			
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
    		<div class="col" align="center">
	    		<div class="col-lg-12" align="left" style="margin: 10% 0% 5% 18%;">
	    			<h2>
	    				<b><i class="icon_profile">농가회원가입하기</i></b>
	    			</h2>
	    		</div>
				<div class="col-lg-12" align="center" style="margin: auto;">
					<h4><b><i class="fa fa-file-text-o"></i>회원가입폼 선택</b></h4>
					<input type="radio" id="farmdaepyo" name="formCheck" value="exponent" checked="checked"/> 농가대표 &nbsp;
					<input type="radio" id="farmStaff" name="formCheck" value="staff" /> 농가직원
				</div> <br>
				<div class="col-lg-12" style="align-content: center; width: 60%; height: 30%; padding: 8% 0% 10% 0%; margin: 3% 0% 20% 0%; text-align: center; background-color: #FAFAFA;">
					<form id="farmMemberInsert" action="${pageContext.request.contextPath}/addFarmMember" method="post">
						<div>
							<b>개인정보제공동의</b><br><br>
							<textarea rows="20" cols="90" id="fMemberPrivacyContent" readonly="readonly">스마트팜 플래너는 통합회원 서비스에 필요한 개인정보 수집·이용을 위하여 개인정보보호법 제15조 및 제22조, 제24조에 따라 귀하의 동의를 받고자 합니다.

1. 개인정보 수집 목적
 스마트팜 플래너 통합로그인시스템에서는 다음의 목적을 위해 개인정보 수집하고 이용합니다.

가. 홈페이지 회원가입 및 관리 
- 회원 가입의사 확인, 회원제 서비스 제공에 따른 본인 식별·인증, 회원자격 유지·관리, 제한적 본인확인제 시행에 따른 본인확인, 서비스 부정이용 방지, 가입의사 확인 및 가입횟수 제한, 각종 고지·통지, 고충처리, 분쟁 조정을 위한 기록 보존 등을 목적으로 개인정보를 처리합니다. 

나. 서비스 제공 
- 로그인 한 회원에게 각종 콘텐츠, 서비스 이용자격 등을 목적으로 개인정보를 처리합니다. 
- 관련법령(산업기술혁신 촉진법, 중소기업기술혁신 촉진법 등 국가기술개발사업 관련)에 의거하여 국가 정부과제수행자(대표자, 책임자, 전문가 등)의 국가과제 운영정보로 활용을 목적으로 개인정보를 처리합니다. 

2. 수집항목

 가. 스마트팜 플래너는 회원가입, 원활한 고객 상담, 각종 서비스의 제공을 위해 최초 회원가입 당시 아래와 같은 최소한의 개인정보를 필수항목과 선택항목으로 수집하고 있습니다. 
- 필수정보 : 아이디, 비밀번호, 성명, 이메일, 전화번호, 주소 

 나. 서비스 이용과정에서 아래와 같은 정보들이 자동으로 생성되어 수집될 수 있습니다. 
- IP Address, 쿠키, 방문 일시, 서비스 이용기록, 시스템 로그 등 

3. 보유 및 이용기간
- 정보주체의 동의를 받은 날로부터 회원 탈퇴 시 까지
- 단, 국가 사업수행에 필수적인 정보에 포함된 개인정보에 대해서는 관련법령(산업기술혁신 촉진법, 중소기업기술혁신 촉진법 등 국가기술개발사업 관련)에 따라 법령에 따른 업무가 종료될 때까지 일정기간 보존합니다. 

4. 동의 거부권 및 거부에 대한 불이익
- 정보주체는 개인정보 수집·이용에 대해 동의를 거부할 권리가 있으며, 최소한의 개인정보 이외의 개인정보 수집에 동의하지 아니한다는 이유로 회원에게 회원 가입 불가 및 홈페이지서비스 거부와 같은 불이익을 주지 않습니다. 단, 최소한의 개인정보 수집에 대해 동의 거부 시에는 통합회원가입이 제한됩니다. 
※ 만 14세미만 아동의 경우 개인정보 처리 목적 상 회원가입을 하실 수 없습니다.</textarea> <br><br>
							<div align="right" style="margin: 0% 11% 0% 0%;">
								<input type="checkbox" id="fMemberPrivacy" name="fMemberPrivacy" value="true"> 예, 동의합니다.
							</div>
						</div> <br><br>
						
						<!-- 농가등록 폼 시작 -->
						<div id="addFarmForm" align="center">
							<h3>농가등록하기</h3> <br>
							<div class="form-group">
								<label class="col-sm-2 control-label"><b>농장이름</b></label>
								<div class="col-sm-10" align="left">
									<input type="text" class="form-control" style="width: 30%;" placeholder="농장이름을 등록해주세요" name="fName" id="fName">
									<button type="button" id="farmNameCheck" class="btn btn-info">농장이름 중복체크</button>
								</div>
								<span class="help-block" id="addFarmFormHelpfName">
									농장이름을 등록하셔야합니다.
								</span>
							</div>
							<div class="form-group">
								<label class="col-sm-2 control-label"><b>농가연락처</b></label>
								<div class="col-sm-10" align="left">
									<input type="text" class="form-control" style="width: 30%;" placeholder="-를 붙이고 입력해주세요" name="fPhone" id="fPhone">
								</div>
								<span class="help-block" id="addFarmFormHelpfPhone">
									농장번호를 등록하셔야 합니다.
								</span>
							</div>
							<div>
								<button type="button" class="btn btn-info" id="searchFarmAddress">주소검색</button>
								<!-- <input type="button" class id="searchFarmAddress" value="주소검색하기"> -->
							</div>
							<div class="form-group">
								<label class="col-sm-2 control-label"><b>도로명 주소</b></label>
								<div class="col-sm-10" align="left">
									<input type="text" class="form-control" style="width: 30%;" name="fDoroaddress" id="farmDoroaddress"><br>
								</div>
								<span class="help-block" id="addFarmFormHelpfDoroaddress">
									주소검색을 눌러주세요
								</span>
							</div>
							<div class="form-group">
								<label class="col-sm-2 control-label"><b>지번 주소 : </b></label>
								<div class="col-sm-10" align="left">
									<input type="text" class="form-control" style="width: 30%;" name="fJibunaddress" id="farmJibunaddress"><br>
								</div>
								<span class="help-block" id="addFarmFormHelpfJibunaddress">
									주소검색을 눌러주세요
								</span>
							</div>
							<div class="form-group">
								<label class="col-sm-2 control-label"><b>농가인원</b></label>
								<div class="col-sm-10" align="center">
									<input type="number" class="form-control" style="width: 30%;" placeholder="농가인원 숫자를 입력해주세요" name="fParty" id="fParty"> 명
								</div>
								<span class="help-block" id="addFarmFormHelpfParty">
									농가 인원을 등록해주세요
								</span>

							</div>
						</div>
						<!-- 농가등록 폼 끝 -->
						<br><br>

						<!-- 기본 회원가입 폼 -->
						<div id="addFarmMemberForm">
							<h3>회원가입 폼</h3>
							<div>
								<b>아이디 : </b>
								<input type="text" name="fMemberId" id="fMemberId" placeholder="아이디를 입력해주세요" class="form-control">
								<button type="button" class="btn btn-info" id="idCheck">아이디 중복확인</button><br>
							</div>
							<div>			
								<b>비밀번호 입력 : </b>
								<input type="password" name="fMemberPw" id="fMemberPw" class="form-control">
								<input type="checkbox" id="pwOpen"> 비밀번호 보이기 <br>
							</div>
							<div>		
								<b>비밀번호 확인  : </b>
								<input type="password" id="fPwCheckFomr" class="form-control">
							</div>
							<div>		
								<b>이름 : </b>
								<input type="text" name="fMemberName" id="fMemberName" placeholder="이름을 입력해주세요" class="form-control"> <br>
							</div>
							<div>
								<b>연락처 : </b>
								<input type="text" name="fMemberPhone" id="fMemberPhone" placeholder="-를 붙이고 연락처를 입력해주세요" class="form-control"> <br>
							</div>
							<div>
								<b>성별 : </b>
								<input type="radio" name="fMemberGender" value="여"> 여자
								<input type="radio" name="fMemberGender" value="남"> 남자 <br>
							</div>
							<div>
								<b>이메일 : </b>
								<input type="text" name="fMemberEmail" placeholder="이메일을 입력해주세요" class="form-control">
							</div>
							<div>
								<button type="button" class="btn btn-info" id="searchFarmMemberAddress">주소검색</button>
								<!-- <input type="button" id="searchFarmMemberAddress" value="주소검색하기"> -->
							</div>
							<div>	
								<b>도로명 주소 : </b>
								<input type="text" id="farmMemberDoroaddress" name="fMemberDoroaddress" placeholder="도로명주소를 입력해주세요" class="form-control"><br>
							</div>
							<div>
								<b>지번 주소 : </b>
								<input type="text" id="farmMemberJibunaddress" name="fMemberJibunaddress" placeholder="지번주소를 입력해주세요" class="form-control"><br>
							</div>
							<div>
								<b>상세 주소 : </b>
								<input type="text" id="farmMemberDetailaddress" name="fMemberDetailaddress" placeholder="나머지 상세주소를 입력해주세요" class="form-control"><br>
							</div>
						</div>
					<br>
					<button type="button" class="btn btn-primary" id="insertFarmMember">회원가입</button>
					<button type="button" class="btn btn-default" id="goFarmList">농장리스트로 가기</button>
					<!-- 회원가입 폼 끝 -->
					</form>
				</div>
		
			</div>
		</section>
	</section>
</body>
</html>