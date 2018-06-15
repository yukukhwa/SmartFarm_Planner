<!-- 나성수 -->
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>updateAgency</title>
<jsp:include page="/WEB-INF/views/css.jsp"/>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script type="text/javascript">
	$(document).ready(function(){
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
		
		$('button').click(function(){
			$('form').submit();
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
    		<form action="${pageContext.request.contextPath}/updateAgency" method="post">
	    		<div>
	    			소속 : <input type="text" value="${agency.aName}" name="aName" id="aName">
	    			<input type="hidden" value="${agency.aNumber}" name="aNumber" id="aNumber">
	    		</div>
	    		<div>
	    			대표 : <input type="text" value="${agency.agencyMemberDb.aMemberId}" name="aMemberId" id="aMemberId">(${agency.agencyMemberDb.aMemberName})
	    		</div>
	    		<div>
	    			연락처 : <input type="text" value="${agency.aPhone}" name="aPhone" id="aPhone">
	    		</div>
	    		<div>
					<input type="button" id="agencyJusoCheck" value="주소검색" />
				</div>
				<div>
					도로명주소 : <input type="text" style="width: 500px;" value="${agency.aDoroaddress}" name="aDoroaddress" id="corporationDoroaddress" readonly="readonly" >
				</div>
				<div>
					지번주소 : <input type="text" style="width: 500px;" value="${agency.aJibunaddress}" name="aJibunaddress" id="corporationJibunaddress" readonly="readonly" >
				</div>
    		</form>
    		<button type="button">수정</button>
    	</section>
    </section>
</body>
</html>