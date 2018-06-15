<!-- 나성수 -->
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>listMemo</title>
<jsp:include page="/WEB-INF/views/css.jsp"/>
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
    		<%-- <table>
    			<thead>
    				<tr>
    					<th>메모넘버</th>
    					<th>테마명</th>
    					<th>메모주제</th>
    					<th>메모내용</th>
    				</tr>
    			</thead>
    			<tbody>
    				<c:forEach items="${list}" var="memo">
	    				<tr>
	    					<td>${memo.wrMemoNumber}</td>
	    					<td>${memo.categoryTheme.themeName}</td>
	    					<td>${memo.wrMemoSubject}</td>
	    					<td>${memo.wrMemoContent}</td>
	    				</tr>
    				</c:forEach>
    			</tbody>
    		</table> --%>
    		<c:forEach items="${list}" var="memo">
		   		<div>
		   			테마명 : ${memo.categoryTheme.themeName}
		   		</div>
		   		<div>
		   			메모주제 : <input type="text" value="${memo.wrMemoSubject}">
		   		</div>
		   		<div>
		   			메모내용 : <textarea rows="4" cols="50">${memo.wrMemoContent}</textarea>
		   		</div>
    		</c:forEach>
    	</section>
    </section>
</body>
</html>