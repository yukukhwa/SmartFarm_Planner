<!-- 나성수 -->
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>oneAgencyMember</title>
<jsp:include page="/WEB-INF/views/css.jsp"/>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script type="text/javascript">
	$(document).ready(function(){
		$('a#delete').click(function(){
			alert('대표는 삭제할 수 없습니다');
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
    		<div>
    			<label>
	    			소속
	    			<input type="text" value="${agencyMember.agencyDb.aName}" disabled="disabled">
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
	    		</label>
    		</div>
    		<div>
	    		<label>
	    			패스워드
	    			<input type="password" value="${agencyMember.aMemberPw}" disabled="disabled">
	    		</label>
    		</div>
    		<div>
	    		<label>
	    			이름
	    			<input type="text" value="${agencyMember.aMemberName}" disabled="disabled">
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
	    			<input type="text" value="${agencyMember.aMemberPhone}" disabled="disabled">
	    		</label>
    		</div>
    		<div>
    			<label>
	    			이메일
	    			<input type="email" value="${agencyMember.aMemberEmail}" disabled="disabled">
	    		</label>
    		</div>
    		<div>
	    		<label>
	    			도로명주소
	    			<input type="text" value="${agencyMember.aMemberDoroaddress}" disabled="disabled">
	    			<br>
	    			<small>
	    				지번주소
	    				<input type="text" value="${agencyMember.aMemberJibunaddress}" disabled="disabled">
	    			</small>
	    		</label>
    		</div>
    		<div>
    			<label>
	    			상세주소
	    			<input type="text" value="${agencyMember.aMemberDetailaddress}" disabled="disabled">
	    		</label>
    		</div>
    		<div>
    			<a href="${pageContext.request.contextPath}/updateAgencyMember?aMemberId=${agencyMember.aMemberId}&aName=${agencyMember.agencyDb.aName}">회원정보 수정하기</a>
    		</div>
    		<div>
    			<c:if test="${level == '대표'}">
    				<a id="delete" href="#">회원 탈퇴하기</a>
    			</c:if>
    			<c:if test="${level == '직원'}">
    				<a href="${pageContext.request.contextPath}/deleteAgencyMember?aMemberId=${agencyMember.aMemberId}&aName=${agencyMember.agencyDb.aName}">회원 탈퇴하기</a>
    			</c:if>
    		</div>
    	</section>
   	</section>
</body>
</html>