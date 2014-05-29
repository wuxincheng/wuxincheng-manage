<%@ page contentType="text/html;charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<link href="<%=request.getContextPath()%>/assets/css/bootstrap.css" rel="stylesheet">
</head>
<style type="text/css">
	.wuxc-container {
		margin-right: auto;
		margin-left: auto;
		padding-left: 15px;
		padding-right: 15px;
	}
</style>
<body>
	<div class="wuxc-container">
		<table class="table table-hover">
			<thead>
				<tr>
					<th>序号</th>
					<th>缩略图</th>
					<th>状态</th>
					<th>博客标题</th>
					<th>博客类别</th>
					<th>操作时间</th>
					<th>阅读量</th>
					<th>操作</th>
				</tr>
			</thead>
			<tbody>
				<c:set var="totalRead" value="0" />
				<c:choose>
				<c:when test="${not empty pager.blogInfos}">
				<c:forEach items="${pager.blogInfos}" var="blogInfo" varStatus="s">
				<tr>
					<td>${s.index + 1}</td>
					<td><img src="${blogInfo.picLink}" width="50px" height="33px" /></td>
					<td>
						<c:if test="${'0' eq blogInfo.blogState}">
						<span class="label label-success">已发布</span>
						</c:if>
						
						<c:if test="${'1' eq blogInfo.blogState}">
						<span class="label label-danger">未发布</span>
						</c:if>
					</td>
					<td>${blogInfo.blogTitle}</td>
					<td>${blogInfo.blogTypeName}</td>
					<td>${blogInfo.updateTime}</td>
					<td style="text-align: right; font-weight:bold;">
						<a href="#" onclick="showSocialCount('${blogInfo.blogId}');">
						<fmt:formatNumber value="${blogInfo.readCount}" pattern="###,###,###,##0" />
						</a>
						<c:set var="totalRead" value="${totalRead + blogInfo.readCount}" />&nbsp;&nbsp;
					</td>
					<td>
						<a href="<%=request.getContextPath()%>/manage/blogInfo/edit?blogId=${blogInfo.blogId}">
							<button type="button" class="btn btn-warning btn-sm">修改</button>
						</a>
						
						<button type="button" class="btn btn-danger btn-sm" onclick="if(confirm('您确定执行删除么?')) document.location = '<%=request.getContextPath()%>/manage/blogInfo/delete?blogId=${blogInfo.blogId}';">删除</button>
					</td>
				</tr>
				</c:forEach>
				<tr>
					<td colspan="5" style="text-align: center; font-weight: bold;">本页博客总访问量</td>
					<td colspan="2" style="text-align: right; font-weight: bold;">
						<fmt:formatNumber value="${totalRead}" pattern="###,###,###,##0" />&nbsp;&nbsp;
					</td>
					<td>&nbsp;</td>
				</tr>
				</c:when>
				<c:otherwise>
				</c:otherwise>
				</c:choose>
				
				<jsp:include page="../msg.jsp" />
			</tbody>
		</table>
	</div>
</body>

