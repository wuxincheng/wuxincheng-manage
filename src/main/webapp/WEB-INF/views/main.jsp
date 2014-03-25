<%@ page contentType="text/html;charset=UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<link href="<%=request.getContextPath()%>/assets/images/favicon.png" type="image/x-icon" rel="shortcut icon"/>
<link href="<%=request.getContextPath()%>/assets/images/favicon.png" type="image/x-icon" rel="icon"/>
<link href="<%=request.getContextPath()%>/assets/css/bootstrap.min.css" rel="stylesheet">
<link href="<%=request.getContextPath()%>/assets/css/dashboard.css" rel="stylesheet">
</head>
<style type="text/css">
		.container {
			margin: 100px auto auto auto;
		}
		.panel-body {
			padding: 25px 60px 40px 60px;
		}
		.container {
			max-width: 553px;
		}
		.panel-body .btn:not(.btn-block) { width:120px;margin-bottom:10px; }
	</style>
<body>
	<jsp:include page="top.jsp" />
	
	<div class="col-sm-9 col-sm-offset-3 col-md-10 col-md-offset-2 main">
		<h5 class="page-header page-target">管理平台首页</h5>
		<div class="container">
		    <div class="row">
		        <div>
		            <div class="panel panel-primary">
		                <div class="panel-heading">
		                    <h3 class="panel-title">
		                        <span class="glyphicon glyphicon-user"></span> 欢迎登录新成博客后台管理系统</h3>
		                </div>
		                <div class="panel-body">
		                    <div class="row">
		                        <div class="col-xs-6 col-md-6">
		                          <a href="#" class="btn btn-danger btn-lg" role="button"><span class="glyphicon glyphicon-list-alt"></span> <br/>Apps</a>
		                          <a href="#" class="btn btn-warning btn-lg" role="button"><span class="glyphicon glyphicon-bookmark"></span> <br/>Bookmarks</a>
		                          <a href="#" class="btn btn-primary btn-lg" role="button"><span class="glyphicon glyphicon-signal"></span> <br/>Reports</a>
		                          <a href="#" class="btn btn-primary btn-lg" role="button"><span class="glyphicon glyphicon-comment"></span> <br/>Comments</a>
		                        </div>
		                        <div class="col-xs-6 col-md-6">
		                          <a href="#" class="btn btn-success btn-lg" role="button"><span class="glyphicon glyphicon-user"></span> <br/>Users</a>
		                          <a href="#" class="btn btn-info btn-lg" role="button"><span class="glyphicon glyphicon-file"></span> <br/>Notes</a>
		                          <a href="#" class="btn btn-primary btn-lg" role="button"><span class="glyphicon glyphicon-picture"></span> <br/>Photos</a>
		                          <a href="#" class="btn btn-primary btn-lg" role="button"><span class="glyphicon glyphicon-tag"></span> <br/>Tags</a>
		                        </div>
		                    </div>
		                    <a href="http://www.jquery2dotnet.com/" class="btn btn-success btn-lg btn-block" role="button"><span class="glyphicon glyphicon-globe"></span> Website</a>
		                </div>
		            </div>
		        </div>
		    </div>
		</div>

	</div>

	<jsp:include page="bottom.jsp" />
</body>
</html>
