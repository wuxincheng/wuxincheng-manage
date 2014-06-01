<%@ page contentType="text/html;charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<link href="<%=request.getContextPath()%>/assets/images/favicon.png" type="image/x-icon" rel="shortcut icon"/>
<link href="<%=request.getContextPath()%>/assets/images/favicon.png" type="image/x-icon" rel="icon"/>
</head>
<body>
	<jsp:include page="../top.jsp" />
	
	<div class="col-sm-9 col-sm-offset-3 col-md-10 col-md-offset-2 main">
		<h5 class="page-header page-target">类别管理</h5>
		<form class="form-inline" role="form">
			<a href="<%=request.getContextPath()%>/manage/type/edit?typeId=">
			<button type="button" class="btn btn-success btn-sm">新增</button>
			</a>
		</form>
		<hr />
		<div class="table-responsive">
			<table class="table table-hover">
				<thead>
					<tr>
						<th>序号</th>
						<th>类别名称</th>
						<th>博客数量</th>
						<th>博客阅读量</th>
						<th>类别说明</th>
						<th>创建时间</th>
						<th>操作</th>
					</tr>
				</thead>
				<tbody>
					<c:choose>
					<c:when test="${not empty types}">
					<c:set var="bbcount" value="0" />
					<c:set var="ddcount" value="0" />
					<c:forEach items="${types}" var="type" varStatus="s">
					<tr>
						<td>${s.index + 1}</td>
						<td>${type.typeName}</td>
						<td style="text-align: right; font-weight:bold;">
							<fmt:formatNumber value="${type.bcount}" pattern="###,###,###,##0" />
							&nbsp;&nbsp;
							<c:set var="bbcount" value="${bbcount + type.bcount}" />
						</td>
						<td style="text-align: right; font-weight:bold;">
							<span class="label label-google"><fmt:formatNumber value="${type.dcount}" pattern="###,###,###,##0" /></span>
							&nbsp;&nbsp;
							<c:set var="ddcount" value="${ddcount + type.dcount}" />
						</td>
						<td>${type.typeMemo}</td>
						<td>${type.createTimeStr}</td>
						<td>
							<a href="<%=request.getContextPath()%>/manage/type/edit?typeId=${type.typeId}">
								<button type="button" class="btn btn-success btn-sm">修改</button>
							</a>
						</td>
					</tr>
					</c:forEach>
					<tr class="active">
						<td colspan="2" style="text-align: center; font-weight:bold;">总计</td>
						<td style="text-align: right; font-weight:bold;">
							<fmt:formatNumber value="${bbcount}" pattern="###,###,###,##0" />
							&nbsp;&nbsp;
						</td>
						<td style="text-align: right; font-weight:bold;">
							<span class="label label-google"><fmt:formatNumber value="${ddcount}" pattern="###,###,###,##0" /></span>
							&nbsp;&nbsp;
						</td>
						<td>---</td>
						<td>---</td>
						<td>---</td>
					</tr>
					</c:when>
					<c:otherwise>
					<div class="alert alert-info">
						<button type="button" class="close" data-dismiss="alert" aria-hidden="true">&times;</button>
						<strong>提示：</strong>系统没有查询到类别信息
					</div>
					</c:otherwise>
					</c:choose>
					
					<jsp:include page="../msg.jsp" />
					
				</tbody>
			</table>
			<div class="tab-bottom-line"></div>
			
		</div>
	</div>
	
	<jsp:include page="../bottom.jsp" />
</body>
</html>
