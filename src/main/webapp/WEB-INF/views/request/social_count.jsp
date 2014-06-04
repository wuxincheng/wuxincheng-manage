<%@ page contentType="text/html;charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<link href="<%=request.getContextPath()%>/assets/css/bootstrap.css" rel="stylesheet">
<link href="<%=request.getContextPath()%>/assets/css/ichart.css" rel="stylesheet">
<script src="<%=request.getContextPath()%>/assets/js/ichart.latest.min.js"></script>
</head>
<style type="text/css">
	.wuxc-container {
		margin-right: auto;
		margin-left: auto;
		padding-left: 15px;
		padding-right: 15px;
	}
</style>
<script type="text/javascript">
// 定义数据
var data = [
	<c:forEach items="${socials}" var="social">
	<c:if test="${'google' eq social.socialType}">
	{name : 'Google+', value : ${social.socialRead}, color:'#f75353' },
	</c:if>
	<c:if test="${'facebook' eq social.socialType}">
	{name : 'Facebook', value : ${social.socialRead}, color:'#4c66a4' },
	</c:if>
	<c:if test="${'twitter' eq social.socialType}">
	{name : 'Twitter', value : ${social.socialRead}, color:'#55acee' },
	</c:if>
	<c:if test="${'linkedin' eq social.socialType}">
	{name : 'LinkedIn', value : ${social.socialRead}, color:'#069' },
	</c:if>
	<c:if test="${'tieba' eq social.socialType}">
	{name : '百度贴吧', value : ${social.socialRead}, color:'#0449be' },
	</c:if>
	<c:if test="${'qzone' eq social.socialType}">
	{name : 'QQ空间', value : ${social.socialRead}, color:'#FFDC35' },
	</c:if>
	<c:if test="${'tweibo' eq social.socialType}">
	{name : '腾讯微博', value : ${social.socialRead}, color:'#73CFF1' },
	</c:if>
	<c:if test="${'weibo' eq social.socialType}">
	{name : '新浪微博', value : ${social.socialRead}, color:'#d7914b' },
	</c:if>
	<c:if test="${'weixin' eq social.socialType}">
	{name : '微信', value : ${social.socialRead}, color:'#609700' },
	</c:if>
	<c:if test="${'renren' eq social.socialType}">
	{name : '人人网', value : ${social.socialRead}, color:'#005eac' },
	</c:if>
	<c:if test="${'wuxincheng' eq social.socialType}">
	{name : '新成微博', value : ${social.socialRead}, color:'#428BCA' },
	</c:if>
   	</c:forEach>
 ];
 $(function(){	
	var chart = new iChart.Column2D({
		render : 'canvasDiv',//渲染的Dom目标,canvasDiv为Dom的ID
		data: data,//绑定数据
		title : '', //设置标题
		width : 680,//设置宽度，默认单位为px
		height : 409,//设置高度，默认单位为px
		shadow:true,//激活阴影
		shadow_color:'#c7c7c7',//设置阴影颜色
		coordinate:{//配置自定义坐标轴
			scale:[{//配置自定义值轴
				 position:'left',//配置左值轴	
				 start_scale:0,//设置开始刻度为0
				 end_scale:100,//设置结束刻度为26
				 scale_space:50,//设置刻度间距
				 listeners:{//配置事件
					parseText:function(t,x,y){//设置解析值轴文本
						return {text:t+" 次"}
					}
				}
			}]
		}
	});
	//调用绘图方法开始绘图
	chart.draw();
});
</script>
<body>
	<div class="wuxc-container">
		<div class="row">
			<h5 style="text-align: center; font-weight: bold;">该博客在各社交平台阅读量统计情况</h5>
			
    		<div class="col-sm-3">
    			<h6>统计表：</h6>
				<table class="table table-bordered">
				<thead>
					<tr>
				    	<th>序号</th>
				    	<th>社交平台</th>
				    	<th>阅读量</th>
					</tr>
				</thead>
		    	<tbody>
		    		<c:set var="srcout" value="0" />
		    		<c:forEach items="${socials}" var="social" varStatus="s">
			        <tr>
			        	<td>${s.index+1}</td>
			        	<td style="text-align: left; font-weight: bold;">
			        		<c:if test="${'google' eq social.socialType}">
								<span class="label label-google">Google+</span>
							</c:if>
							<c:if test="${'facebook' eq social.socialType}">
								<span class="label label-facebook">Facebook</span>
							</c:if>
							<c:if test="${'twitter' eq social.socialType}">
								<span class="label label-twitter">Twitter</span>
							</c:if>
							<c:if test="${'linkedin' eq social.socialType}">
								<span class="label label-linkedin">LinkedIn</span>
							</c:if>
							<c:if test="${'qzone' eq social.socialType}">
								<span class="label label-qzone">QQ空间</span>
							</c:if>
							<c:if test="${'tieba' eq social.socialType}">
								<span class="label label-tieba">百度贴吧</span>
							</c:if>
							<c:if test="${'tweibo' eq social.socialType}">
								<span class="label label-tweibo">腾讯微博</span>
							</c:if>
							<c:if test="${'weibo' eq social.socialType}">
								<span class="label label-weibo">新浪微博</span>
							</c:if>
							<c:if test="${'weixin' eq social.socialType}">
								<span class="label label-weixin">微信</span>
							</c:if>
							<c:if test="${'renren' eq social.socialType}">
								<span class="label label-renren">人人网</span>
							</c:if>
							<c:if test="${'wuxincheng' eq social.socialType && not empty social.blogId}">
								<span class="label label-primary">新成微博</span>
							</c:if>
							<c:if test="${'wuxincheng' eq social.socialType && empty social.blogId}">
								<span class="label label-default">新成微博</span>
							</c:if>
			        	</td>
			        	<td style="text-align: right; font-weight: bold;">
			        		<fmt:formatNumber value="${social.socialRead}" pattern="###,###,###,##0" />
			        		<c:set var="srcout" value="${srcout + social.socialRead}" />
			        	</td>
			        </tr>
		    		</c:forEach>
		    		<tr>
		    			<td colspan="2" style="text-align: center; font-weight: bold;">总计</td>
		    			<td style="text-align: right; font-weight: bold;"><fmt:formatNumber value="${srcout}" pattern="###,###,###,##0" /></td>
		    		</tr>
		    	</tbody>
				</table>
     		</div>
     		
			<div class="col-sm-9">
				<h6>统计图：</h6>
				<div id="canvasDiv"></div>
			</div>
		</div>
	</div>
</body>

