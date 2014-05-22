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
		<h5 class="page-header page-target">通告管理</h5>
		<form class="form-inline" role="form">
			<a href="<%=request.getContextPath()%>/manage/blogInfo/edit?blogId=">
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
						<td>${blogInfo.blogTime}</td>
						<td>
							<a href="<%=request.getContextPath()%>/blogInfo/edit?blogId=${blogInfo.blogId}">
								<button type="button" class="btn btn-success btn-sm">修改</button>
							</a>
							
							<button type="button" class="btn btn-danger btn-sm" onclick="if(confirm('您确定执行删除么?')) document.location = '<%=request.getContextPath()%>/blogInfo/delete?blogId=${blogInfo.blogId}';">删除</button>
							
							<!-- 
							<button type="button" class="btn btn-primary btn-sm">预览</button>
							<button type="button" class="btn btn-warning btn-sm">特殊标记</button>
							<button type="button" class="btn btn-danger btn-sm">禁用</button>
							 -->
						</td>
					</tr>
					
					</c:forEach>
					</c:when>
					<c:otherwise>
					<div class="alert alert-info">
						<button type="button" class="close" data-dismiss="alert" aria-hidden="true">&times;</button>
						<strong>提示：</strong>系统没有查询到通告信息
					</div>
					</c:otherwise>
					</c:choose>
					
					<jsp:include page="../bottom.jsp" />
				</tbody>
			</table>
			<div class="tab-bottom-line"></div>
			
		</div>
	</div>
	
	<jsp:include page="../bottom.jsp" />
</body>
</html>
