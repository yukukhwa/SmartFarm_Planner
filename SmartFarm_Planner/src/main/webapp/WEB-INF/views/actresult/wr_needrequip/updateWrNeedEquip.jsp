<!-- [유국화] -->
<%@ page language="java" contentType="text/html; charset=UTF-8"	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<title>updateWrNeedEquip</title>
	<jsp:include page="/WEB-INF/views/css.jsp"></jsp:include>	
</head>
<jsp:include page="/WEB-INF/views/top.jsp"></jsp:include>
<jsp:include page="/WEB-INF/views/left.jsp"></jsp:include>
<body>
	<section id="main-content">
		<section class="wrapper">
			<div class="row">
				<div class="col-lg-12">
					<h3 class="page-header">
						<i class="fa fa-table"></i>작업단계결과 수정화면
					</h3>
				</div>
			</div>
			<!-- page start-->
			<div class="row">
				<div class="col-lg-12">
					<section class="panel">
						<div class="panel-body">
							<form name="updateWrNeedEquipForm" action="${pageContext.request.contextPath }/updateWrNeedEquip" method="post">
								<div class="form-group">
	                   				<label class="col-md-12 control-label">작업단계결과넘버</label>
	                    			<div class="col-md-6">
	                      				<input type="text" name="wrNumber" value="${workResult.wrNumber }" readonly>
	                    			</div>
	                    			<label class="col-md-12 control-label">실행결과리스트넘버</label>
	                    			<div class="col-md-6">
	                      				<input type="text" name="actResult.ppResultlistNumber" value="${workResult.actResult.ppResultlistNumber}" readonly>
	                    			</div>
	                    			<label class="col-md-12 control-label">실행결과리스트작성일</label>
	                    			<div class="col-md-6">
	                      				<input type="text" name="actResult.ppResultlistDate" value="${workResult.actResult.ppResultlistDate }" readonly>
	                    			</div>
	                    			<label class="col-md-12 control-label">예상작업단계넘버</label>
	                    			<div class="col-md-6">
	                      				<input type="text" name="ppWork.ppWorkNumber" value="${workResult.ppWork.ppWorkNumber }" readonly>
	                    			</div>
	                    			<label class="col-md-12 control-label">작업명</label>
	                    			<div class="col-md-6">
	                      				<input type="text" name="ppWork.ppWorkName" value="${workResult.ppWork.ppWorkName }" readonly>
	                    			</div>
	                    			<label class="col-md-12 control-label">작업시작일</label>
	                    			<div class="col-md-6">
	                      				<input type="text" name="ppWork.ppWorkStartday" value="${workResult.ppWork.ppWorkStartday }" readonly>
	                    			</div>
	                    			<label class="col-md-12 control-label">작업완료일</label>
	                    			<div class="col-md-6">
	                      				<input type="text" name=ppWork.ppWorkEndday value="${workResult.ppWork.ppWorkEndday }" readonly>
	                    			</div>
	                    			<label class="col-md-12 control-label">작업면적</label>
	                    			<div class="col-md-6">
	                      				<input type="text" name="ppWork.ppWorkArea" value="${workResult.ppWork.ppWorkArea }" readonly>
	                    			</div>
	                    			<label class="col-md-12 control-label">작업내용(상세)</label>
	                    			<div class="col-md-6">
	                      				<input type="text" name="ppWork.ppWorkContent" value="${workResult.ppWork.ppWorkContent }" readonly>
	                    			</div>
	                    			<label class="col-md-12 control-label">총작업면적</label>
	                    			<div class="col-md-6">
	                      				<input type="text" name="wrReworkarea" value="${workResult.wrReworkarea }">
	                    			</div>
	                    			<label class="col-md-12 control-label">이미작업한면적</label>
	                    			<div class="col-md-12">
	                      				<input type="text" name="wrTotalarea" value="${workResult.wrTotalarea }">
	                    			</div>	                    			
	                  			</div>
	                  			<div>									
									<button type="submit" class="btn btn-primary">수정완료</button>
								</div>	                  			
								<hr>
	                  		</form>
                  			
                  		</div>
                  	</section>
				</div>				
			</div>
			<!-- page end-->
		</section>	
	</section>
</body>
</html>