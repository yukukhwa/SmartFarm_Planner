<!-- 나성수 -->
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>addAgencyMember</title>
<jsp:include page="../../css.jsp"/>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script src="js/sp_addAgencyMember.js"></script>
<script type="text/javascript">
	$(document).ready(function(){
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
				    		$('p#idCheckResult').show();
				    		$('p#idCheckResult').text('사용불가능한 아이디입니다.');
				    		return;
				    	}
				    	if(result == 'T'){// 아이디가 존재하지 않을시
				    		alert('사용가능한 아이디입니다.');
				    		$('p#idCheckResult').hide();
				    		$('p#idCheckResult').text('사용가능한 아이디입니다.');
				    		return;
				    	}
				    }
			});
			return;
		});
	});
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
								<input type="button" id="aMemberIdCheck" value="아이디 중복체크">
								<p id="idCheckResult"/>
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
								<input type="radio" value="남" name="aMemberGender" id="aMemberGender" checked="checked">남
								<input type="radio" value="여" name="aMemberGender" id="aMemberGender">여
							</div>
						</div>
						<div>
							ID : <input type="text" name="aMemberId" id="aMemberId">
							<input type="button" id="aMemberIdCheck" value="아이디 중복체크">
							<p id="idCheckResult"/>
						</div>
						<div>
							PW : <input type="text" name="aMemberPw" id="aMemberPw">
						</div>
						<div>
							PW확인 : <input type="text" id="aMemberPwCheck">
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