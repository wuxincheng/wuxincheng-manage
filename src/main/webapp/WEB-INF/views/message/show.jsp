<%@ page contentType="text/html;charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<link href="<%=request.getContextPath()%>/assets/images/favicon.png" type="image/x-icon" rel="shortcut icon"/>
	<link href="<%=request.getContextPath()%>/assets/images/favicon.png" type="image/x-icon" rel="icon"/>
</head>
<body>
	<jsp:include page="../top.jsp" />
	
	<div class="col-sm-9 col-sm-offset-3 col-md-10 col-md-offset-2 main">
		<h5 class="page-header page-target">用户留言管理 - 查看详细 - <a href="#">返回</a></h5>
		<form action="" role="form" method="post">
			<div class="form-group">
				<label for="msgTitle">留言标题：</label>
			    <input type="text" id="msgTitle" name="msgTitle" value="${message.msgTitle}" class="form-control" style="width: 585px;" />
			</div>
			
			<div class="form-group">
				<label for="username">用户名：</label>
			    <input type="text" id="username" name="username" value="${message.username}" class="form-control" style="width: 585px;" />
			</div>
			
			<div class="form-group">
				<label for="createTime">留言时间：</label>
			    <input type="text" id="createTime" name="createTime" value="${message.createTime}" class="form-control" style="width: 585px;" />
			</div>
			
			<div class="form-group">
				<label for="msgContent">留言内容：</label>
				<textarea cols="30" id="msgContent" class="form-control" name="msgContent" rows="3" style="width: 585px;">${message.msgContent}</textarea>
			</div>
		</form>
	</div>
	
	<jsp:include page="../bottom.jsp" />
</body>
</html>

