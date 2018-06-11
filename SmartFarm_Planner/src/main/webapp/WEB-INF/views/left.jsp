<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<aside>
	<div id="sidebar" class="nav-collapse ">
		<!-- sidebar menu start-->
		<ul class="sidebar-menu">
			<li class="active">
				<a class="" href="${pageContext.request.contextPath}/"><i class="icon_house_alt"></i><span>홈</span></a>
			</li>
			<li class="sub-menu">
				<a href="javascript:;" class=""><i class="icon_document_alt"></i><span>계획서</span><span class="menu-arrow arrow_carrot-right"></span></a>
				<ul class="sub">
					<c:if test="${loginMember.level eq 'farm'}">
						<li><a class="" href="#">나의 농가 계획서</a></li>
					</c:if>
					<li><a class="" href="#">전체 계획서</a></li>
				</ul>
			</li>
			<li class="sub-menu">
				<a href="#" class=""><i class="icon_desktop"></i><span>실행결과</span></a>
			</li>
			<li>
				<a class="" href="#"><i class="icon_genius"></i><span>대여물품</span></a>
			</li>
			<li class="sub-menu">
				<a href="javascript:;" class=""><i class="icon_document_alt"></i><span>카테고리</span><span class="menu-arrow arrow_carrot-right"></span></a>
				<ul class="sub">
					<li><a class="" href="#">거래처</a></li>
					<li><a class="" href="#">장비종류</a></li>
					<li><a class="" href="#">산업분류</a></li>
					<li><a class="" href="#">테마</a></li>
				</ul>
			</li>
			<li>
				<a class="" href="https://bootstrapmade.com/demo/NiceAdmin/"><i class="icon_documents_alt"></i><span>데모 링크</span></a>
			</li>
		</ul>
		<!-- sidebar menu end-->
	</div>
</aside>
<!-- javascripts -->
<script src="js/jquery.js"></script>
<script src="js/jquery-ui-1.10.4.min.js"></script>
<script src="js/jquery-1.8.3.min.js"></script>
<script type="text/javascript" src="js/jquery-ui-1.9.2.custom.min.js"></script>
<!-- bootstrap -->
<script src="js/bootstrap.min.js"></script>
<!-- nice scroll -->
<script src="js/jquery.scrollTo.min.js"></script>
<script src="js/jquery.nicescroll.js" type="text/javascript"></script>

<!--custome script for all page-->
<script src="js/scripts.js"></script>

