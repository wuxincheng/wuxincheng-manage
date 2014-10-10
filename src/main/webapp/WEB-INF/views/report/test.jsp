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
	var colors = ['#4c66a4', '#55acee', '#069', '#FFDC35', '#73CFF1', '#609700', '#d7914b', '#005eac', '#4572a7', '#f75353'];
	
	var data = [
				{name : 'X3L', value : 8, color:'#f75353' },
				{name : 'X510', value : 1, color:'#4c66a4' },
				{name : 'X520', value : 4, color:'#55acee' },
				{name : 'Y11', value : 7, color:'#069'},
				{name : 'Y13', value : 7, color:'#0449be' },
				{name : 'Y18', value : 1, color:'#FFDC35' },
				{name : 'Y20', value : 2, color:'#73CFF1' },
				{name : 'Y22', value : 6, color:'#d7914b' }
			];

	var chart = new iChart.Column2D({
		render : 'canvasZhuDiv',
		data : data,
		width : 620,
		height : 350,
		label : {
			fontsize:11,
			color : '#666666'
		},
		shadow : true,
		shadow_blur : 2,
		shadow_color : '#aaaaaa',
		shadow_offsetx : 1,
		shadow_offsety : 0,
		column_width : 40,
		sub_option : {
			listeners : {
				parseText : function(r, t) {
					return t + "台";
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
			width : 500,
			axis : {
				color : '#c0d0e0',
				width : [0, 0, 1, 0]
			},
			scale : [{
				position : 'left',
				start_scale : 0,
				end_scale : 10,
				scale_space : 1,
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
<script type="text/javascript">
$(function(){   
	// 定义颜色数组
	var colors = ['#4c66a4', '#55acee', '#069', '#FFDC35', '#73CFF1', '#609700', '#d7914b', '#005eac', '#4572a7', '#f75353'];
	
	var data = [
				{name : 'X3L',value : 22, color : '#4c66a4'},
				{name : 'X510',value : 2, color : '#55acee'},
				{name : 'X520',value : 11, color : '#069'},
				{name : 'Y11',value : 19, color : '#FFDC35'},
				{name : 'Y13',value : 19, color : '#73CFF1'},
				{name : 'Y18',value : 2, color : '#609700'},
				{name : 'Y20',value : 5, color : '#d7914b'},
				{name : 'Y22',value : 17, color : '#005eac'}
        	];
	
	var chart = new iChart.Pie3D({
		render : 'canvasBingDiv',
		padding:'2 10',
		width : 750,
		height : 400,
		data:data,
		shadow:true,
		shadow_color:'#ffffff',
		shadow_blur:8,
		background_color : '#ffffff',
		gradient:true,
		color_factor:0.28,
		showpercent:true,
		decimalsnum:2,
		legend:{
			enable:true,
			padding:30,
			color:'#4F4F4F',
			border:{
				width:[0,0,0,2],
				color:'#9D9D9D'
			},
			background_color : null,
		},
		sub_option:{
			offsetx:-40,
			border:{
				enable:false
			},
			label : {
				background_color:'#fefefe',
				sign:false,//设置禁用label的小图标
				line_height:15,
				padding:4,
				border:{
					enable:true,
					radius : 4,//圆角设置
					color:'#ffffff'
				},
				fontsize:11,
				fontweight:600,
				color : '#444444'
			}
		}
	});
	
	chart.bound(0);
});
</script>
<script type="text/javascript">
$(function() {
	// 定义颜色数组
	var colors = ['#4c66a4', '#55acee', '#069', '#FFDC35', '#73CFF1', '#609700', '#d7914b', '#005eac', '#4572a7', '#f75353'];
	
	var data = [
				{name : 'X3L', value : 30, color:'#f75353' },
				{name : 'X520', value : 6, color:'#4c66a4' },
				{name : 'Y11', value : 14, color:'#55acee' },
				{name : 'Y13', value : 13, color:'#069'},
				{name : 'Y17', value : 2, color:'#0449be' },
				{name : 'Y18', value : 5, color:'#FFDC35' },
				{name : 'Y22', value : 21, color:'#73CFF1' },
				{name : 'Y22L', value : 2, color:'#d7914b' },
				{name : 'Y613', value : 1, color:'#f75353' }
			];

	var chart = new iChart.Column2D({
		render : 'canvasZhuDiv2',
		data : data,
		width : 750,
		height : 350,
		label : {
			fontsize:11,
			color : '#666666'
		},
		shadow : true,
		shadow_blur : 2,
		shadow_color : '#aaaaaa',
		shadow_offsetx : 1,
		shadow_offsety : 0,
		column_width : 40,
		sub_option : {
			listeners : {
				parseText : function(r, t) {
					return t + "台";
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
			width : 630,
			axis : {
				color : '#c0d0e0',
				width : [0, 0, 1, 0]
			},
			scale : [{
				position : 'left',
				start_scale : 0,
				end_scale : 10,
				scale_space : 5,
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
<script type="text/javascript">
$(function(){   
	// 定义颜色数组
	var colors = ['#4c66a4', '#55acee', '#069', '#FFDC35', '#73CFF1', '#609700', '#d7914b', '#005eac', '#4572a7', '#f75353'];
	
	var data = [
				{name : 'X3L', value : 32, color:'#f75353' },
				{name : 'X520', value : 6, color:'#4c66a4' },
				{name : 'Y11', value : 15, color:'#55acee' },
				{name : 'Y13', value : 14, color:'#069'},
				{name : 'Y17', value : 2, color:'#0449be' },
				{name : 'Y22L', value : 2, color:'#d7914b' },
				{name : 'Y18', value : 5, color:'#FFDC35' },
				{name : 'Y22', value : 22, color:'#73CFF1' },
				{name : 'Y613', value : 1, color:'#005eac' }
        	];
	
	var chart = new iChart.Pie3D({
		render : 'canvasBingDiv2',
		padding:'2 10',
		width : 950,
		height : 550,
		data:data,
		shadow:true,
		shadow_color:'#ffffff',
		shadow_blur:8,
		background_color : '#ffffff',
		gradient:true,
		color_factor:0.28,
		showpercent:true,
		decimalsnum:2,
		legend:{
			enable:true,
			padding:30,
			color:'#4F4F4F',
			border:{
				width:[0,0,0,2],
				color:'#9D9D9D'
			},
			background_color : null,
		},
		sub_option:{
			offsetx:-40,
			border:{
				enable:false
			},
			label : {
				background_color:'#fefefe',
				sign:false,//设置禁用label的小图标
				line_height:15,
				padding:4,
				border:{
					enable:true,
					radius : 4,//圆角设置
					color:'#ffffff'
				},
				fontsize:11,
				fontweight:600,
				color : '#444444'
			}
		}
	});
	
	chart.bound(0);
});
</script>
<body>
	<jsp:include page="../top.jsp" />
	
	<div class="container main-container">
		<h5 class="page-header page-target">各社交平台访问统计报表</h5>
		
		<div class="table-responsive">
			<div style="text-align: center"><h5>社交平台访问统计报表 - 柱状图</h5></div>
			<div id="canvasZhuDiv"></div>
			
			<hr>
			
			<div id="canvasBingDiv"></div>
			
			<hr>
			<div id="canvasZhuDiv2"></div>
			
			<hr>
			<div id="canvasBingDiv2"></div>
			
			<div class="tab-bottom-line"></div>
		</div>
	</div>
	
	<jsp:include page="../bottom.jsp" />
</body>
</html>
