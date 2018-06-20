<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<title>PortFolio</title>			
	<jsp:include page="/WEB-INF/views/css.jsp"></jsp:include>
	<style type="text/css">
		.wrapper {
			position:absolute;
			left:50%;
		    transform: translate(-50%);
		}
	</style>
</head>
<body >
	<!--header start-->
	<header class="header dark-bg">		
	  	<!--logo start-->
		<a href="#" class="logo">Port <span class="lite">Folio</span></a>
		<!--logo end-->
	</header>
	<!--main content start-->
	<section class="wrapper" style="width: 80%">
        <div class="row">
          <div class="col-lg-12">
            <div class="page-header" style="font-size: 40px" style="height: 40px; width: 40px">
            
            <span class="lite">유국화 </span><i class="fa fa-user-md"></i><span style="font-size: 20px">Web Developer</span></div>           
          </div>
        </div>
        <div class="row">
          <!-- profile-widget -->
          <div class="col-lg-12" style="padding: 0 0 0 0">
            <div class="profile-widget profile-widget-info">
              <div class="panel-body">
                <div class="col-lg-2 col-sm-2" style="height: 153px">
                  <div class="follow-ava" style="height: 100%; width: 120px">
                    <img src="img/yukukhwa-profile.jpg" alt="" style="height: 100%; width: 120px">
                  </div>
                </div>
                <div class="col-lg-4 col-sm-4 follow-info">
                  <p>안녕하세요. 응용 SW/웹 개발을 공부하고 있습니다.</p>
                  <p><a href="http://blog.daum.net/cjsghkz" style="text-decoration: none; color: white" >blog.daum.net/cjsghkz</a>
                  <p><a href="mailto:cjsghkz@naver.com" style="text-decoration: none; color: white">cjsghkz@naver.com</a></p>
				<h5>
                  <span><i class="icon_calendar"></i>13.06.18</span>
                  <span><i class="icon_pin_alt"></i>Sorth Korea</span>
             	</h5>
                </div>
                <div class="col-lg-2 col-sm-6 follow-info weather-category">
                <a href="/team27d" style="color: white">
                  <ul>                  
                    <li class="active" style="font-size: 20px">
                      <i class="fa fa-comments fa-2x"> </i><br> go JSP
                    </li>                    
                  </ul>
                  </a>
                </div>
                <div class="col-lg-2 col-sm-6 follow-info weather-category">
                <a href="/mall4" style="color: white">
                  <ul>                  
                    <li class="active" style="font-size: 20px">
                      <i class="fa fa-bell fa-2x"> </i><br> go MVC1
                    </li>
				
                  </ul>
                  </a>	
                </div>
                <div class="col-lg-2 col-sm-6 follow-info weather-category">
                  <a href="${pageContext.request.contextPath}/home"  style="color: white">
                  <ul>                  
                    <li class="active" style="font-size: 20px">
                      <i class="fa fa-tachometer fa-2x"> </i><br> go MVC2
                   </li>					
                  </ul>
                  </a>
                </div>
              </div>
            </div>
          </div>
          <!-- profile-widget end-->
          <!-- page start-->
        <div class="row">
          <div class="col-lg-12">
            <section class="panel">
              <header class="panel-heading tab-bg-info" style="padding: 0 0 0 0">
                <ul class="nav nav-tabs">
                  <li class="active">
                    <a data-toggle="tab" href="#Team">
                                          <i class="icon-home"></i>
                                          Team : SPAM
                                      </a>
                  </li>
                  <li>
                    <a data-toggle="tab" href="#Contact">
                                          <i class="icon-user"></i>
                                          Contact
                                      </a>
                  </li>
                  <li class="">
                    <a data-toggle="tab" href="#Project1">
                                          <i class="icon-envelope"></i>
                                          Project : JSP
                                      </a>
                  </li>
                  <li class="">
                    <a data-toggle="tab" href="#Project2">
                                          <i class="icon-envelope"></i>
                                          Project : MVC1
                                      </a>
                  </li>
                  <li class="">
                    <a data-toggle="tab" href="#Project3">
                                          <i class="icon-envelope"></i>
                                          Project : MVC2
                                      </a>
                  </li>
                  
                </ul>
              </header>
              <div class="panel-body">
                <div class="tab-content">
                	<!-- Team -->
                  <div id="Team" class="tab-pane active">
                    <div class="profile-activity">
                    <div class="bio-graph-heading">
                		    <p>안녕하세요. 팀 SAPM입니다.</p>
                      </div>
                      <div class="act-time">
                        <div class="activity-body act-in">
                          <span class="arrow"></span>
                          <div class="text">
                            <a href="#" class="activity-img"><img class="avatar" src="img/bae.jpg" alt=""></a>
                            <p class="attribution"><a href="http://cjsghka.cafe24.com/">배건혜</a> 15th June 1990</p>
                            <p>기능구현, 팀원간 상세일정 조정, API 승인을 위한 활동,  UI 구성, 오픈API 활용</p>                                                        
                          </div>                          
                        </div>
                      </div>
                      <div class="act-time">
                        <div class="activity-body act-in">
                          <span class="arrow"></span>
                          <div class="text">
                            <a href="#" class="activity-img"><img class="avatar" src="img/naseongsu.jpg" alt=""></a>
                            <p class="attribution"><a href="http://nss27.cafe24.com/">나성수</a> 14th Octmber 1997</p>
                            <p>기능구현, 상세기능구현 디렉팅, UI 구성, 오픈API 활용</p>
                          </div>
                        </div>
                      </div>  
                      <div class="act-time">
                        <div class="activity-body act-in">
                          <span class="arrow"></span>
                          <div class="text">
                            <a href="#" class="activity-img"><img class="avatar" src="img/kimjaehee.jpg" alt=""></a>
                            <p class="attribution"><a href="http://kjh121130.cafe24.com/">김재희</a> 30th Desember 1994</p>
                            <p>기능구현, 자료조사 사전준비, 템플릿 조사 및 디자인 수정, UI 구성, 오픈API 활용</p>
                          </div>
                        </div>
                      </div> 
                      <div class="act-time">
                        <div class="activity-body act-in">
                          <span class="arrow"></span>
                          <div class="text">
                            <a href="#" class="activity-img"><img class="avatar" src="img/kks.jpg" alt=""></a>
                            <p class="attribution"><a href="http://cjsghka.cafe24.com/">김기성</a> 23th Nomember 1990</p>
                            <p>기능구현, 템플릿 조사 및 디자인 수정, 전체 문서 오타 수정,  UI 구성, 오픈API 활용</p>
                          </div>
                        </div>
                      </div> 
                      <div class="act-time">
                        <div class="activity-body act-in">
                          <span class="arrow"></span>
                          <div class="text">
                            <a href="#" class="activity-img"><img class="avatar" src="img/yukukhwa.jpg" alt=""></a>
                            <p class="attribution"><a href="http://cjsghka.cafe24.com/">유국화</a> 6th Octmber 1991</p>
                            <p>기능구현, 개발문서 업데이트 및 프로젝트 일정 관리, 의견수렴 및 진행방향 결정,  UI 구성, 오픈API 활용</p>
                          </div>
                        </div>
                      </div> 
                      
                      
                      </div>
                      
                  </div>
                  
                  <!-- profile -->
                  <div id="Contact" class="tab-pane">
                    <section class="panel">  
                    <div class="col-lg-6">
				            <div class="recent">
				              <h3>Get in touch with us</h3>
				            </div>
				            <div class="">
								<p>웹, 어플 제품SW 개발자양성-응용SW 및 DB엔지니어링 융합- <br>훈련과정 수료 (2017.12.28 ~ 2018.07.09)</p>
								<p>훈련기관 : 한국스마트정보교육원, <a href="http://ksmart.or.kr/">http://ksmart.or.kr/</a> </p>
								<p>훈련목표 : NCS 직종 분류 중 정보통신-정보기술-정보기술개발 세분류 직종에서 응용SW엔지니어링을 중심으로 DB엔지니어링을 활용하여 웹, 어플 제품 SW개발자를 양성</p>
								
				             
				            </div>
				          </div>                    
                      <div class="panel-body bio-graph-info">
                       <br><br>
                        <div class="row">                       		
			              <div class="bio-row">
                         	
                           <p><span>Address </span>: 대한민국 전라북도 전주시 덕진구 </p>
                          </div>
                          <div class="bio-row">
                          	
                            <p><span>Email </span>: cjsghkz@naver.com</p>
                          </div>
                          <div class="bio-row">
                          	
                            <p><span>Kakao ID </span>: cjsghka</p>
                          </div>
                          <div class="bio-row">
                          	
                            <p><span>First Name </span>: 유, Yu </p>
                          </div>
                          <div class="bio-row">
                            <p><span>Last Name </span>: 국화, kukhwa</p>
                          </div>
                          <div class="bio-row">
                            <p><span>Birthday</span>: 6 October 1991</p>
                          </div>
                          <div class="bio-row">
                            <p><span>Country </span>: Sorth Korea</p>
                          </div>
                          <div class="bio-row">
                            <p><span>Occupation </span>: Web developer</p>
                          </div>                          
                        </div>
                      </div>
                    </section>
                    <section>
                      <div class="row">
                      </div>
                    </section>
                  </div>
                  
                  <!-- Project : JSP -->
                  <div id="Project1" class="tab-pane">
                    <section class="panel">
                      <div class="panel-body bio-graph-info">
                        <h3>프로젝트 주제 : </h3>
                        <p>프로젝트 목적 : </p>
                        <p>프로젝트 기대효과 : </p>
                      	<p>프로젝트 개발환경 : </p>

                      </div>
                    </section>
                  </div>
                  
                  <!-- Project : MVC1 -->
                  <div id="Project2" class="tab-pane">
                    <section class="panel">
                      <div class="panel-body bio-graph-info">
                        <h3>프로젝트 주제 : </h3>
                        <p>프로젝트 목적 : </p>
                        <p>프로젝트 기대효과 : </p>
                      	<p>프로젝트 개발환경 : </p>

                      </div>
                    </section>
                  </div>
                  
                  <!-- Project : MVC2 -->
                  <div id="Project3" class="tab-pane">
                    <section class="panel">
                      <div class="panel-body bio-graph-info">
                      	<h3>프로젝트 주제 : </h3>
                        <p>프로젝트 목적 : </p>
                        <p>프로젝트 기대효과 : </p>
                      	<p>프로젝트 개발환경 : </p>
                      </div>
                    </section>
                  </div>
                  
                </div>
              </div>
            </section>
          </div>
        </div>

        <!-- page end-->
        </div>        
	</section>
    <!--main content end-->			
		
	<!-- javascripts -->
	<script src="js/jquery.js"></script>
	<script src="js/bootstrap.min.js"></script>
	<!-- nice scroll -->
	<script src="js/jquery.scrollTo.min.js"></script>
	<script src="js/jquery.nicescroll.js" type="text/javascript"></script>
	<!-- jquery knob -->
	<script src="assets/jquery-knob/js/jquery.knob.js"></script>
	<!--custome script for all page-->
	<script src="js/scripts.js"></script>	
	<script>
		//knob
		$(".knob").knob();
	</script>
</body>
</html>