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
    		<div align="center">
    			<div style="background-color: #FAFAFA; margin: 5% 0% 2% 0%; padding: 5% 0% 4% 0%; width: 65%;">
    				<div style="margin: 0 auto; padding-bottom: 50px;">
		    			<h3><b><i class="fa fa-cubes"></i>산업카테고리명을 수정해주세요.</b></h3>
		    		</div>
					<div class="row">
			    		<div class="col-lg-2"></div>
						<div class="col-lg-8">
					   		<form action="${pageContext.request.contextPath}/updateIndustry" method="post" class="form-horizontal">
								<div class="form-group">
									<div class="col-lg-9">
										<label class="col-lg-3 control-label">산업명</label>
										<div class="col-lg-9">
					    					<input type="text" name="industryName" id="industryName" value="${categoryIndustryDb.industryName}" class="form-control">
	    									<input type="hidden" value="${categoryIndustryDb.industryNumber}" name="industryNumber" id="industryNumber">
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
    	</section>
    </section>
</body>
</html>