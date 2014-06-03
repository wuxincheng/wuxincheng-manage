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
$(function(){   
	// 定义颜色数组
	var colors = ['#4c66a4', '#55acee', '#069', '#FFDC35', '#73CFF1', '#609700', '#d7914b', '#005eac', '#4572a7', '#f75353'];
	
	var data = [
				<c:forEach items="${requestList}" var="pojo" varStatus="s">
				{name : '${pojo.jnw}',value : ${pojo.requestSum}*100/${rrsum}, color : colors['${s.index}']},
				</c:forEach>
        	];
	
	var chart = new iChart.Pie3D({
		render : 'canvasZhuDiv',
		padding:'2 10',
		width : 950,
		height : 300,
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
$(function(){
	var data = [
				<c:forEach items="${chinaList}" var="pojo" varStatus="s">
				{name : '${pojo.ipAddress}',value : ${pojo.ccount}, color:'#4c66a4'},
				</c:forEach>
        	];
	
	new iChart.Bar2D({
		render : 'canvasCDiv',
		data: data,
		width : 950,
		height : 2850,
		offsetx:20,
		coordinate:{
			width:500,
			height:2750,
			grid_color:'#428bca',
			axis:{
				color:'#428bca',
				width:[0,0,8,1]
			},
			scale:[{
				 position:'bottom',	
				 start_scale:0,
				 end_scale:300,
				 scale_space:50,
				 label:{color:'#4F4F4F'},
				 listeners:{
					parseText:function(t,x,y){
						return {text:t+"次"}
					}
				 }
			}]
		},
		label:{color:'#4F4F4F'},
		background_color : '#ffffff',
		sub_option:{
			listeners:{
				parseText:function(r,t){
					return t+"次";
				}
			}
		},
		legend:{enable:false}
	}).draw();
});
</script>

<script type="text/javascript">
$(function(){
	var data = [
				<c:forEach items="${unChinaList}" var="pojo" varStatus="s">
				{name : '${pojo.ipAddress}',value : ${pojo.uccount}, color:'#4c66a4'},
				</c:forEach>
        	];
	
	new iChart.Bar2D({
		render : 'canvasUDiv',
		data: data,
		width : 950,
		height : 700,
		offsetx:20,
		coordinate:{
			width:700,
			height:600,
			grid_color:'#428bca',
			axis:{
				color:'#428bca',
				width:[0,0,8,1]
			},
			scale:[{
				 position:'bottom',	
				 start_scale:0,
				 end_scale:300,
				 scale_space:50,
				 label:{color:'#4F4F4F'},
				 listeners:{
					parseText:function(t,x,y){
						return {text:t+"次"}
					}
				 }
			}]
		},
		label:{color:'#4F4F4F'},
		background_color : '#ffffff',
		sub_option:{
			listeners:{
				parseText:function(r,t){
					return t+"次";
				}
			}
		},
		legend:{enable:false}
	}).draw();
});
</script>
<body>
	<jsp:include page="../top.jsp" />
	
	<div class="col-sm-9 col-sm-offset-3 col-md-10 col-md-offset-2 main">
		<h5 class="page-header page-target">境内外访问统计报表</h5>
		
		<div class="table-responsive">
			<div style="text-align: center"><h5>境内外访问分布情况</h5></div>
			<div id="canvasZhuDiv"></div>

			<hr>
		
			<div style="text-align: center"><h5>境内访问分布情况（包括港、澳、台）</h5></div>
			<div id="canvasCDiv"></div>
			
			<hr>
		
			<div style="text-align: center"><h5>境外访问分布情况</h5></div>
			<div id="canvasUDiv"></div>
			
			<p>&nbsp;</p>
			<div class="tab-bottom-line"></div>
		</div>
	</div>
	
	<jsp:include page="../bottom.jsp" />
</body>
</html>
