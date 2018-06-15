<!-- 나성수 -->
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>updateAgencyMember</title>
<jsp:include page="/WEB-INF/views/css.jsp"/>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script type="text/javascript">
	$(document).ready(function(){
		// opener관련 오류가 발생하는 경우 아래 주석을 해지하고, 사용자의 도메인정보를 입력합니다. ("팝업API 호출 소스"도 동일하게 적용시켜야 합니다.)
		// document.domain = "abc.go.kr";
		$('input#memberJusoCheck').click(function(){
			// 주소검색을 수행할 팝업 페이지를 호출합니다.
			// 호출된 페이지(jusopopup.jsp)에서 실제 주소검색URL(http://www.juso.go.kr/addrlink/addrLinkUrl.do)를 호출하게 됩니다.
			var pop = window.open("${pageContext.request.contextPath}/jusoPopup","pop","width=570,height=420, scrollbars=yes, resizable=yes"); 
			whoJuso = 1;
			// 모바일 웹인 경우, 호출된 페이지(jusopopup.jsp)에서 실제 주소검색URL(http://www.juso.go.kr/addrlink/addrMobileLinkUrl.do)를 호출하게 됩니다.
		    //var pop = window.open("/popup/jusoPopup.jsp","pop","scrollbars=yes, resizable=yes"); 
		});
		
		$('button#update').click(function(){
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
    		<h4>${agencyMember.aMemberName}님의 회원정보</h4>
    		<form id="agencyMember" action="${pageContext.request.contextPath}/updateAgencyMember" method="post">
	    		<div>
	    			<label>
		    			소속
		    			<input type="text" value="${agencyMember.agencyDb.aName}" disabled="disabled">
		    			<input type="hidden" value="${agencyMember.agencyDb.aName}" name="aName" id="aName">
		    		</label>
	    		</div>
	    		<div>
		    		<label>
		    			관리기관코드
		    			<input type="number" value="${agencyMember.agencyDb.aNumber}" disabled="disabled">
		    		</label>
	    		</div>
	    		<div>
		    		<label>
		    			아이디
		    			<input type="text" value="${agencyMember.aMemberId}" disabled="disabled">
		    			<input type="hidden" value="${agencyMember.aMemberId}" name="aMemberId" id="aMemberId">
		    		</label>
	    		</div>
	    		<div>
		    		<label>
		    			패스워드
		    			<input type="text" value="${agencyMember.aMemberPw}" name="aMemberPw" id="aMemberPw">
		    		</label>
	    		</div>
	    		<div>
		    		<label>
		    			이름
		    			<input type="text" value="${agencyMember.aMemberName}" name="aMemberName" id="aMemberName">
		    		</label>
	    		</div>
	    		<div>
		    		<label>
		    			성별
		    			<input type="text" value="${agencyMember.aMemberGender}" disabled="disabled">
		    		</label>
	    		</div>
	    		<div>
		    		<label>
		    			연락처
		    			<input type="text" value="${agencyMember.aMemberPhone}" name="aMemberPhone" id="aMemberPhone">
		    		</label>
	    		</div>
	    		<div>
	    			<label>
		    			이메일
		    			<input type="email" value="${agencyMember.aMemberEmail}" name="aMemberEmail" id="aMemberEmail">
		    		</label>
	    		</div>
	    		<div>
					<input type="button" id="memberJusoCheck" value="주소검색" />
				</div>
				<div>
					도로명주소 : <input type="text" style="width: 500px;" value="${agencyMember.aMemberDoroaddress}" id="memberDoroaddress" name="aMemberDoroaddress" readonly="readonly" />
				</div>
				<div>
					지번 : <input type="text" style="width: 500px;" value="${agencyMember.aMemberJibunaddress}" id="memberJibunaddress" name="aMemberJibunaddress" readonly="readonly" />
				</div>
				<div>
					상세주소 : <input type="text" style="width: 500px;" value="${agencyMember.aMemberDetailaddress}" id="memberDetailaddress" name="aMemberDetailaddress"/>
				</div>
    		</form>
    		<div>
    			<button id="update" type="button">수정</button>
    		</div>
    	</section>
   	</section>
</body>
</html>