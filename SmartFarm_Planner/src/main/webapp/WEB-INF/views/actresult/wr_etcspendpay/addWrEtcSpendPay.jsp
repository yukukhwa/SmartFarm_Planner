<!-- [유국화] -->
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<title>addWrEtcSpendPay</title>
	<jsp:include page="/WEB-INF/views/css.jsp"></jsp:include>
</head>
<jsp:include page="/WEB-INF/views/top.jsp"></jsp:include>
<jsp:include page="/WEB-INF/views/left.jsp"></jsp:include>
<body>
<section id="main-content">
	<section class="wrapper">
		<div class="row">
			<div class="col-lg-12">
				<h3 class="page-header"><i class="fa fa-laptop"></i>기타지출비결과 등록 화면</h3>	
				<form action="" method="post">					
					<div><label><input type="text" name="" value=""></label></div>
					<div><label><input type="text" name="" value=""></label></div>
					<div><label><input type="text" name="" ></label></div>
					<div><label><input type="date" name="" ></label></div>
					<button type="submit">등록</button>
				</form>				
			</div>
		</div>
	</section>
	<section id="main-content">
		<section class="wrapper">
			<div class="row">
				<div class="col-lg-12">
					<h3 class="page-header">
						<i class="fa fa-table"></i>작업단계결과 등록화면
					</h3>
				</div>
			</div>
			<!-- page start-->
			<div class="row">
				<div class="col-lg-12">
					<section class="panel">
						<div class="panel-body">
							<form name="insertWorkResultForm" action="${pageContext.request.contextPath }/addWrEtcSpendPay" method="post">
								<div class="form-group">
	                   				<label class="col-md-12 control-label">작업단계결과 넘버</label>
	                    			<div class="col-md-6">
	                      				<input type="text" name="ppWoResult.wrNumber" value="">
	                    			</div>
	                    			<label class="col-md-12 control-label">예상 기타지출비용 넘버</label>
	                    			<div class="col-md-6">
	                      				<input type="text" name="woEtcSpendPay.eEtcspendpayNumber">
	                    			</div>
	                    			<label class="col-md-12 control-label">작업단계결과별 실제 기타지출비</label>
	                    			<div class="col-md-6">
	                      				<input type="text" name="wrEtcspendpayRealcost">
	                    			</div>
	                    			<label class="col-md-12 control-label">작업단계별 기타지출비 등록일</label>
	                    			<div class="col-md-6">
	                      				<input type="date" name="wrEtcspendpayDate">
	                    			</div>	                    				                    			
	                  			</div>
	                  			<div>									
									<button type="submit" class="btn btn-primary">등록</button>
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
</section>
</body>
</html>