<!-- 나성수 -->
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>updateIndustry</title>
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
	    		<h1>산업카테고리명을 수정해주세요.</h1>
	    		<form action="#" method="post">
	    			산업명 : <input type="text" name="industryName" id="industryName" value="${categoryIndustryDb.industryName}">
	    			<input type="hidden" value="${categoryIndustryDb.industryNumber}" name="industryNumber" id="industryNumber">
	    		</form>
	    		<button type="button">등록</button>
    	</section>
    </section>
</body>
</html>