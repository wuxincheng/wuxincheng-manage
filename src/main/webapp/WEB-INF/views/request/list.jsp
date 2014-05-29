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
		<h5 class="page-header page-target">访问查询</h5>
		<form class="form-inline" role="form">
			<input type="text" class="form-control" placeholder="开始日期">
			<input type="text" class="form-control" placeholder="结束日期">
			<input type="text" class="form-control" placeholder="博客标题">
			<button type="button" class="btn btn-primary btn-sm">查询</button>
			<button type="reset" class="btn btn-primary btn-sm">重置</button>
			
			<button type="button" class="btn btn-primary btn-sm" data-toggle="modal" data-target="#myModal">分析</button>
			
			
			
			
			<div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
			  <div class="modal-dialog">
			    <div class="modal-content">
			      <div class="modal-header">
			        <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
			        <h4 class="modal-title" id="myModalLabel">Modal title</h4>
			      </div>
			      <div class="modal-body">
			        <table class="table table-bordered table-striped">
      <thead>
       <tr>
         <th style="width: 100px;">Name</th>
         <th style="width: 50px;">type</th>
         <th style="width: 50px;">default</th>
         <th>description</th>
       </tr>
      </thead>
      <tbody>
       <tr>
         <td>backdrop</td>
         <td>boolean or the string <code>'static'</code></td>
         <td>true</td>
         <td>Includes a modal-backdrop element. Alternatively, specify <code>static</code> for a backdrop which doesn't close the modal on click.</td>
       </tr>
       <tr>
         <td>keyboard</td>
         <td>boolean</td>
         <td>true</td>
         <td>Closes the modal when escape key is pressed</td>
       </tr>
       <tr>
         <td>show</td>
         <td>boolean</td>
         <td>true</td>
         <td>Shows the modal when initialized.</td>
       </tr>
       <tr>
         <td>remote</td>
         <td>path</td>
         <td>false</td>
         <td><p>If a remote URL is provided, <strong>content will be loaded one time</strong> via jQuery's <code>load</code> method and injected into the <code>.modal-content</code> div. If you're using the data-api, you may alternatively use the <code>href</code> attribute to specify the remote source. An example of this is shown below:</p>
<div class="highlight"><pre><code class="html"><span class="nt">&lt;a</span> <span class="na">data-toggle=</span><span class="s">&quot;modal&quot;</span> <span class="na">href=</span><span class="s">&quot;remote.html&quot;</span> <span class="na">data-target=</span><span class="s">&quot;#modal&quot;</span><span class="nt">&gt;</span>Click me<span class="nt">&lt;/a&gt;</span>
</code></pre></div>
         </td>
       </tr>
      </tbody>
    </table>
			      </div>
			      <div class="modal-footer">
			        <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
			        <button type="button" class="btn btn-primary">Save changes</button>
			      </div>
			    </div><!-- /.modal-content -->
			  </div><!-- /.modal-dialog -->
			</div><!-- /.modal -->
			
			
			
			
			
			
			
			
			
			
			
			
			
			
			
		</form>
		<hr />
		<div class="table-responsive">
			<table class="table table-hover">
				<thead>
					<tr>
						<th>序号</th>
						<th>访问时间</th>
						<th>访问IP地址</th>
						<th>系统路径</th>
						<th>博客</th>
						<th>访问来源</th>
					</tr>
				</thead>
				<tbody>
					<c:choose>
					<c:when test="${not empty pager.pojoList}">
					<c:forEach items="${pager.pojoList}" var="pojo" varStatus="s">
					<tr>
						<td>${s.index + 1}</td>
						<td>${pojo.requestTime}</td>
						<td><span class="label label-success">${pojo.requestIp}</span></td>
						<td><span class="label label-info">${pojo.systemPath}</span></td>
						<td>${pojo.blogTitle}</td>
						<td>${pojo.socialType}</td>
					</tr>
					</c:forEach>
					</c:when>
					<c:otherwise>
					<div class="alert alert-info">
						<button type="button" class="close" data-dismiss="alert" aria-hidden="true">&times;</button>
						<strong>提示：</strong>系统没有查询到访问信息
					</div>
					</c:otherwise>
					</c:choose>
					
					<jsp:include page="../msg.jsp" />
				</tbody>
			</table>
			<div class="tab-bottom-line"></div>
			
			<ul class="pager">
				<li <c:if test="${'1' eq pager.currentPage}">class="disabled"</c:if>>
					<a <c:if test="${pager.currentPage > 1}">href="<%=request.getContextPath()%>/manage/request/list?currentPage=1"</c:if>>首页</a>
				</li>
				
				<li <c:if test="${'1' eq pager.currentPage}">class="disabled"</c:if>>
					<a <c:if test="${pager.currentPage > 1}">href="<%=request.getContextPath()%>/manage/request/list?currentPage=${pager.currentPage-1}"</c:if>>上一页</a>
				</li>
				
				<li <c:if test="${pager.lastPage eq pager.currentPage}">class="disabled"</c:if>>
					<a <c:if test="${pager.currentPage < pager.lastPage}">href="<%=request.getContextPath()%>/manage/request/list?currentPage=${pager.currentPage+1}"</c:if>>下一页</a>
				</li>
				
				<li <c:if test="${pager.lastPage eq pager.currentPage}">class="disabled"</c:if>>
					<a <c:if test="${pager.currentPage < pager.lastPage}">href="<%=request.getContextPath()%>/manage/request/list?currentPage=${pager.lastPage}"</c:if>>尾页</a>
				</li>
				
				<li class="">&nbsp;</li>
				<li class=""><strong>${pager.currentPage}/${pager.lastPage}</strong></li>
				<li class="">&nbsp;</li>
				<li class="disabled">共<strong>${pager.totalCount}</strong>条</li>
				<li class="">&nbsp;</li>
				<li class="">每页显示<strong>10</strong>条</li>
			</ul>
		</div>
	</div>
	
	
	<jsp:include page="../bottom.jsp" />
</body>
</html>
