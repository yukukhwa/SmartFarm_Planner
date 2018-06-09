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
	    			도로명주소 : <input type="text" value="${agency.aDoroaddress}" name="aDoroaddress" id="aDoroaddress">
	    		</div>
	    		<div>
	    			지번주소 : <input type="text" value="${agency.aJibunaddress}" name="aJibunaddress" id="aJibunaddress">
	    		</div>
    		</form>
    		<button type="button">수정</button>
    	</section>
    </section>
</body>
</html>