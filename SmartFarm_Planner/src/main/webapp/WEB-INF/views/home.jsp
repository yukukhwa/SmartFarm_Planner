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

        <div class="row" style="height: 420px;">
          <div class="col-lg-12 col-md-12">
				<!-- 여기에 슬라이드 -->
            	<div id="c-slide" class="carousel slide auto panel-body" style="height: 100%;">
                <ol class="carousel-indicators out">
                  <li class="active" data-slide-to="0" data-target="#c-slide"></li>
                  <li class="" data-slide-to="1" data-target="#c-slide"></li>
                  <li class="" data-slide-to="2" data-target="#c-slide"></li>
                </ol>
                
                <div class="carousel-inner" style="width: 100%; height: 100%;">
                  <div class="item text-center active" > 
                 	 <div style="height: 150px;">                 	
	                 	<h3>step1. 농가(대표or직원) 가입</h3>
	                 	<h3>step2. 농가로 로그인</h3>
	                    <small class="">Based on Bootstrap 3</small> 
	                   </div>            
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
                  <div class="item text-center">
                  <div style="height: 150px;">
                  	<h3>Massive UI Elements</h3>
                    <small class="">Fully Responsive</small>
                    </div>
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
                  <div class="item text-center">
                  <div style="height: 150px;">
                  	<h3>Well Documentation</h3>
                    <small class="">Easy to Use</small>
                    </div>
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
                <a data-slide="prev" href="#c-slide" class="left carousel-control">
                                  <i class="arrow_carrot-left_alt2"></i>
                              </a>
                <a data-slide="next" href="#c-slide" class="right carousel-control">
                                  <i class="arrow_carrot-right_alt2"></i>
                              </a>
              </div>
          </div>
    	</div>

        <!-- Today status end -->
        <div class="row">

          <div class="col-lg-9 col-md-12" style="height: 420px; margin-bottom: 20px">
            <div class="panel panel-default">
              <div class="panel-heading">
                <h2><i class="fa fa-flag-o red"></i><strong>대여장비 현황</strong></h2>
                <div class="panel-actions">
                  <a href="${pageContext.request.contextPath }/home" class="btn-setting"><i class="fa fa-rotate-right"></i></a>
                  <a href="${pageContext.request.contextPath }/home" class="btn-minimize"><i class="fa fa-chevron-up"></i></a>
                  <a href="${pageContext.request.contextPath }/home" class="btn-close"><i class="fa fa-times"></i></a>
                </div>
              </div>
              <div class="panel-body" style="height: 385px; padding-top: 0">
                <table class="table bootstrap-datatable countries">
                  <thead>
                    <tr>
                      <th></th>
                      <th>업체</th>
                      <th>대여장비 모델</th>
                      <th>가격</th>
                      <th>선호도</th>
                    </tr>
                  </thead>
                  <tbody>
                    <tr>
                      <td><img src="img/Germany.png" style="height:18px; margin-top:-2px;"></td>
                      <td>Germany</td>
                      <td>2563</td>
                      <td>1025</td>
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
                      <td><img src="img/India.png" style="height:18px; margin-top:-2px;"></td>
                      <td>India</td>
                      <td>3652</td>
                      <td>2563</td>
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
                      <td><img src="img/Spain.png" style="height:18px; margin-top:-2px;"></td>
                      <td>Spain</td>
                      <td>562</td>
                      <td>452</td>
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
                      <td><img src="img/India.png" style="height:18px; margin-top:-2px;"></td>
                      <td>Russia</td>
                      <td>1258</td>
                      <td>958</td>
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
                      <td><img src="img/Spain.png" style="height:18px; margin-top:-2px;"></td>
                      <td>USA</td>
                      <td>4856</td>
                      <td>3621</td>
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
                      <td><img src="img/Germany.png" style="height:18px; margin-top:-2px;"></td>
                      <td>Brazil</td>
                      <td>265</td>
                      <td>102</td>
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
          <div class="col-md-3">
            <!-- List starts -->
            <ul class="today-datas">
              <!-- List #1 -->
              <li>
                <!-- Graph -->
                <div><span id="todayspark1" class="spark"></span></div>
                <!-- Text -->
                <div class="datas-text">11,500 visitors/day</div>
              </li>
              <li>
                <div><span id="todayspark2" class="spark"></span></div>
                <div class="datas-text">15,000 Pageviews</div>
              </li>
              <li>
                <div><span id="todayspark3" class="spark"></span></div>
                <div class="datas-text">30.55% Bounce Rate</div>
              </li>
              <li>
                <div><span id="todayspark4" class="spark"></span></div>
                <div class="datas-text">$16,00 Revenue/Day</div>
              </li>
              <li>
                <div><span id="todayspark5" class="spark"></span></div>
                <div class="datas-text">12,000000 visitors every Month</div>
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
