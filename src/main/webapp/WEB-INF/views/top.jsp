<%@ page contentType="text/html;charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<link href="<%=request.getContextPath()%>/assets/images/favicon.png" type="image/x-icon" rel="shortcut icon"/>
<link href="<%=request.getContextPath()%>/assets/images/favicon.png" type="image/x-icon" rel="icon"/>

<title>后台管理 - 新成博客 - V1.0</title>

<link href="<%=request.getContextPath()%>/assets/css/bootstrap.min.css" rel="stylesheet">
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
					<li><a href="#"><span class="glyphicon glyphicon-home"></span> 首页</a>
					<li><a href="#"><span class="glyphicon glyphicon-user"></span> ${admins.adminsName} [系统管理员]</a></li>
					<li><a href="<%=request.getContextPath()%>/logout/showLoginUI"><span class="glyphicon glyphicon-log-out"></span> 退出系统</a></li>
					<li>&nbsp;&nbsp;&nbsp;&nbsp;</li>
				</ul>
			</div>
		</div>
	</div>

	<div class="container-fluid">
		<div class="row">
			<div class="col-sm-3 col-md-2 sidebar">
				<ul class="nav nav-sidebar">
					<li class="nav-header"><b>博客管理</b></li>
					<li <c:if test="${'blogInfo' eq menuFlag}">class="active"</c:if>><a href="<%=request.getContextPath()%>/blogInfo/list">新闻博客管理</a></li>
					<li <c:if test="${'type' eq menuFlag}">class="active"</c:if>><a href="<%=request.getContextPath()%>/type/list">类别管理</a></li>
				</ul>
				<ul class="nav nav-sidebar">
					<li class="nav-header"><b>基础管理</b></li>
					<li <c:if test="${'message' eq menuFlag}">class="active"</c:if>><a href="<%=request.getContextPath()%>/message/list">留言板管理</a></li>
				</ul>
				<ul class="nav nav-sidebar">
					<li class="nav-header"><b>系统管理</b></li>
					<li <c:if test="${'user' eq menuFlag}">class="active"</c:if>><a href="<%=request.getContextPath()%>/user/list">用户管理</a></li>
					<li <c:if test="${'admins' eq menuFlag}">class="active"</c:if>><a href="<%=request.getContextPath()%>/admins/list">管理员管理</a></li>
				</ul>
				<hr>
			</div>
			
</body>
</html>
