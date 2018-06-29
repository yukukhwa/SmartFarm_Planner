<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<title>compare1</title>
	<jsp:include page="/WEB-INF/views/css.jsp"></jsp:include>
	<script type="text/javascript" src="https://www.gstatic.com/charts/loader.js"></script>
    <script type="text/javascript">
    var resultOut = function(){
		var resultList = ${resultList};
		var result = '회차';
		result += ',달성도';
		for(var i = 0; i<resultList.length; i++){
			result += ','+(i+1)+'차'+','+resultList[i];
        }
		result = result.split(',');
		console.log(result);
		return result;
	}
    //var resultArray = resultOut().split(',');
    
    google.charts.load('current', {'packages':['bar']});
    google.charts.setOnLoadCallback(drawChart);

	function drawChart() {
		//console.log(resultArray);
        var data = google.visualization.arrayToDataTable([
        	//result
        ]);

        var options = {
          chart: {
            title: 'Company Performance',
            subtitle: 'Sales, Expenses, and Profit: 2014-2017',
          },
          bars: 'horizontal' // Required for Material Bar Charts.
        };

        var chart = new google.charts.Bar(document.getElementById('barchart_material'));

        chart.draw(data, google.charts.Bar.convertOptions(options));
      }
    </script>
</head>
<body>
	<jsp:include page="/WEB-INF/views/top.jsp"></jsp:include>
	<jsp:include page="/WEB-INF/views/left.jsp"></jsp:include>
	<!--main content start-->
	<section id="main-content">
		<section class="wrapper">
			<div id="barchart_material" style="width: 900px; height: 500px;"></div>
		</section>
	</section>
</body>
</html>