<%@ page contentType="text/html;charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<script src="<%=request.getContextPath()%>/ckeditor/ckeditor.js" type="text/javascript"></script>
	<script src="<%=request.getContextPath()%>/ckfinder/ckfinder.js" type="text/javascript"></script>
	<link href="<%=request.getContextPath()%>/assets/images/favicon.png" type="image/x-icon" rel="shortcut icon"/>
	<link href="<%=request.getContextPath()%>/assets/images/favicon.png" type="image/x-icon" rel="icon"/>
	
	<script type="text/javascript">
		window.onload = function() {
			var editor = CKEDITOR.replace('blogContent');
			CKFinder.setupCKEditor(editor,'/ckeditor/');
		}
	</script>
</head>
<body>
	<jsp:include page="../top.jsp" />
	
	<div class="col-sm-9 col-sm-offset-3 col-md-10 col-md-offset-2 main">
		<h5 class="page-header page-target">博客管理 - 编辑博客 - <a href="#">返回</a></h5>
		<form action="<%=request.getContextPath()%>/blogInfo/doEdit" role="form" method="post">
			<div class="form-group">
				<label for="blogTitle">博客标题：</label>
			    <input type="text" name="blogTitle" class="form-control" style="width: 585px;" placeholder="请输入博客标题" />
			</div>
			<div class="form-group">
				<label for="blogType">博客类型：</label><br>
				<div class="btn-group" data-toggle="buttons">
					<c:forEach items="${types}" var="type" varStatus="s">
					<label class="btn btn-primary">
						<input type="radio" name="blogType" id="blogType" value="${type.typeId}">${type.typeName}
					</label>
					</c:forEach>
				</div>
			</div>
			
			<!-- 
			<div class="form-group">
				<label for="resource">博客来源：</label>
				<input type="text" class="form-control" name="blogLink" id="blogLink" style="width: 585px;" placeholder="请输入博客来源(默认是原创)">
			</div>
			<div class="form-group">
				<label for="author">博客作者：</label>
			    <input type="text" class="form-control" name=author id="author" style="width: 170px;" placeholder="请输入作者(默认是您)">
			</div>
			 -->
			
			<div class="form-group">
				<label for="resource">博客简介：</label>
				<textarea cols="30" id="subContent" class="form-control" name="subContent" rows="3" style="width: 585px;" placeholder="请输入博客简介"></textarea>
			</div>
			<div class="form-group">
				<label for="blogContent">博客内容：</label>
			    <textarea id="blogContent" name="blogContent"></textarea>
			</div>
			<div class="form-group">
				<label for="exampleInputEmail1">博客状态：</label><br>
				<div class="btn-group" data-toggle="buttons">
					<label class="btn btn-warning">
						<input type="radio" name="blogState" id="blogState" value="0">已经完成，我要发布
					</label>
					<label class="btn btn-danger">
						<input type="radio" name="blogState" id="blogState" value="1">还未完成，存到草稿箱
					</label>
				</div>
			</div>
			<input type="submit" class="btn btn-primary btn-sm" value="保存" />
			<input type="button" class="btn btn-primary btn-sm" value="重置" />
		</form>
	</div>
	
	<jsp:include page="../bottom.jsp" />
</body>
</html>

