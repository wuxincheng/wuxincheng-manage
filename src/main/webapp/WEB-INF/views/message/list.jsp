<%@ page contentType="text/html;charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<link href="<%=request.getContextPath()%>/assets/images/favicon.png" type="image/x-icon" rel="shortcut icon"/>
<link href="<%=request.getContextPath()%>/assets/images/favicon.png" type="image/x-icon" rel="icon"/>
</head>
<body>
	<jsp:include page="../top.jsp" />
	
	<div class="container main-container">
		<h5 class="page-header page-target">基础管理 - 用户留言管理</h5>
		<div class="table-responsive">
			<table class="table table-hover">
				<thead>
					<tr>
						<th style="text-align:center;">序号</th>
						<th style="text-align:center;">留言标题</th>
						<th style="text-align:center;">用户名</th>
						<th style="text-align:center;">创建时间</th>
						<th style="text-align:center;">操作</th>
					</tr>
				</thead>
				<tbody>
					<c:choose>
					<c:when test="${not empty messages}">
					<c:forEach items="${messages}" var="message" varStatus="s">
					<tr>
						<td style="text-align:center;">${s.index + 1}</td>
						<td style="text-align:center;">${message.msgTitle}</td>
						<td style="text-align:center;">${message.username}</td>
						<td style="text-align:center;">${message.createTime}</td>
						<td style="text-align:center;">
							<a href="<%=request.getContextPath()%>/manage/message/show?msgId=${message.msgId}">
								<button type="button" class="btn btn-success btn-sm">查看</button>
							</a>
							<!-- 
							
							<button type="button" class="btn btn-danger btn-sm" onclick="if(confirm('您确定执行删除么?')) document.location = '<%=request.getContextPath()%>/blogInfo/delete?blogId=${type.typeId}';">删除</button>
							
							<button type="button" class="btn btn-primary btn-sm">预览</button>
							<button type="button" class="btn btn-warning btn-sm">特殊标记</button>
							<button type="button" class="btn btn-danger btn-sm">禁用</button>
							 -->
						</td>
					</tr>
					
					</c:forEach>
					</c:when>
					<c:otherwise>
					<div class="alert alert-info">
						<button type="button" class="close" data-dismiss="alert" aria-hidden="true">&times;</button>
						<strong>提示：</strong>系统没有查询到用户留言信息
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
