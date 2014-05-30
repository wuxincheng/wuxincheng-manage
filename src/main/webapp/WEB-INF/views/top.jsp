<%@ page contentType="text/html;charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<link href="<%=request.getContextPath()%>/assets/images/favicon.png" type="image/x-icon" rel="shortcut icon"/>
<link href="<%=request.getContextPath()%>/assets/images/favicon.png" type="image/x-icon" rel="icon"/>

<title>后台管理 - 新成博客 - V1.0</title>

<link href="<%=request.getContextPath()%>/assets/css/bootstrap.css" rel="stylesheet">
<link href="<%=request.getContextPath()%>/assets/css/dashboard.css" rel="stylesheet">
</head>
<style type="text/css">
	.page-target {
		font-weight: bold;
		color: #3a7a9f;
	}
	.tab-bottom-line {
		margin: 0 auto 0;
		border-top: 1px solid #E0E0E0;
	}
	.table {
		margin-bottom: 0px;
	}
</style>
<body>
	<div class="navbar navbar-inverse navbar-fixed-top" role="navigation">
		<div class="container-fluid-top">
			<div class="navbar-header">
				<button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
					<span class="sr-only">Toggle navigation</span>
					<span class="icon-bar"></span> 
					<span class="icon-bar"></span> 
					<span class="icon-bar"></span>
				</button>
				<a class="navbar-brand">新成博客管理平台</a>
			</div>
			<div class="navbar-collapse collapse">
				<ul class="nav navbar-nav navbar-right">
					<li><a href="<%=request.getContextPath()%>/admins/main"><span class="glyphicon glyphicon-home"></span> 首页</a>
					<li><a href=""><span class="glyphicon glyphicon-user"></span> ${admins.adminsName} [系统管理员]</a></li>
					<li><a data-toggle="modal" data-target=".logout-modal" href=""><span class="glyphicon glyphicon-log-out"></span> 退出系统</a></li>
					<li>&nbsp;&nbsp;&nbsp;&nbsp;</li>
				</ul>
			</div>
		</div>
	</div>
	<div class="modal fade logout-modal" tabindex="-1" role="dialog" aria-labelledby="logoutModalLabel" aria-hidden="true">
		<div class="modal-dialog modal-sm">
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
					<h5 class="modal-title">系统提示</h5>
				</div>
				<div class="modal-body" style="text-align: center; font-weight: bold;">
					您确定退出管理系统吗？
				</div>
				<div class="modal-footer">
					<button type="button" class="btn btn-default btn-sm" data-dismiss="modal">取消</button>
					<a href="<%=request.getContextPath()%>/admins/logout">
					<button type="button" class="btn btn-primary btn-sm">确定</button>
					</a>
				</div>
			</div>
		</div>
	</div>

	<div class="container-fluid">
		<div class="row">
			<div class="col-sm-3 col-md-2 sidebar">
				<ul class="nav nav-sidebar">
					<li class="nav-header"><b>博客管理</b></li>
					<li <c:if test="${'blogInfo' eq menuFlag}">class="active"</c:if>><a href="<%=request.getContextPath()%>/manage/blogInfo/list">博客管理</a></li>
					<li <c:if test="${'type' eq menuFlag}">class="active"</c:if>><a href="<%=request.getContextPath()%>/manage/type/list">类别管理</a></li>
				</ul>
				<ul class="nav nav-sidebar">
					<li class="nav-header"><b>运营分析</b></li>
					<li <c:if test="${'request' eq menuFlag}">class="active"</c:if>><a href="<%=request.getContextPath()%>/manage/request/list">访问查询</a></li>
				</ul>
				<ul class="nav nav-sidebar">
					<li class="nav-header"><b>基础管理</b></li>
					<li <c:if test="${'message' eq menuFlag}">class="active"</c:if>><a href="<%=request.getContextPath()%>/manage/message/list">留言板管理</a></li>
				</ul>
				<ul class="nav nav-sidebar">
					<li class="nav-header"><b>系统管理</b></li>
					<li <c:if test="${'user' eq menuFlag}">class="active"</c:if>><a href="<%=request.getContextPath()%>/manage/user/list">用户管理</a></li>
					<li <c:if test="${'admins' eq menuFlag}">class="active"</c:if>><a href="<%=request.getContextPath()%>/manage/admins/list">管理员管理</a></li>
				</ul>
				<hr>
			</div>
			
</body>
</html>
