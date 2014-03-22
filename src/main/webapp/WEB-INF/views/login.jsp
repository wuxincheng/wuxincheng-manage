<%@ page contentType="text/html;charset=UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
	<meta content="text/html; charset=utf-8" http-equiv="Content-Type" />
	<title>新成博客后台管理系统 - V1.0 - 登录</title>
	<link href="<%=request.getContextPath()%>/assets/images/favicon.png" type="image/x-icon" rel="shortcut icon"/>
	<link href="<%=request.getContextPath()%>/assets/images/favicon.png" type="image/x-icon" rel="icon"/>
	<link rel="stylesheet" href="<%=request.getContextPath()%>/assets/css/bootstrap.css" type="text/css"></link>
	<style type="text/css">
		body {
			padding-top: 150px;
			padding-bottom: 60px;
			background-color: #428bca;
		}
		
		.copy-div {
			color: white;
			text-align: center;
			padding: auto;
			margin: 20px auto;
		}
		
		.form-signin {
			max-width: 300px;
			padding: 25px 60px 40px 60px;
			margin: 0 auto;
			background-color: #fff;
	        border: 1px solid #e5e5e5;
	        -webkit-border-radius: 15px;
	           -moz-border-radius: 15px;
	                border-radius: 15px;
	        -webkit-box-shadow: 0 1px 2px rgba(0,0,0,.05);
	           -moz-box-shadow: 0 1px 2px rgba(0,0,0,.05);
	                box-shadow: 0 1px 2px rgba(0,0,0,.05);
		}
		
		.form-signin .form-signin-heading,.form-signin .checkbox {
			margin-bottom: 10px;
		}
		
		.form-signin .checkbox {
			font-weight: normal;
		}
		
		.form-signin .form-control {
			position: relative;
			font-size: 14px;
			height: auto;
			padding: 10px;
			-webkit-box-sizing: border-box;
			-moz-box-sizing: border-box;
			box-sizing: border-box;
		}
		
		.form-signin .form-control:focus {
			z-index: 2;
		}
		
		.form-signin input[type="text"] {
			margin-bottom: -1px;
			border-bottom-left-radius: 0;
			border-bottom-right-radius: 0;
		}
		
		.form-signin input[type="password"] {
			margin-bottom: 10px;
			border-top-left-radius: 0;
			border-top-right-radius: 0;
		}
	</style>
</head>
<body>
	<div class="container">
		<form action="<%=request.getContextPath()%>/login/doLogin" class="form-signin">
			<h3 class="form-signin-heading">博客管理平台</h3>
			<input type="text" class="form-control" placeholder="账号" autofocus maxlength="20" />
			<input type="password" class="form-control" placeholder="密码" maxlength="20" />
			<button class="btn btn-lg btn-primary btn-block" type="submit">登 录</button>
		</form>
	</div>
	<div class="copy-div">
		<h5><strong>新成工作室 版权所有</strong></h5>
	</div>
</body>
</html>
