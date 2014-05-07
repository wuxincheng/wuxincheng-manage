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
		<h5 class="page-header page-target">新闻管理 - 编辑新闻 - <a href="#">返回</a></h5>
		<form action="<%=request.getContextPath()%>/blogInfo/doEdit" role="form" method="post">
			<!-- 隐藏字段 -->
			<input type="hidden" id="blogId" name="blogId" value="${blogInfo.blogId}" />
			<div class="form-group">
				<label for="blogTitle">新闻标题：</label>
			    <input type="text" name="blogTitle" value="${blogInfo.blogTitle}" class="form-control" style="width: 585px;" placeholder="请输入博客标题" />
			</div>
			<div class="form-group">
				<label for="blogType">新闻类型：</label><br>
				<c:forEach items="${types}" var="type" varStatus="s">
				<label class="radio-inline">
					<input type="radio" name="blogType" id="blogType${type.typeId}" value="${type.typeId}"
						<c:if test="${empty blogInfo.blogType && '1' eq type.typeId}">checked="checked"</c:if>
			    		<c:if test="${type.typeId eq blogInfo.blogType}">checked="checked"</c:if> />${type.typeName}
				</label>
				</c:forEach>
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
				<label for="resource">新闻简介：</label>
				<textarea cols="30" id="subContent" class="form-control" name="subContent" rows="3" style="width: 585px;" placeholder="请输入博客简介">${blogInfo.subContent}</textarea>
			</div>
			<div class="form-group">
				<label for="blogContent">新闻内容：</label>
			    <textarea id="blogContent" name="blogContent">${blogInfo.blogContent}</textarea>
			</div>
			<div class="form-group">
				<label for="blogState">新闻状态：</label><br>
			    
			    <label class="radio-inline">
				  <input type="radio" name="blogState" id="blogState1" value="0" 
			    	<c:if test="${empty blogInfo.blogState}">checked="checked"</c:if>
			    	<c:if test="${'0' eq blogInfo.blogState}">checked="checked"</c:if>>
			    	已经完成，我要发布
				</label>
				&nbsp;&nbsp;
				<label class="radio-inline">
				  <input type="radio" name="blogState" id="blogState2" value="1" 
			    	<c:if test="${'1' eq blogInfo.blogState}">checked="checked"</c:if>>
			    	还未完成，存到草稿箱
				</label>
			</div>
			<input type="submit" class="btn btn-primary btn-sm" value="保存" />
			<input type="button" class="btn btn-primary btn-sm" value="重置" />
		</form>
	</div>
	
	<jsp:include page="../bottom.jsp" />
</body>
</html>

