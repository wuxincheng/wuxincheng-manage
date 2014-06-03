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
	var data = [
				<c:forEach items="${dataList}" var="pojo" varStatus="s">
				{name : '${pojo.ipAddress}'+' - '+'${pojo.requestIP}',value : ${pojo.icount}, color:'#4c66a4'},
				</c:forEach>
        	];
	
	new iChart.Bar2D({
		render : 'canvasDiv',
		data: data,
		width : 950,
		height : 550,
		offsetx:20,
		coordinate:{
			width:500,
			height:450,
			grid_color:'#428bca',
			axis:{
				color:'#428bca',
				width:[0,0,8,1]
			},
			scale:[{
				 position:'bottom',	
				 start_scale:0,
				 end_scale:100,
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
		<h5 class="page-header page-target">访问IP统计报表</h5>
		
		<div class="table-responsive">
			<div style="text-align: center"><h5>访问IP统计 - 柱状图</h5></div>
			<div id="canvasDiv"></div>
			
			<p>&nbsp;</p>
			<div class="tab-bottom-line"></div>
		</div>
	</div>
	
	<jsp:include page="../bottom.jsp" />
</body>
</html>
