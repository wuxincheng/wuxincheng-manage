<%@ page contentType="text/html;charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
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
		<h5 class="page-header page-target">博客管理</h5>
		<form class="form-inline" role="form">
			<input type="text" class="form-control" placeholder="输入博客标题">
			<input type="text" class="form-control" placeholder="输入博客日期">
			<input type="text" class="form-control" placeholder="输入博客类别">
			<button type="button" class="btn btn-primary btn-sm">查询</button>
			<button type="button" class="btn btn-primary btn-sm">重置</button>
			<a href="<%=request.getContextPath()%>/blogInfo/edit?blogId=">
			<button type="button" class="btn btn-success btn-sm">新增</button>
			</a>
		</form>
		<hr />
		<div class="table-responsive">
			<table class="table table-hover">
				<thead>
					<tr>
						<th>序号</th>
						<th>博客标题</th>
						<th>博客类别</th>
						<th>操作时间</th>
						<th>操作</th>
					</tr>
				</thead>
				<tbody>
					<c:choose>
					<c:when test="${not empty blogInfos}">
					<c:forEach items="${blogInfos}" var="blogInfo" varStatus="s">
					<tr>
						<td>${s.index + 1}</td>
						<td>${blogInfo.blogTitle}</td>
						<td>${blogInfo.blogTypeName}</td>
						<td>${blogInfo.blogTime}</td>
						<td>
							<a href="<%=request.getContextPath()%>/blogInfo/edit?blogId=${blogInfo.blogId}">
								<button type="button" class="btn btn-success btn-sm">修改</button>
							</a>
							<button type="button" class="btn btn-primary btn-sm">预览</button>
							<button type="button" class="btn btn-warning btn-sm">特殊标记</button>
							<button type="button" class="btn btn-danger btn-sm">禁用</button>
						</td>
					</tr>
					
					</c:forEach>
					</c:when>
					<c:otherwise>
					<div class="alert alert-info">
						<button type="button" class="close" data-dismiss="alert" aria-hidden="true">&times;</button>
						<strong>提示：</strong>系统没有查询到博客信息
					</div>
					</c:otherwise>
					</c:choose>
					
					<c:if test="${not empty success}">
					<div class="alert alert-success">
						<button type="button" class="close" data-dismiss="alert" aria-hidden="true">&times;</button>
						<strong>提示：</strong>${success}
					</div>
					</c:if>
					<c:if test="${not empty danger}">
					<div class="alert alert-danger">
						<button type="button" class="close" data-dismiss="alert" aria-hidden="true">&times;</button>
						<strong>提示：</strong>${danger}
					</div>
					</c:if>
					<c:if test="${not empty warning}">
					<div class="alert alert-warning">
						<button type="button" class="close" data-dismiss="alert" aria-hidden="true">&times;</button>
						<strong>提示：</strong>${warning}
					</div>
					</c:if>
				</tbody>
			</table>
			<div class="tab-bottom-line"></div>
			<ul class="pager">
				<li><a href="#">Previous</a></li>
				<li><a href="#">1</a></li>
				<li><a href="#">2</a></li>
				<li><a href="#">3</a></li>
				<li><a href="#">4</a></li>
				<li><a href="#">...</a></li>
				<li><a href="#">30</a></li>
				<li><a href="#">Next</a></li>
			</ul>
			
		</div>
	</div>
	
	<jsp:include page="../bottom.jsp" />
</body>
</html>
