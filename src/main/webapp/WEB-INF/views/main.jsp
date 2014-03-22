<%@ page contentType="text/html;charset=UTF-8"%>
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
<link href="<%=request.getContextPath()%>/assets/css/dashboard.css" rel="stylesheet">
</head>
<style type="text/css">
		.form-signin {
			padding: 1px 10px 1px 10px;
			margin: 30px auto 30px auto;
			background-color: #dff0d8;
	        border: 1px solid #e5e5e5;
	        -webkit-border-radius: 5px;
	           -moz-border-radius: 5px;
	                border-radius: 5px;
	        -webkit-box-shadow: 0 1px 2px rgba(0,0,0,.05);
	           -moz-box-shadow: 0 1px 2px rgba(0,0,0,.05);
	                box-shadow: 0 1px 2px rgba(0,0,0,.05);
		}
	</style>
<body>
	<jsp:include page="top.jsp" />
	
	<div class="col-sm-9 col-sm-offset-3 col-md-10 col-md-offset-2 main">
		<h4 class="page-header page-target">管理平台首页</h4>
		<form class="form-signin">
			<h5 class="form-signin-heading"><strong>系统管理员，您好：</strong> 欢迎登录新成博客管理平台</h5>
		</form>
		
		<div class="row placeholders">
			<div class="col-xs-6 col-sm-3 placeholder">
				<img data-src="<%=request.getContextPath()%>/assets/js/holder/holder.js/200x200/auto/sky" class="img-responsive"
					alt="Generic placeholder thumbnail">
				<h4>查看博客</h4>
				<span class="text-muted">近三天之内的博客</span>
			</div>
			<div class="col-xs-6 col-sm-3 placeholder">
				<img data-src="holder.js/200x200/auto/vine" class="img-responsive"
					alt="Generic placeholder thumbnail">
				<h4>Label</h4>
				<span class="text-muted">Something else</span>
			</div>
			<div class="col-xs-6 col-sm-3 placeholder">
				<img data-src="holder.js/200x200/auto/sky" class="img-responsive"
					alt="Generic placeholder thumbnail">
				<h4>Label</h4>
				<span class="text-muted">Something else</span>
			</div>
			<div class="col-xs-6 col-sm-3 placeholder">
				<img data-src="holder.js/200x200/auto/vine" class="img-responsive"
					alt="Generic placeholder thumbnail">
				<h4>Label</h4>
				<span class="text-muted">Something else</span>
			</div>
		</div>
	</div>

	<jsp:include page="bottom.jsp" />
</body>
</html>
