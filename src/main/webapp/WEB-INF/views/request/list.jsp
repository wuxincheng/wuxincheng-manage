<%@ page contentType="text/html;charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<link href="<%=request.getContextPath()%>/assets/images/favicon.png" type="image/x-icon" rel="shortcut icon"/>
<link href="<%=request.getContextPath()%>/assets/images/favicon.png" type="image/x-icon" rel="icon"/>
</head>

<body>
	<jsp:include page="../top.jsp" />
	
	<div class="col-sm-9 col-sm-offset-3 col-md-10 col-md-offset-2 main">
		<h5 class="page-header page-target">访问查询</h5>
		<form class="form-inline" role="form">
			<input type="text" class="form-control" placeholder="开始日期">
			<input type="text" class="form-control" placeholder="结束日期">
			<input type="text" class="form-control" placeholder="博客标题">
			<button type="button" class="btn btn-primary btn-sm">查询</button>
			<button type="reset" class="btn btn-primary btn-sm">重置</button>
		</form>
		<hr />
		<div class="table-responsive">
			<table class="table table-hover">
				<thead>
					<tr>
						<th>序号</th>
						<th>访问时间</th>
						<th>访问IP地址</th>
						<th>系统路径</th>
						<th>博客</th>
						<th>访问来源</th>
					</tr>
				</thead>
				<tbody>
					<c:choose>
					<c:when test="${not empty pager.pojoList}">
					<c:forEach items="${pager.pojoList}" var="pojo" varStatus="s">
					<tr>
						<td>${s.index + 1}</td>
						<td>${pojo.requestTime}</td>
						<td><span class="label label-success">${pojo.requestIp}</span></td>
						<td><span class="label label-info">${pojo.systemPath}</span></td>
						<td>${pojo.blogTitle}</td>
						<td>
							<c:if test="${'google' eq pojo.socialType}">
								<span class="label label-google">Google+</span>
							</c:if>
							<c:if test="${'facebook' eq pojo.socialType}">
								<span class="label label-facebook">Facebook</span>
							</c:if>
							<c:if test="${'twitter' eq pojo.socialType}">
								<span class="label label-twitter">Twitter</span>
							</c:if>
							<c:if test="${'linkedin' eq pojo.socialType}">
								<span class="label label-linkedin">LinkedIn</span>
							</c:if>
							<c:if test="${'qzone' eq pojo.socialType}">
								<span class="label label-qzone">QQ空间</span>
							</c:if>
							<c:if test="${'tweibo' eq pojo.socialType}">
								<span class="label label-tweibo">腾讯微博</span>
							</c:if>
							<c:if test="${'weibo' eq pojo.socialType}">
								<span class="label label-weibo">新浪微博</span>
							</c:if>
							<c:if test="${'weixin' eq pojo.socialType}">
								<span class="label label-weixin">微信</span>
							</c:if>
							<c:if test="${'renren' eq pojo.socialType}">
								<span class="label label-renren">人人网</span>
							</c:if>
							<c:if test="${'wuxincheng' eq pojo.socialType}">
								<span class="label label-primary">新成微博</span>
							</c:if>
						</td>
					</tr>
					</c:forEach>
					</c:when>
					<c:otherwise>
					<div class="alert alert-info">
						<button type="button" class="close" data-dismiss="alert" aria-hidden="true">&times;</button>
						<strong>提示：</strong>系统没有查询到访问信息
					</div>
					</c:otherwise>
					</c:choose>
					
					<jsp:include page="../msg.jsp" />
				</tbody>
			</table>
			<div class="tab-bottom-line"></div>
			
			<ul class="pager">
				<li <c:if test="${'1' eq pager.currentPage}">class="disabled"</c:if>>
					<a <c:if test="${pager.currentPage > 1}">href="<%=request.getContextPath()%>/manage/request/list?currentPage=1"</c:if>>首页</a>
				</li>
				
				<li <c:if test="${'1' eq pager.currentPage}">class="disabled"</c:if>>
					<a <c:if test="${pager.currentPage > 1}">href="<%=request.getContextPath()%>/manage/request/list?currentPage=${pager.currentPage-1}"</c:if>>上一页</a>
				</li>
				
				<li <c:if test="${pager.lastPage eq pager.currentPage}">class="disabled"</c:if>>
					<a <c:if test="${pager.currentPage < pager.lastPage}">href="<%=request.getContextPath()%>/manage/request/list?currentPage=${pager.currentPage+1}"</c:if>>下一页</a>
				</li>
				
				<li <c:if test="${pager.lastPage eq pager.currentPage}">class="disabled"</c:if>>
					<a <c:if test="${pager.currentPage < pager.lastPage}">href="<%=request.getContextPath()%>/manage/request/list?currentPage=${pager.lastPage}"</c:if>>尾页</a>
				</li>
				
				<li class="">&nbsp;</li>
				<li class=""><strong>${pager.currentPage}/${pager.lastPage}</strong></li>
				<li class="">&nbsp;</li>
				<li class="disabled">共<strong>${pager.totalCount}</strong>条</li>
				<li class="">&nbsp;</li>
				<li class="">每页显示<strong>${pager.pageSize}</strong>条</li>
			</ul>
		</div>
	</div>
	
	
	<jsp:include page="../bottom.jsp" />
</body>
</html>
