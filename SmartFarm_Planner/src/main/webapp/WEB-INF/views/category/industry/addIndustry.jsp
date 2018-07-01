<!-- 나성수 -->
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>addIndustry</title>
<jsp:include page="/WEB-INF/views/css.jsp"/>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script type="text/javascript">
	$(document).ready(function(){
		$('button').click(function(){
			$('input').each(function(i,e){
				if($(e).val() == ''){
					alert('값을 채워주세요');
					$(e).focus();
					preventDefault();
				}
			});
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
    		<c:if test="${loginMember.level == null}">
    			<a href="${pageContext.request.contextPath}/login">
    				<strong>
    					관리자로 로그인 하셔야 이용가능합니다.
    				</strong>
    			</a>
    		</c:if>
    		<c:if test="${loginMember.level == 'company' || loginMember.level == 'farm'}">
    			<a href="${pageContext.request.contextPath}/">
    				<strong>
    					관리자회원만 이용가능합니다.
    				</strong>
    			</a>
    		</c:if>
    		<c:if test="${loginMember.level == 'agency'}">
	    		<div align="center">
	    			<div style="background-color: #FAFAFA; margin: 5% 0% 2% 0%; padding: 5% 0% 4% 0%; width: 65%;">
	    				<div style="margin: 0 auto; padding-bottom: 50px;">
			    			<h3><b><i class="fa fa-cubes"></i>산업카테고리를 등록해주세요.</b></h3>
			    		</div>
						<div class="row">
				    		<div class="col-lg-2"></div>
							<div class="col-lg-8">
						   		<form action="${pageContext.request.contextPath}/addIndustry" method="post" class="form-horizontal">
									<div class="form-group">
										<div class="col-lg-9">
											<label class="col-lg-3 control-label">산업명</label>
											<div class="col-lg-9">
						    					<input type="text" name="industryName" id="industryName" class="form-control">
											</div>
										</div>
										<div class="col-lg-3">
					    					<button type="button" class="btn btn-primary">등록</button>
										</div>
									</div>
					    		</form>
						   	</div>
					    	<div class="col-lg-2"></div>
						</div>
	    			</div>
	    		</div>
    		</c:if>
    	</section>
    </section>
</body>
</html>