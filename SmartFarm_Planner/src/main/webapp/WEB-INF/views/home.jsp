<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<jsp:include page="/WEB-INF/views/css.jsp"></jsp:include>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>home.jsp</title>
</head>
<body>
	<!-- container section start -->
	<section id="container" class="">
		<jsp:include page="/WEB-INF/views/top.jsp"></jsp:include>
    <!--sidebar start-->
    	<jsp:include page="/WEB-INF/views/left.jsp"></jsp:include>
    <!--sidebar end-->

    <!--main content start-->
    <section id="main-content">
      <section class="wrapper">
        <!--overview start-->
        <div class="row">
          <div class="col-lg-12">
            <ol class="breadcrumb">
              <li><i class="fa fa-home"></i><a href="${pageContext.request.contextPath}/home">Home</a></li>
              <li><i class="fa fa-cubes"></i><a href="${pageContext.request.contextPath}/listCategoryDeal">거래처</a></li>
              <li><i class="icon_genius"></i><a href="${pageContext.request.contextPath}/listCategoryEquip">농기계·장비</a></li>
              <li><i class="icon_table"></i><a href="${pageContext.request.contextPath}/listIndustry">산업별</a></li>
              <li><i class="fa fa-flag-o red"></i><a href="${pageContext.request.contextPath}/listTheme">테마별</a></li>
             </ol>
          </div>
        </div>

		<div class="row">
			<div class="col-lg-12">
				<section class="panel panel-default">
					<div class="panel-heading">
						<strong>▼ 스마트팜 플래너 - 이렇게 이용하세요! (슬라이드를 넘기면서 봐주세요.)</strong>
					</div>
				<!-- 슬라이드 start -->
            	<div id="c-slide" class="carousel slide auto panel-body">
	                <ol class="carousel-indicators out">
	                  <li class="active" data-slide-to="0" data-target="#c-slide"></li>
	                  <li class="" data-slide-to="1" data-target="#c-slide"></li>
	                  <li class="" data-slide-to="2" data-target="#c-slide"></li>
	                </ol>                
						<div class="carousel-inner">
							<div class="item active" >
								<h1>로그인하지 않을 시(비회원일 시)</h1>
								<ol>
									<li>왼쪽 메뉴바에서 회원가입을 할 수 있습니다.</li>								
									<li>농가/업체/관리기관 처음 등록시 같이 입력되는 정보가 대표자입니다.</li>
									<li>농사로 API 데이터 검색을 제공합니다.</li>
									<li>등록되어있는 농가/업체/관리기관 리스트를 제공합니다.</li>
									<li>공개에 동의한 농가의 계획서에 한해서 리스트를 제공합니다.</li>
								</ol>
								<h1>농가 소속으로 로그인 시</h1>
								<ol>
									<li>로그인 > 아이디, 비밀번호 입력되있으니 클릭만해주세요!</li>
									<li>계획서/실행결과를 등록하실 수 있습니다.</li>
									<li>카테고리-기타비용 카테고리-를 관리하실 수 있습니다.</li>														
									<li>계획서  > my 계획서 등록</li>
									<li>실행결과  > my 실행결과 등록</li>
									<li>비교분석  > my 비교분석 리스트</li>						
								</ol>
								<p></p>
			                 	<div class="col-lg-12 text-center">
									<span>
										<img src="img/slide1.jpg" style="width: 33%; height: auto;">
									</span>
									<span>
										<img src="img/slide3.jpg" style="width: 33%; height: auto;">
									</span>
									<span>
										<img src="img/slide2.jpg" style="width: 33%; height: auto;">
									</span>
								</div>
							</div>
						
					
						
							<div class="item" >
								<h1>로그인하지 않을 시(비회원일 시)</h1>
								<ol>
									<li>왼쪽 메뉴바에서 회원가입을 할 수 있습니다.</li>								
									<li>농가/업체/관리기관 처음 등록시 같이 입력되는 정보가 대표자입니다.</li>
									<li>농사로 API 데이터 검색을 제공합니다.</li>
									<li>등록되어있는 농가/업체/관리기관 리스트를 제공합니다.</li>
									<li>공개에 동의한 농가의 계획서에 한해서 리스트를 제공합니다.</li>
								</ol>
								<h1>업체 소속으로 로그인 시</h1>
								<ol>
									<li>로그인 > 아이디, 비밀번호 입력되있으니 클릭만해주세요!</li>
									<li>대여장비를 등록하실 수 있습니다.</li>															
								</ol>
								<p></p>
			                 	<div class="col-lg-12 text-center">
									<span>
										<img src="img/compa1.jpg" style="width: 33%; height: auto;">     
									</span>
									<span>
										<img src="img/compa2.jpg" style="width: 33%; height: auto;"> 
									</span>
									<span>
										<img src="img/compa3.jpg" style="width: 33%; height: auto;">    
									</span>
								</div>
							</div>
						
					 
						
							<div class="item" >
								<h1>로그인하지 않을 시(비회원일 시)</h1>
								<ol>
									<li>왼쪽 메뉴바에서 회원가입을 할 수 있습니다.</li>								
									<li>농가/업체/관리기관 처음 등록시 같이 입력되는 정보가 대표자입니다.</li>
									<li>농사로 API 데이터 검색을 제공합니다.</li>
									<li>등록되어있는 농가/업체/관리기관 리스트를 제공합니다.</li>
									<li>공개에 동의한 농가의 계획서에 한해서 리스트를 제공합니다.</li>
								</ol>
								<h1>관리기관 소속으로 로그인 시</h1>
								<ol>
									<li>로그인 > 아이디, 비밀번호 입력되있으니 클릭만해주세요!</li>									
									<li>카테고리를 관리하실 수 있습니다.</li>	
									<li>가능한 카테고리 : 거래처 / 장비종류 / 산업분류 / 품목분류 / 테마 / 기타비용 / 대여장비 / 계획명</li>																						
									<li>카테고리 중 대여장비 / 계획명은 관리자 권한으로 삭제만 가능합니다.</li>	
									<li>계획서/실행결과를 삭제만 하실 수 있습니다.</li>	
								</ol>
								<p></p>
			                 	<div class="col-lg-12 text-center">
									<span>
										<img src="img/agen1.jpg" style="width: 33%; height: auto;">      
									</span>
									<span>
										<img src="img/agen2.jpg" style="width: 33%; height: auto;"> 
									</span>
									<span>
										<img src="img/agen3.jpg" style="width: 33%; height: auto;">    
									</span>
								</div>
							</div>
                		</div>
                	
		                <a data-slide="prev" href="#c-slide" class="left carousel-control">
		                                  <i class="arrow_carrot-left_alt2"></i>
		                              </a>
		                <a data-slide="next" href="#c-slide" class="right carousel-control">
                                  <i class="arrow_carrot-right_alt2"></i>
                              </a>
					</div>
				</section>
			</div>
		</div>
		<!-- 슬라이드 end -->

        <!-- Today status end -->
        <div class="row">

          <div class="col-lg-9 col-md-9">
            <div class="panel panel-default">
              <div class="panel-heading">
                <h2><i class="fa fa-flag-o red"></i><strong>대여장비 현황</strong></h2>
                <div class="panel-actions">
                  <a href="${pageContext.request.contextPath }/home" class="btn-setting"><i class="fa fa-rotate-right"></i></a>
                  <a href="${pageContext.request.contextPath }/home" class="btn-minimize"><i class="fa fa-chevron-up"></i></a>
                  <a href="${pageContext.request.contextPath }/home" class="btn-close"><i class="fa fa-times"></i></a>
                </div>
              </div>
              <div class="panel-body">
                <table class="table bootstrap-datatable countries">
                  <thead>
                    <tr>
                      <th>업체</th>
                      <th>대여장비 모델</th>
                      <th>가격</th>
                      <th>선호도</th>
                    </tr>
                  </thead>
                  <tbody>
                    <tr>
                      <td>전주농장비</td>
                      <td>ND10DEH/DT10DE</td>
                      <td>1,025,000</td>
                      <td>
                        <div class="progress thin">
                          <div class="progress-bar progress-bar-danger" role="progressbar" aria-valuenow="73" aria-valuemin="0" aria-valuemax="100" style="width: 73%">
                          </div>
                          <div class="progress-bar progress-bar-warning" role="progressbar" aria-valuenow="27" aria-valuemin="0" aria-valuemax="100" style="width: 27%">
                          </div>
                        </div>
                        <span class="sr-only">73%</span>
                      </td>
                    </tr>
                    <tr>
                      <td>전북농장비임대사업소</td>
                      <td>BK-35</td>
                      <td>2,563,000</td>
                      <td>
                        <div class="progress thin">
                          <div class="progress-bar progress-bar-danger" role="progressbar" aria-valuenow="57" aria-valuemin="0" aria-valuemax="100" style="width: 57%">
                          </div>
                          <div class="progress-bar progress-bar-warning" role="progressbar" aria-valuenow="43" aria-valuemin="0" aria-valuemax="100" style="width: 43%">
                          </div>
                        </div>
                        <span class="sr-only">57%</span>
                      </td>
                    </tr>
                    <tr>
                      <td>튼튼장비</td>
                      <td>EP2921</td>
                      <td>452,000</td>
                      <td>
                        <div class="progress thin">
                          <div class="progress-bar progress-bar-danger" role="progressbar" aria-valuenow="93" aria-valuemin="0" aria-valuemax="100" style="width: 93%">
                          </div>
                          <div class="progress-bar progress-bar-warning" role="progressbar" aria-valuenow="7" aria-valuemin="0" aria-valuemax="100" style="width: 7%">
                          </div>
                        </div>
                        <span class="sr-only">93%</span>
                      </td>
                    </tr>
                    <tr>
                      <td>여기가 제일좋아 농장비</td>
                      <td>SH-170A</td>
                      <td>958,000</td>
                      <td>
                        <div class="progress thin">
                          <div class="progress-bar progress-bar-danger" role="progressbar" aria-valuenow="20" aria-valuemin="0" aria-valuemax="100" style="width: 20%">
                          </div>
                          <div class="progress-bar progress-bar-warning" role="progressbar" aria-valuenow="80" aria-valuemin="0" aria-valuemax="100" style="width: 80%">
                          </div>
                        </div>
                        <span class="sr-only">20%</span>
                      </td>
                    </tr>
                    <tr>
                      <td>전주 농기계</td>
                      <td>SDS-A1630N</td>
                      <td>3,621,000</td>
                      <td>
                        <div class="progress thin">
                          <div class="progress-bar progress-bar-danger" role="progressbar" aria-valuenow="20" aria-valuemin="0" aria-valuemax="100" style="width: 20%">
                          </div>
                          <div class="progress-bar progress-bar-warning" role="progressbar" aria-valuenow="80" aria-valuemin="0" aria-valuemax="100" style="width: 80%">
                          </div>
                        </div>
                        <span class="sr-only">20%</span>
                      </td>
                    </tr>
                    <tr>
                      <td>배관 전문 관리점</td>
                      <td>SSP850</td>
                      <td>102,000</td>
                      <td>
                        <div class="progress thin">
                          <div class="progress-bar progress-bar-danger" role="progressbar" aria-valuenow="20" aria-valuemin="0" aria-valuemax="100" style="width: 20%">
                          </div>
                          <div class="progress-bar progress-bar-warning" role="progressbar" aria-valuenow="80" aria-valuemin="0" aria-valuemax="100" style="width: 80%">
                          </div>
                        </div>
                        <span class="sr-only">20%</span>
                      </td>
                    </tr>
                    
                    
                  </tbody>
                </table>
              </div>

            </div>

          </div>
          <div class="col-lg-3 col-md-3">
            <!-- List starts -->
            <ul class="today-datas">
              <!-- List #1 -->
              <li>
                <!-- Graph -->
                <div><span id="todayspark1" class="spark"></span></div>
                <!-- Text -->
                <div class="datas-text">11,500 방문자/일</div>
              </li>
              <li>
                <div><span id="todayspark2" class="spark"></span></div>
                <div class="datas-text">75,000명의 회원수</div>
              </li>
              <li>
                <div><span id="todayspark3" class="spark"></span></div>
                <div class="datas-text">30.55% 반송률</div>
              </li>
              <li>
                <div><span id="todayspark4" class="spark"></span></div>
                <div class="datas-text">1,600,000 수익/일</div>
              </li>
              <li>
                <div><span id="todayspark5" class="spark"></span></div>
                <div class="datas-text">월 4,000,000명의 방문자</div>
              </li>
            </ul>
          </div>
        </div>
        <!-- statics end -->
        <div class="row">
          <div class="col-md-6 portlets">
            <div class="panel panel-default">
              <div class="panel-heading">
                <h2><strong>Calendar</strong></h2>
                <div class="panel-actions">
                  <a href="#" class="wminimize"><i class="fa fa-chevron-up"></i></a>
                  <a href="#" class="wclose"><i class="fa fa-times"></i></a>
                </div>

              </div><br><br><br>
              <div class="panel-body">
                <!-- Widget content -->

                <!-- Below line produces calendar. I am using FullCalendar plugin. -->
                <div id="calendar"></div>

              </div>
            </div>

          </div>

          <div class="col-md-6 portlets">
            <div class="panel panel-default">
              <div class="panel-heading">
                <div class="pull-left">Quick Post</div>
                <div class="widget-icons pull-right">
                  <a href="#" class="wminimize"><i class="fa fa-chevron-up"></i></a>
                  <a href="#" class="wclose"><i class="fa fa-times"></i></a>
                </div>
                <div class="clearfix"></div>
              </div>
              <div class="panel-body">
                <div class="padd">

                  <div class="form quick-post">
                    <!-- Edit profile form (not working)-->
                    <form class="form-horizontal">
                      <!-- Title -->
                      <div class="form-group">
                        <label class="control-label col-lg-2" for="title">Title</label>
                        <div class="col-lg-10">
                          <input type="text" class="form-control" id="title">
                        </div>
                      </div>
                      <!-- Content -->
                      <div class="form-group">
                        <label class="control-label col-lg-2" for="content">Content</label>
                        <div class="col-lg-10">
                          <textarea class="form-control" id="content"></textarea>
                        </div>
                      </div>
                      <!-- Cateogry -->
                      <div class="form-group">
                        <label class="control-label col-lg-2">Category</label>
                        <div class="col-lg-10">
                          <select class="form-control">
                                                  <option value="">- Choose Cateogry -</option>
                                                  <option value="1">General</option>
                                                  <option value="2">News</option>
                                                  <option value="3">Media</option>
                                                  <option value="4">Funny</option>
                                                </select>
                        </div>
                      </div>
                      <!-- Tags -->
                      <div class="form-group">
                        <label class="control-label col-lg-2" for="tags">Tags</label>
                        <div class="col-lg-10">
                          <input type="text" class="form-control" id="tags">
                        </div>
                      </div>

                      <!-- Buttons -->
                      <div class="form-group">
                        <!-- Buttons -->
                        <div class="col-lg-offset-2 col-lg-9">
                          <button type="submit" class="btn btn-primary">Publish</button>
                          <button type="submit" class="btn btn-danger">Save Draft</button>
                          <button type="reset" class="btn btn-default">Reset</button>
                        </div>
                      </div>
                    </form>
                  </div>


                </div>
					<div class="widget-foot">
                  <!-- Footer goes here -->
                </div>
              </div>
            </div>

          </div>

        </div>
        <!-- project team & activity end -->

      </section>
        




        
                
      <div class="text-right">
        <div class="credits">
          <!--
            All the links in the footer should remain intact.
            You can delete the links only if you purchased the pro version.
            Licensing information: https://bootstrapmade.com/license/
            Purchase the pro version form: https://bootstrapmade.com/buy/?theme=NiceAdmin
          -->
          Designed by <a href="https://bootstrapmade.com/">BootstrapMade</a>
        </div>
      </div>
    </section>
    <!--main content end-->
  </section>
  <!-- container section start -->

  
  
  <!-- charts scripts -->
  <script src="assets/jquery-knob/js/jquery.knob.js"></script>
  <script src="js/jquery.sparkline.js" type="text/javascript"></script>
  <script src="assets/jquery-easy-pie-chart/jquery.easy-pie-chart.js"></script>
  <script src="js/owl.carousel.js"></script>
  <!-- jQuery full calendar -->
  <<script src="js/fullcalendar.min.js"></script>
    <!-- Full Google Calendar - Calendar -->
    <script src="assets/fullcalendar/fullcalendar/fullcalendar.js"></script>
    <!--script for this page only-->
    <script src="js/calendar-custom.js"></script>
    <script src="js/jquery.rateit.min.js"></script>
    <!-- custom select -->
    <script src="js/jquery.customSelect.min.js"></script>
    <script src="assets/chart-master/Chart.js"></script>
    
    <!-- custom script for this page-->
    <script src="js/sparkline-chart.js"></script>
    <script src="js/easy-pie-chart.js"></script>
    <script src="js/jquery-jvectormap-1.2.2.min.js"></script>
    <script src="js/jquery-jvectormap-world-mill-en.js"></script>
    <script src="js/xcharts.min.js"></script>
    <script src="js/jquery.autosize.min.js"></script>
    <script src="js/jquery.placeholder.min.js"></script>
    <script src="js/gdp-data.js"></script>
    <script src="js/morris.min.js"></script>
    <script src="js/sparklines.js"></script>
    <script src="js/charts.js"></script>
    <script src="js/jquery.slimscroll.min.js"></script>
    <script>
      //knob
      $(function() {
        $(".knob").knob({
          'draw': function() {
            $(this.i).val(this.cv + '%')
          }
        })
      });

      //carousel
      $(document).ready(function() {
        $("#owl-slider").owlCarousel({
          navigation: true,
          slideSpeed: 300,
          paginationSpeed: 400,
          singleItem: true

        });
      });

      //custom select box

      $(function() {
        $('select.styled').customSelect();
      });

      /* ---------- Map ---------- */
      $(function() {
        $('#map').vectorMap({
          map: 'world_mill_en',
          series: {
            regions: [{
              values: gdpData,
              scale: ['#000', '#000'],
              normalizeFunction: 'polynomial'
            }]
          },
          backgroundColor: '#eef3f7',
          onLabelShow: function(e, el, code) {
            el.html(el.html() + ' (GDP - ' + gdpData[code] + ')');
          }
        });
      });
    </script>

</body>

</html>
