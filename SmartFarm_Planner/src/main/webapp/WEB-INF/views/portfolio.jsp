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
                  <div class="follow-ava">
                    <img src="img/yukukhwa-profile.jpg" alt="" style="height: 100px; width: 80px">
                  </div>
                </div>
                <div class="col-lg-4 col-sm-4 follow-info">
                  <p>안녕하세요. 응용 SW/웹 개발을 공부하고 있습니다.</p>
                  <p><a href="http://blog.daum.net/cjsghkz" style="text-decoration: none; color: white" >blog.daum.net/cjsghkz</a>
                  <p><a href="mailto:cjsghkz@naver.com" style="text-decoration: none; color: white">cjsghkz@naver.com</a></p>
				<h5>
                  <span><i class="icon_calendar"></i>13.06.18</span>
                  <span><i class="icon_pin_alt"></i>North of Korea</span>
             	</h5>
                </div>
                <div class="col-lg-2 col-sm-6 follow-info weather-category">
                <a href="#" style="color: white">
                  <ul>                  
                    <li class="active" style="font-size: 20px">
                      <i class="fa fa-comments fa-2x"> </i><br> go JSP
                    </li>                    
                  </ul>
                  </a>
                </div>
                <div class="col-lg-2 col-sm-6 follow-info weather-category">
                <a href="${pageContext.request.contextPath}/PDS4" style="color: white">
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
                            <a href="#" class="activity-img"><img class="avatar" src="img/chat-avatar.jpg" alt=""></a>
                            <p class="attribution"><a href="#">Jonatanh Doe</a> at 4:25pm, 30th Octmber 2014</p>
                            <p>팀원소개1</p>
                          </div>
                        </div>
                      </div> 
                      <div class="act-time">
                        <div class="activity-body act-in">
                          <span class="arrow"></span>
                          <div class="text">
                            <a href="#" class="activity-img"><img class="avatar" src="img/chat-avatar.jpg" alt=""></a>
                            <p class="attribution"><a href="#">Jonatanh Doe</a> at 4:25pm, 30th Octmber 2014</p>
                            <p>팀원소개1</p>
                          </div>
                        </div>
                      </div> 
                      <div class="act-time">
                        <div class="activity-body act-in">
                          <span class="arrow"></span>
                          <div class="text">
                            <a href="#" class="activity-img"><img class="avatar" src="img/chat-avatar.jpg" alt=""></a>
                            <p class="attribution"><a href="#">Jonatanh Doe</a> at 4:25pm, 30th Octmber 2014</p>
                            <p>팀원소개3</p>
                          </div>
                        </div>
                      </div> 
                      <div class="act-time">
                        <div class="activity-body act-in">
                          <span class="arrow"></span>
                          <div class="text">
                            <a href="#" class="activity-img"><img class="avatar" src="img/chat-avatar.jpg" alt=""></a>
                            <p class="attribution"><a href="#">Jonatanh Doe</a> at 4:25pm, 30th Octmber 2014</p>
                            <p>팀원소개4</p>
                          </div>
                        </div>
                      </div> 
                      <div class="act-time">
                        <div class="activity-body act-in">
                          <span class="arrow"></span>
                          <div class="text">
                            <a href="#" class="activity-img"><img class="avatar" src="img/chat-avatar.jpg" alt=""></a>
                            <p class="attribution"><a href="#">Jonatanh Doe</a> at 4:25pm, 30th Octmber 2014</p>
                            <p>팀원소개5</p>
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
				              <p>Nam liber tempor cum soluta nobis eleifend option congue nihil imperdiet doming id quod mazim placerat facer possim assum. Typi non habent claritatem insitam; est usus legentis in iis qui facit eorum.</p>
				              <p>Nam liber tempor cum soluta nobis eleifend option congue nihil imperdiet doming id quod mazim placerat facer possim assum. Typi non habent claritatem insitam; est usus legentis in iis qui facit eorum.</p>
				
				              <h4>Address:</h4>Little Lonsdale St, New York<br>
				              <h4>Telephone:</h4>345 578 59 45 416</br>
				              <h4>Fax:</h4>123 456 789
				            </div>
				          </div>                    
                      <div class="panel-body bio-graph-info">
                       
                        <div class="row">
                          <div class="bio-row">
                            <p><span>First Name </span>: Jenifer </p>
                          </div>
                          <div class="bio-row">
                            <p><span>Last Name </span>: Smith</p>
                          </div>
                          <div class="bio-row">
                            <p><span>Birthday</span>: 27 August 1987</p>
                          </div>
                          <div class="bio-row">
                            <p><span>Country </span>: United</p>
                          </div>
                          <div class="bio-row">
                            <p><span>Occupation </span>: UI Designer</p>
                          </div>
                          <div class="bio-row">
                            <p><span>Email </span>:jenifer@mailname.com</p>
                          </div>
                          <div class="bio-row">
                            <p><span>Mobile </span>: (+6283) 456 789</p>
                          </div>
                          <div class="bio-row">
                            <p><span>Phone </span>: (+021) 956 789123</p>
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
                        <p>프로젝트 JSP 설명</p>

                      </div>
                    </section>
                  </div>
                  
                  <!-- Project : MVC1 -->
                  <div id="Project2" class="tab-pane">
                    <section class="panel">
                      <div class="panel-body bio-graph-info">
                        <p>프로젝트 MVC1 설명</p>

                      </div>
                    </section>
                  </div>
                  
                  <!-- Project : MVC2 -->
                  <div id="Project3" class="tab-pane">
                    <section class="panel">
                      <div class="panel-body bio-graph-info">
                        <p>프로젝트 MVC2 설명</p>

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