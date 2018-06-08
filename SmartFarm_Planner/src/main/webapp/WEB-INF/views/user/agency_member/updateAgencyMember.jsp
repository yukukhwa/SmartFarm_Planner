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
		    		<label>
		    			도로명주소
		    			<input type="text" value="${agencyMember.aMemberDoroaddress}" name="aMemberDoroaddress" id="aMemberDoroaddress">
		    			<br>
		    			<small>
		    				지번주소
		    				<input type="text" value="${agencyMember.aMemberJibunaddress}" name="aMemberJibunaddress" id="aMemberJibunaddress">
		    			</small>
		    		</label>
	    		</div>
	    		<div>
	    			<label>
		    			상세주소
		    			<input type="text" value="${agencyMember.aMemberDetailaddress}" name="aMemberDetailaddress" id="aMemberDetailaddress">
		    		</label>
	    		</div>
    		</form>
    		<div>
    			<button id="update" type="button">수정</button>
    		</div>
    	</section>
   	</section>
</body>
</html>