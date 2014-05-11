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
		<h5 class="page-header page-target">类别管理 - 编辑类别 - <a href="#">返回</a></h5>
		<form action="<%=request.getContextPath()%>/type/doEdit" role="form" method="post">
			<!-- 隐藏字段 -->
			<input type="hidden" id="typeId" name="typeId" value="${type.typeId}" />
			<div class="form-group">
				<label for="typeName">类别名称：</label>
			    <input type="text" id="typeName" name="typeName" value="${type.typeName}" class="form-control" style="width: 585px;" placeholder="请输入类别名称" />
			</div>
			
			<div class="form-group">
				<label for="typeMemo">类别说明：</label>
				<textarea cols="30" id="typeMemo" class="form-control" name="typeMemo" rows="3" style="width: 585px;" placeholder="请输入类别说明">${type.typeMemo}</textarea>
			</div>
			<input type="submit" class="btn btn-primary btn-sm" value="保存" />
			<input type="button" class="btn btn-primary btn-sm" value="重置" />
		</form>
	</div>
	
	<jsp:include page="../bottom.jsp" />
</body>
</html>

