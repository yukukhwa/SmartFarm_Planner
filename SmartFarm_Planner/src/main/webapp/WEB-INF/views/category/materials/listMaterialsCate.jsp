<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>listMaterialsCate</title>
<jsp:include page="/WEB-INF/views/css.jsp"/>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script type="text/javascript">
	$(document).ready(function(){
		$('#goHome').click(function(){
			location.href = "${pageContext.request.contextPath}/";
		})
	})
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
    		<c:if test="${loginMember.level != 'agency'}">
    			<div>
    				해당 페이지에 접근할 수 없는 권한입니다.
    			</div>
    		</c:if>
			<div>
				<h3>원자재 카테고리 리스트</h3>
				<table border="1">
					<thead>
						<tr>
							<th>원자재 넘버</th>
							<th>원자재 이름</th>
							<th>원자재 단위</th>
							<!-- 나중에 히든처리  -->
							<th>테마넘버</th>
							<th>테마명</th>
							<!-- 나중에 히든처리 -->
							<th>등록기관넘버</th>
							<th>등록기관명</th>
							<th>수정</th>
							<th>삭제</th>
						</tr>
					</thead>
					<tbody>
						<tr>
							<td></td>
							<td></td>
							<td></td>
							<td></td>
							<td></td>
							<td></td>
							<td></td>
							<td>
								<a href="#">수정</a>
							</td>
							<td>
								<a href="#">삭제</a>
							</td>
						</tr>
					</tbody>
				</table>
				<button id="goHome">메인으로</button>
			</div>
		</section>
	</section>
</body>
</html>