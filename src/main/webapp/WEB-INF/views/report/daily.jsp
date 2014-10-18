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
	var flow=[];
	
	<c:forEach items="${dataList}" var="pojo">
	flow.push(${pojo.rcount});
	</c:forEach>
	
	var data = [
     	{
     		name : '次数',
     		value:flow,
     		color:'#0d8ecf',
     		line_width:2
     	}
	];
     
	var labels = [
				<c:forEach items="${dataList}" var="pojo">
					"${pojo.requestDay}",
				</c:forEach>
	             ];
	
	var line = new iChart.LineBasic2D({
		render : 'canvasZheDiv',
		data: data,
		align:'center',
		title : '',
		subtitle : '',
		width : 950,
		height : 350,
		sub_option:{
			smooth : true,//平滑曲线
			point_size:10
		},
		tip:{
			enable:true,
			shadow:true
		},
		legend : {
			enable : false
		},
		crosshair:{
			enable:true,
			line_color:'#62bce9'
		},
		coordinate:{
			width:830,
			valid_width:679,
			height:460,
			axis:{
				color:'#9f9f9f',
				width:[0,0,2,2]
			},
			grids:{
				vertical:{
					way:'share_alike',
			 		value:11
				}
			},
			scale:[{
				 position:'left',	
				 start_scale:0,
				 end_scale:300,
				 scale_space:100,
				 scale_size:2,
				 scale_color:'#9f9f9f'
			},{
				 position:'bottom',	
				 labels:labels
			}]
		}
	});

line.draw();
});
</script>

<script type="text/javascript">
$(function() {
	// 定义颜色数组
	var colors = ['#4c66a4', '#55acee', '#069', '#FFDC35', '#73CFF1', '#609700', '#d7914b', '#0449be', '#4572a7', '#f75353'];
	
	var data = [
				<c:forEach items="${dataList}" var="pojo" varStatus="s">
				{name : '${pojo.requestDay}',value : ${pojo.rcount}, color : colors['${s.index}']},
				</c:forEach>
			];

	var chart = new iChart.Column2D({
		render : 'canvasZhuDiv',
		data : data,
		width : 950,
		height : 450,
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
				end_scale : 300,
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
		<h5 class="page-header page-target">运营分析 - 访问日报表</h5>
		
		<div class="table-responsive">
			<div style="text-align: center"><h5>近10天内网站访问情况 - 列表</h5></div>
			<table class="table table-bordered">
				<c:choose>
				<c:when test="${not empty dataList}">
				<thead>
					<tr>
						<th class="active">日期</th>
						<c:forEach items="${dataList}" var="pojo">
						<th style="text-align: right; font-weight:bold;" class="active">
							${pojo.requestDay}
						</th>
						</c:forEach>
					</tr>
				</thead>
				<tbody>
					<tr>
						<td style="font-weight:bold;" class="active">访问量</td>
						<c:forEach items="${dataList}" var="pojo">
						<td style="text-align: right; font-weight:bold;">
							<fmt:formatNumber value="${pojo.rcount}" pattern="###,###,###,##0" />
						</td>
						</c:forEach>
					</tr>
				</tbody>
				</c:when>
				<c:otherwise>
				<div class="alert alert-info">
					<button type="button" class="close" data-dismiss="alert" aria-hidden="true">&times;</button>
					<strong>提示：</strong>系统没有访问数据
				</div>
				</c:otherwise>
				</c:choose>
			</table>
			
			<hr>
			<div style="text-align: center"><h5>近10天内网站访问变化情况 - 折线图</h5></div>
			<div id="canvasZheDiv"></div>
			
			<hr>
			<div style="text-align: center"><h5>近10天内网站访问情况 - 柱状图</h5></div>
			<div id="canvasZhuDiv"></div>
			
			<p>&nbsp;</p>
			<div class="tab-bottom-line"></div>
		</div>
	</div>
	
	<jsp:include page="../bottom.jsp" />
</body>
</html>
