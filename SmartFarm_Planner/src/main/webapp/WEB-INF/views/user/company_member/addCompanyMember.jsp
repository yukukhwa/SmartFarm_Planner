<!-- 배건혜 -->
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<title>addCompanyMember</title>
	<jsp:include page="/WEB-INF/views/css.jsp"/>
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
											+'업체인원 : <input type="number" name="cParty" id="cParty">명'
										+'<div>');
					return;
				}
				return;
			});
		$(document).on('click','input#companyJusoCheck',function(){
			var pop = window.open("${pageContext.request.contextPath}/jusoPopup","pop","width=570,height=420, scrollbars=yes, resizable=yes");
			whoJuso = 0;
		});
		$('input#memberJusoCheck').click(function(){
			var pop = window.open("${pageContext.request.contextPath}/jusoPopup","pop","width=570,height=420, scrollbars=yes, resizable=yes");
			whoJuso = 1;
		});
		$('button#submitCompanyMember').click(function(){
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
			<h1>업체회원가입</h1>
			<form action="${pageContext.request.contextPath}/addCompanyMember" method="post" id="companyMember">
				<div>
					개인정보제공동의<br>
					<textarea rows="20" cols="90" id="cMemberPrivacyContent"  readonly="readonly">
스마트팜 플래너는 통합회원 서비스에 필요한 개인정보 수집·이용을 위하여 개인정보보호법 제15조 및 제22조, 제24조에 따라 귀하의 동의를 받고자 합니다.

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
※ 만 14세미만 아동의 경우 개인정보 처리 목적 상 회원가입을 하실 수 없습니다.
					</textarea><br>
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
						<label>거래처분류 :</label>
						<select>
							<c:forEach var="categoryDeal" items="${categoryDealList}">
								<option value="${categoryDeal.dealNumber}">${categoryDeal.dealClassification}</option>
							</c:forEach>
						</select>
						 
					</div>
					<div>
						<label>업체명 :</label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
						 <input type="text" name="cName" id="cName">
					</div>
					<div>
						<label>업체연락처 :</label> 
						<input type="text" name="cPhone" id="cPhone" placeholder="-를 넣고 입력해주세요">
					</div>
					<div>
						<input type="button" id="companyJusoCheck" value="주소검색" />
					</div>
					<div>
						<label>도로명주소 :</label>
						 <input type="text" size="40" name="cDoroaddress" id="corporationDoroaddress" readonly="readonly">
					</div>
					<div>
						<label>지번주소 :</label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
						<input type="text" size="40" name="cJibunaddress" id="corporationJibunaddress" readonly="readonly">
					</div>
					<div>
						<label>업체인원 :</label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
						<input type="number" name="cParty" id="cParty" placeholder="숫자로 입력해주세요">명
					</div>
				</div>
			<fieldset>
				<legend>회원가입</legend>
				<table>
				<tr>
					<th>아이디 : </th>
					<td><input type="text" name="cMemberId" id="cMemberId" placeholder="아이디를 입력해주세요">&nbsp;&nbsp;<button type="button">중복확인</button></td>
				</tr>
				<tr>
					<th>패스워드 :</th> 
					<td><input type="password" name="cMemberPw" id="cMemberPw" placeholder="패스워드를 입력해주세요"></td>
				</tr>
				<tr>
					<th>패스워드확인 :</th> 
					<td><input type="password" name="cMemberPwCheck" id="cMemberPwCheck" placeholder="패스워드를 한번 더 입력해주세요">	</td>	
				</tr>
				<tr>
					<th>이름 :</th>
					<td><input type="text" name="cMemberName" id="cMemberName" placeholder="이름을 입력해주세요"></td>
				</tr>
				<tr>
					<th>연락처 :</th> 
					<td><input type="text" name="cMemberPhone" id="cMemberPhone" placeholder="-를 넣고 입력해주세요"></td>
				</tr>
				<tr>
					<th>성별 :</th>
					<td><input type="radio"  name="cMemberGender" value="남" checked="checked">남
					<input type="radio" name="cMemberGender" value="여">여</td>
				</tr>
				<tr>
					<th>이메일 :</th> 
					<td><input type="text" name="cMemberEmail" id="cMemberEmail"></td>
				</tr>
				<tr>
					<th><input type="button" id="memberJusoCheck" value="주소검색" /><th>
				</tr>
				<tr>
					<th>도로명주소 :</th>
					<td><input type="text" style="width: 500px;" name="cMemberDoroaddress" id="memberDoroaddress" readonly="readonly"/></td>
				</tr>
				<tr>
					<th>지번주소 :</th>
					<td><input type="text" style="width: 500px;" name="cMemberJibunaddress" id="memberJibunaddress" readonly="readonly"/></td>
				</tr>
				<tr>
					<th>상세주소 :</th>
					<td><input type="text" style="width: 500px;" name="cMemberDetailaddress" id="memberDetailaddress"/></td>
				</tr>
				
				</table>	
			</fieldset>
			<button id="submitCompanyMember">회원가입 </button>
			</form>
		</section>
	</section>
</body>
</html>