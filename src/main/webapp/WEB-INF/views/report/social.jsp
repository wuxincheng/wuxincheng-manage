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
				<c:forEach items="${dataList}" var="social">
				<c:if test="${'google' eq social.socialType}">
				{name : 'Google+', value : ${social.scount}, color:'#f75353' },
				</c:if>
				<c:if test="${'facebook' eq social.socialType}">
				{name : 'Facebook', value : ${social.scount}, color:'#4c66a4' },
				</c:if>
				<c:if test="${'twitter' eq social.socialType}">
				{name : 'Twitter', value : ${social.scount}, color:'#55acee' },
				</c:if>
				<c:if test="${'linkedin' eq social.socialType}">
				{name : 'LinkedIn', value : ${social.scount}, color:'#069' },
				</c:if>
				<c:if test="${'tieba' eq social.socialType}">
				{name : '百度贴吧', value : ${social.scount}, color:'#0449be' },
				</c:if>
				<c:if test="${'qzone' eq social.socialType}">
				{name : 'QQ空间', value : ${social.scount}, color:'#FFDC35' },
				</c:if>
				<c:if test="${'tweibo' eq social.socialType}">
				{name : '腾讯微博', value : ${social.scount}, color:'#73CFF1' },
				</c:if>
				<c:if test="${'weibo' eq social.socialType}">
				{name : '新浪微博', value : ${social.scount}, color:'#d7914b' },
				</c:if>
				<c:if test="${'weixin' eq social.socialType}">
				{name : '微信', value : ${social.scount}, color:'#609700' },
				</c:if>
				<c:if test="${'renren' eq social.socialType}">
				{name : '人人网', value : ${social.scount}, color:'#005eac' },
				</c:if>
				</c:forEach>
			];

	var chart = new iChart.Column2D({
		render : 'canvasZhuDiv',
		data : data,
		width : 950,
		height : 750,
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
				end_scale : 1000,
				scale_space : 500,
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
		<h5 class="page-header page-target">运营分析 - 社交平台访问统计报表</h5>
		
		<div class="table-responsive">
			<div style="text-align: center"><h5>社交平台访问统计报表 - 柱状图</h5></div>
			<div id="canvasZhuDiv"></div>
			
			<p>&nbsp;</p>
			<div class="tab-bottom-line"></div>
		</div>
	</div>
	
	<jsp:include page="../bottom.jsp" />
</body>
</html>
