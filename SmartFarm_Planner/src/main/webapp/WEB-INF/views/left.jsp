<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<aside>
	<div id="sidebar" class="nav-collapse ">
		<!-- sidebar menu start-->
		<ul class="sidebar-menu">
			<li class="active">
				<a class="" href="${pageContext.request.contextPath}/home"><i class="icon_house_alt"></i><span>홈</span></a>
			</li>
			<li class="active">
				<a class="" href="${pageContext.request.contextPath}/"><i class="icon_document_alt"></i><span>포트폴리오 가기</span></a>
			</li>
			<c:if test="${empty loginMember}">
				<li class="sub-menu">
					<a href="javascript:;" class=""><i class="icon_profile"></i><span>회원가입</span><span class="menu-arrow arrow_carrot-right"></span></a>
					<ul class="sub">					
						<li><a class="" href="${pageContext.request.contextPath}/addFarmMember">농가</a></li>
						<li><a class="" href="${pageContext.request.contextPath}/addCompanyMember">업체</a></li>
						<li><a class="" href="${pageContext.request.contextPath}/addAgencyMember">관리기관</a></li>					
					</ul>
				</li>
				<li class="sub-menu">
					<a class="" href="${pageContext.request.contextPath}/login"><i class="icon_key_alt"></i><span>로그인</span></a>				
				</li>
			</c:if>	
			<li class="sub-menu">
				<a href="javascript:;" class=""><i class="icon_table"></i><span>표준 데이터</span><span class="menu-arrow arrow_carrot-right"></span></a>
				<ul class="sub">					
					<li><a class="" href="${pageContext.request.contextPath}/nongsaroApi?number=1">품종정보</a></li>
					<li><a class="" href="${pageContext.request.contextPath}/nongsaroApi?number=2">품목별관리메뉴얼</a></li>
					<li><a class="" href="${pageContext.request.contextPath}/nongsaroApi?number=3">작목별 농업기술정보</a></li>
					<li><a class="" href="${pageContext.request.contextPath}/nongsaroApi?number=4">현장기술지원</a></li>
					<li><a class="" href="${pageContext.request.contextPath}/nongsaroApi?number=5">농축산물 소득정보</a></li>					
				</ul>
			</li>
			<li class="sub-menu">
				<a href="javascript:;" class=""><i class="fa fa-cubes"></i><span>기업별 검색</span><span class="menu-arrow arrow_carrot-right"></span></a>
				<ul class="sub">					
					<li><a class="" href="${pageContext.request.contextPath}/listFarm">농가 리스트</a></li>					
					<li><a class="" href="${pageContext.request.contextPath}/listCompany">업체 리스트</a></li>						
					<li><a class="" href="${pageContext.request.contextPath}/listAgency">관리기관 리스트</a></li>
				</ul>
			</li>
			<li class="sub-menu">
				<a href="javascript:;" class=""><i class="fa fa-cubes"></i><span>대여장비</span><span class="menu-arrow arrow_carrot-right"></span></a>
				<ul class="sub">					
					<li><a class="" href="${pageContext.request.contextPath}/listCompanyRentEquip">대여장비 리스트</a></li>	
					<c:if test="${loginMember.level eq 'company'}">				
						<li><a class="" href="${pageContext.request.contextPath}/addCompanyRentEquip">my 대여장비 등록</a></li>
					</c:if>
				</ul>
			</li>
		<c:if test="${loginMember.level eq 'farm'|| loginMember.level eq 'agency'}">		
			<li class="sub-menu">
				<a href="javascript:;" class=""><i class="icon_genius"></i><span>카테고리 관리</span><span class="menu-arrow arrow_carrot-right"></span></a>
				<ul class="sub">	
					<c:if test="${loginMember.level eq 'farm'}">				
						<li><a class="" href="${pageContext.request.contextPath}/listCategoryEtcSpendPay">기타비용 카테고리</a></li>
					</c:if>									
					<c:if test="${loginMember.level eq 'agency'}">
						<li><a class="" href="${pageContext.request.contextPath}/listCategoryDeal">거래처</a></li>						
						<li><a class="" href="${pageContext.request.contextPath}/listCategoryEquip">장비종류</a></li>						
						<li><a class="" href="${pageContext.request.contextPath}/listIndustry">산업분류</a></li>
						<li><a class="" href="${pageContext.request.contextPath}/listItem">품목분류</a></li>
						<li><a class="" href="${pageContext.request.contextPath}/listTheme">테마 카테고리</a></li>
						<li><a class="" href="${pageContext.request.contextPath}/listCategoryEtcSpendPay">기타비용 카테고리</a></li>
						<li><a class="" href="${pageContext.request.contextPath}/listCompanyRentEquip">대여장비</a></li>
						<li><a class="" href="${pageContext.request.contextPath}/listTitle">계획명</a></li>
					</c:if>
				</ul>
			</li>
		</c:if>		
			<li class="sub-menu">
				<a href="javascript:;" class=""><i class="icon_documents_alt"></i><span>계획서</span><span class="menu-arrow arrow_carrot-rignt"></span></a>
				<ul class="sub">
					<c:if test="${loginMember.level eq 'farm'}">
						<li><a class="" href="${pageContext.request.contextPath}/addTitle">My 계획명 등록</a></li>
						<li><a class="" href="${pageContext.request.contextPath}/addPlanner">My 계획서 등록</a></li>
						<li><a class="" href="${pageContext.request.contextPath}/listMyPlanner?fNumber=${loginMember.corpNumber}">My 계획서 리스트</a></li>
					</c:if>
					<li><a class="" href="${pageContext.request.contextPath}/listPlanner">전체 농가 계획서</a></li>
				</ul>
			</li>
		<c:if test="${loginMember.level eq 'farm' || loginMember.level eq 'agency'}">
			<li class="sub-menu">
				<a href="javascript:;" class=""><i class="icon_desktop"></i><span>실행결과</span><span class="menu-arrow arrow_carrot-right"></span></a>
				<ul class="sub">
					<c:if test="${loginMember.level eq 'farm'}">
						<li><a class="" href="${pageContext.request.contextPath}/choicePlanner">My 실행결과 등록</a></li>
						<li><a class="" href="${pageContext.request.contextPath}/listMyActResultList">My 실행결과 리스트</a></li>
					</c:if>
					<li><a class="" href="${pageContext.request.contextPath}/listActResultList">전체 농가 실행결과 리스트</a></li>
				</ul>
			</li>
			<li>
				<a class="" href="#"><i class="icon_piechart"></i><span>비교·분석</span></a>
			</li>
		</c:if>			
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

