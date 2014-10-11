<%@ page contentType="text/html;charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<link href="<%=request.getContextPath()%>/assets/images/favicon.png" type="image/x-icon" rel="shortcut icon"/>
<link href="<%=request.getContextPath()%>/assets/images/favicon.png" type="image/x-icon" rel="icon"/>

<script src="<%=request.getContextPath()%>/assets/js/ichart.latest.min.js"></script>
</head>

<script type="text/javascript">
$(function() {
	// 定义颜色数组
	var colors = ['#4c66a4', '#55acee', '#069', '#FFDC35', '#73CFF1', '#609700', '#d7914b', '#005eac', '#4572a7', '#f75353'
	              , '#4c66a4', '#55acee', '#069', '#FFDC35', '#73CFF1', '#609700', '#d7914b', '#005eac', '#4572a7', '#f75353'
	              , '#4c66a4', '#55acee', '#069', '#FFDC35'];
	
	var data = [
				<c:forEach items="${dataList}" var="pojo" varStatus="s">
				{name : '${pojo.requestHours}'+'点',value : ${pojo.hcount}, color : colors['${s.index}']},
				</c:forEach>
			];

	var chart = new iChart.Column2D({
		render : 'canvasZhuDiv',
		data : data,
		width : 950,
		height : 550,
		label : {
			fontsize:11,
			color : '#666666'
		},
		shadow : true,
		shadow_blur : 2,
		shadow_color : '#aaaaaa',
		shadow_offsetx : 1,
		shadow_offsety : 0,
		column_width : 62,
		sub_option : {
			listeners : {
				parseText : function(r, t) {
					return t + "次";
				}
			},
			label : {
				fontsize:11,
				fontweight:600,
				color : '#4572a7'
			},
			border : {
				width : 2,
				//radius : '5 5 0 0',//上圆角设置
				color : '#ffffff'
			}
		},
		coordinate : {
			background_color : null,
			grid_color : '#c0c0c0',
			width : 830,
			axis : {
				color : '#c0d0e0',
				width : [0, 0, 1, 0]
			},
			scale : [{
				position : 'left',
				start_scale : 0,
				end_scale : 500,
				scale_space : 100,
				scale_enable : false,
				label : {
					fontsize:11,
					color : '#666666'
				}
			}]
		}
	});
	
	chart.draw();
});
</script>
<body>
	<jsp:include page="../top.jsp" />
	
	<div class="container main-container">
		<h5 class="page-header page-target">运营分析 - 访问时报表</h5>
		
		<div class="table-responsive">
			<div style="text-align: center"><h5>每小时访问量统计 - 柱状图</h5></div>
			<div id="canvasZhuDiv"></div>
			
			<p>&nbsp;</p>
			<div class="tab-bottom-line"></div>
		</div>
	</div>
	
	<jsp:include page="../bottom.jsp" />
</body>
</html>
