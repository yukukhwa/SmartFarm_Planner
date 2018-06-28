<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="ko">
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<meta content="no-cache" http-equiv="pragma">
	<jsp:include page="/WEB-INF/views/css.jsp"></jsp:include>
	<title>nongAPI4.jsp</title>
	
	<!-- 공통 CSS, JS 선언 -->
	<link href="http://api.nongsaro.go.kr/css/api.css" rel="stylesheet" type="text/css">
	<script type="text/javascript" src="http://api.nongsaro.go.kr/js/framework.js"></script>	
	<script type="text/javascript" src="http://api.nongsaro.go.kr/js/openapi_nongsaro.js"></script>
		
	<script type="text/javascript">
		nongsaroOpenApiRequest.apiKey = "20180504WPMFUW3WJMKM21VATDD0Q";//Api Key  - 발급받은 인증키로변경
		nongsaroOpenApiRequest.serviceName = "sptTchnlgySport";//서비스명
		nongsaroOpenApiRequest.operationName = "sptTchnlgySportList";//오퍼레이션명 - nongsaroApiLoadingArea 영역에 로딩할 오퍼레이션
		nongsaroOpenApiRequest.htmlArea="nongsaroApiLoadingArea";//첫번째로 HTML을 로딩할영역
		nongsaroOpenApiRequest.callback = "${pageContext.request.contextPath}/resources/nongsaroAjax/ajax_local_callback.jsp";//크로스 도메인 처리를 위한 콜백페이지 - 샘플소스에 있는 콜백페이지를 서버에 올리고 올린 경로로 수정
	</script>
</head>

<body>
	<jsp:include page="/WEB-INF/views/top.jsp"></jsp:include>
	<jsp:include page="/WEB-INF/views/left.jsp"></jsp:include>
	<!--main content start-->
	<section id="main-content">
		<section class="wrapper">
			<!-- ID를 변경하지 말고 제공할 페이지에 삽입하세요 -->
			<div id="nongsaroApiLoadingArea"></div><!-- 현장기술지원 HTML 로딩 영역 -->
		</section>
	</section>
</body>
</html>