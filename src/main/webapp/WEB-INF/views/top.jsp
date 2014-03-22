<%@ page contentType="text/html;charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="description" content="">
<meta name="author" content="">
<link href="<%=request.getContextPath()%>/assets/images/favicon.png" type="image/x-icon" rel="shortcut icon"/>
<link href="<%=request.getContextPath()%>/assets/images/favicon.png" type="image/x-icon" rel="icon"/>

<title>后台管理 - 新成博客 - V1.0</title>

<link href="<%=request.getContextPath()%>/assets/css/bootstrap.min.css" rel="stylesheet">

<link href="<%=request.getContextPath()%>/assets/css/dashboard.css" rel="stylesheet">
</head>
<style type="text/css">
	body {
		font-family: "Helvetica Neue",Helvetica,Arial,sans-serif;
		font-size: 13px;
		line-height: 1.42857143;
		color: #333;
	}
	
	.container-fluid-top {
	    margin-right: auto;
	    margin-left: auto;
	    padding-left: 15px;
	    padding-right: 15px;
	    border: 1px solid #E0E0E0;
	    background-color: #FFFFFF;
	}
	.page-target {
		font-weight: bold;
		font-size: 15px;
		color: #428bca;
	}
</style>
<body>
	<div class="navbar navbar-fixed-top" role="navigation">
		<div class="container-fluid-top">
			<div class="navbar-header">
				<button type="button" class="navbar-toggle" data-toggle="collapse"
					data-target=".navbar-collapse">
					<span class="sr-only">Toggle navigation</span> <span
						class="icon-bar"></span> <span class="icon-bar"></span> <span
						class="icon-bar"></span>
				</button>
				<a class="navbar-brand">新成博客管理平台</a>
			</div>
			<div class="navbar-collapse collapse">
				<ul class="nav navbar-nav navbar-right">
					<li><a href="<%=request.getContextPath()%>/login/doLogin"><span class="glyphicon glyphicon-home"></span> 首页</a>
					<li><a href="#"><span class="glyphicon glyphicon-user"></span> 吴新成 [系统管理员]</a></li>
					<li><a href="#"><span class="glyphicon glyphicon-log-out"></span> 退出系统</a></li>
				</ul>
			</div>
		</div>
	</div>

	<div class="container-fluid">
		<div class="row">
			<div class="col-sm-3 col-md-2 sidebar">
				<ul class="nav nav-sidebar">
					<li class="nav-header"><b>博客管理</b></li>
					<li class="active"><a href="<%=request.getContextPath()%>/blogInfo/list">博客管理</a></li>
					<li><a href="#">类别管理</a></li>
				</ul>
				<ul class="nav nav-sidebar">
					<li class="nav-header"><b>访问查询</b></li>
					<li><a href="#">访问明细查询</a></li>
				</ul>
				<ul class="nav nav-sidebar">
					<li class="nav-header"><b>报表统计</b></li>
					<li><a href="#">博客日报表</a></li>
					<li><a href="#">博客月报表</a></li>
					<li><a href="#">博客年报表</a></li>
				</ul>
				<ul class="nav nav-sidebar">
					<li class="nav-header"><b>系统管理</b></li>
					<li><a href="#">操作员管理</a></li>
					<li><a>网站用户管理</a></li>
				</ul>
			</div>
			
</body>
</html>
