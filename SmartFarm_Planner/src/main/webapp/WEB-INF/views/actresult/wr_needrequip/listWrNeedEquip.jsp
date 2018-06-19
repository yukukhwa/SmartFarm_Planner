<!-- [유국화] -->
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<title>listWrNeedEquip</title>
	<jsp:include page="/WEB-INF/views/css.jsp"></jsp:include>
</head>
<jsp:include page="/WEB-INF/views/top.jsp"></jsp:include>
<jsp:include page="/WEB-INF/views/left.jsp"></jsp:include>
<body>
<section id="main-content">
	<section class="wrapper">
		<div class="row">
			<div class="col-lg-12">
				<h3 class="page-header"><i class="fa fa-laptop"></i>필요장비결과 리스트 화면</h3>	
				<table border="1">
					<thead>
					<tr>
						<th>필요장비결과넘버</th>
						<th>실행할때보유상태</th>
						<th>작업단계결과 넘버</th>
						<th>총작업면적</th>
						<th>이미작업한면적</th>
						<th>예상필요장비넘버</th>
						<th>계획할때보유상태</th>							
					</tr>					
					</thead>
					<tbody>
						<c:forEach var="wrNeedEquipList" items="${wrNeedEquipList}">
							<tr>
							<td>${wrNeedEquipList.wrNeedequipNumber }</td>
							<td>${wrNeedEquipList.wrNeedequipState }</td>
							<td>${wrNeedEquipList.ppWoResult.wrNumber }</td>
							<td>${wrNeedEquipList.ppWoResult.wrTotalarea }</td>
							<td>${wrNeedEquipList.ppWoResult.wrReworkarea }</td>
							<td>${wrNeedEquipList.woNeedEquip.eNeedequipNumber }</td>
							<td>${wrNeedEquipList.woNeedEquip.eNeedequipState }</td>
							</tr>
						</c:forEach>
					</tbody>				
				</table>
			</div>
		</div>
	</section>
</section>

</body>
</html>