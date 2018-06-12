<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<header class="header dark-bg">
	<div class="toggle-nav">
		<div class="icon-reorder tooltips" data-original-title="Toggle Navigation" data-placement="bottom">
			<i class="icon_menu"></i>
		</div>
	</div>
	<!--logo start-->
	<a href="${pageContext.request.contextPath}/" class="logo">Smart<span class="lite">Farm</span></a>
	<!--logo end-->
	<div class="nav search-row" id="top_menu">
		<!--  search form start -->
		<ul class="nav top-menu">
			<li>
				<form class="navbar-form">
					<input class="form-control" placeholder="Search" type="text">
				</form>
			</li>
		</ul>
		<!--  search form end -->
	</div>
	<div class="top-nav notification-row">
		<!-- user login dropdown start-->
		<ul class="nav pull-right top-menu">
			<li class="dropdown">
				<c:if test="${empty loginMember}">
					<span class="username"><a class="btn btn-default btn-sm" href="${pageContext.request.contextPath}/login">로그인</a></span>
				</c:if>
				<c:if test="${!empty loginMember}">
					<a data-toggle="dropdown" class="dropdown-toggle" href="#">
						<c:if test="${loginMember.level eq 'farm'}">
							<span class="username">농가 ${loginMember.id}님 환영합니다</span><b class="caret"></b>
						</c:if>
						<c:if test="${loginMember.level eq 'company'}">
							<span class="username">업체 ${loginMember.id}님 환영합니다</span><b class="caret"></b>
						</c:if>
						<c:if test="${loginMember.level eq 'agency'}">
							<span class="username">관리기관 ${loginMember.id}님 환영합니다</span><b class="caret"></b>
						</c:if>
					</a>
					<ul class="dropdown-menu extended logout">
						<c:if test="${loginMember.level eq 'farm'}">
							<li class="eborder-top">
								<a href="${pageContext.request.contextPath}/oneFarmMember?fMemberId=${loginMember.id}"><i class="icon_profile"></i>나의 정보</a>
							</li>
							<li>
								<a href="${pageContext.request.contextPath}/"><i class="icon_desktop"></i>나의 농가 정보</a>
							</li>
						</c:if>
						<c:if test="${loginMember.level eq 'company'}">
							<li class="eborder-top">
								<a href="#"><i class="icon_profile"></i>나의 정보</a>
							</li>
							<li>
								<a href="#"><i class="icon_desktop"></i>나의 업체 정보</a>
							</li>
						</c:if>
						<c:if test="${loginMember.level eq 'agency'}">
							<li class="eborder-top">
								<a href="${pageContext.request.contextPath}/oneAgencyMember?aMemberId=${loginMember.id}&aName=${loginMember.corpName}"><i class="icon_profile"></i>나의 정보</a>
							</li>
							<li>
								<a href="${pageContext.request.contextPath}/oneAgency?aName=${loginMember.corpName}"><i class="icon_desktop"></i>나의 관리기관 정보</a>
							</li>
							<li>
								<a href="#"><i class="fa fa-list-alt"></i>카테고리 관리</a>
							</li>
						</c:if>
						<li>
							<a href="${pageContext.request.contextPath}/logout"><i class="icon_key_alt"></i>로그아웃</a>
						</li>
					</ul>
				</c:if>
			</li>
		</ul>
		<!-- user login dropdown end -->
	</div>
</header>
