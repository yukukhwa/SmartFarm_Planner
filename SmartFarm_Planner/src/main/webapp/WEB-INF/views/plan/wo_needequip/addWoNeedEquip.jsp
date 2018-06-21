<!-- 배건혜 -->
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>addWoNeedEquip</title>
<jsp:include page="/WEB-INF/views/css.jsp"/>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script type="text/javascript">
	$(document).ready(function(){
		$('#addWoNeedEquip').click(function(){
			$('#addWoNeedEquipForm').submit();
		});
		$('select#eNeedequipState').change(function(){
			var eNeedequipState = $(this).val();
			if(eNeedequipState == '보유' || eNeedequipState == '구매예정'){
				$('div#woNeRentPay').empty();
				return;
			}else{
				$('div#woNeRentPay').html('<h3>'
											+'예상대여비 등록'
										+'</h3>'
										+'<div>'
											+'<input type="radio" name="neERentpaySecret" value="true" checked="checked">공개'
											+'<input type="radio" name="neERentpaySecret" value="false">비공개'
										+'</div>'
										+'<div>'
										+'<label>테마카테고리선택 </label>'
											+'<select name="categoryTheme.themeNumber">'
												+'<c:forEach var="categoryTheme" items="${categoryThemeList}">'
													+'<option value="${categoryTheme.themeNumber}">${categoryTheme.themeName}</option>'
												+'</c:forEach>'
											+'</select>'
										+'</div>'
										+'<div>'
										+'<label>대여가능장비 선택 </label>'
											+'<select name="companyRentEquip.cRentNumber">'
				    							+'<c:forEach var="companyRentEquip" items="${companyRentEquipList}">'
				    								+'<option value="${companyRentEquip.cRentNumber}">[${companyRentEquip.cRentModelname}] [${companyRentEquip.cRentCost}] [${companyRentEquip.cRentDate}]</option>'
				    							+'</c:forEach>'
				    						+'</select>'
									+'</div>');
				return;
			}
			return;
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
    		<c:if test="${loginMember.level != 'farm'}">
	    		<div>
	    			해당페이지 접근할 수 없는 권한입니다.
	    		</div>
    		</c:if>
    		<c:if test="${loginMember.level == 'farm'}">
    			<div>
    				<h3>예상 필요장비 등록</h3>
    				<form action="${pageContext.request.contextPath}/addWoNeedEquip" method="post" id="addWoNeedEquipForm">
    					<div>
    						<label>작업단계 선택  </label>
    						<select name="ppWork.ppWorkNumber">
    							<c:forEach var="ppWork" items="${ppWorkList}">
    								<option value="${ppWork.ppWorkNumber}">${ppWork.ppWorkName}</option>
    							</c:forEach>
    						</select>
    					</div>
    					<div>
    						<label>장비종류카테고리 선택</label>
    						<select name="categoryEquip.equipNumber">
    							<c:forEach var="categoryEquip" items="${categoryEquip}">
    								<option value="${categoryEquip.equipNumber}">${categoryEquip.equipName}</option>
    							</c:forEach>
    						</select>
    					</div>
    					<div>
    						<label>
    							장비 보유상태
    						</label>
    						<select name="eNeedequipState" id="eNeedequipState">
    							<option>대여</option>
    							<option>구매예정</option>
    							<option>보유</option>
    						</select>
    					</div>
    					<div id="woNeRentPay">
		    				<h3>예상대여비 등록</h3>
		    					<div>
		    						<input type="radio" name="neERentpaySecret" value="true" checked="checked">공개
		    						<input type="radio" name="neERentpaySecret" value="false">비공개
		    					</div>
		    					<div>
		    						<label>테마카테고리선택 </label>
		    						<select name="categoryTheme.themeNumber">
		    							<c:forEach var="categoryTheme" items="${categoryThemeList}">
		    									<option value="${categoryTheme.themeNumber}">${categoryTheme.themeName}</option>
		    							</c:forEach>
		    						</select>
		    					</div>
		    					<div>
		    						<label>대여가능장비 선택 </label>
		    						<select name="companyRentEquip.cRentNumber">
		    							<c:forEach var="companyRentEquip" items="${companyRentEquipList}">
		    								<option value="${companyRentEquip.cRentNumber}">[${companyRentEquip.cRentModelname}] [${companyRentEquip.cRentCost}] [${companyRentEquip.cRentDate}]</option>
		    							</c:forEach>
		    						</select>
		    					</div>
		    				</div>
    					<button id="addWoNeedEquip">등록</button>
    				</form>
    			</div>
    		</c:if>
    	</section>
    </section>
</body>
</html>