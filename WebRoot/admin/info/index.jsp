<%@ page language="java" errorPage="/error.jsp" pageEncoding="UTF-8"
	contentType="text/html;charset=utf-8"%>
<%@ include file="/common/taglibs.jsp"%>
<%@ include file="../common/website.jsp"%>
<head>
<title>信息</title>
<link rel="stylesheet" href="${ctx}/admin/styles/info.css" type="text/css" />
</head>
<body>
	<div class="container mt">
		<div class="row-fluid">
			<s:include value="../left.jsp"></s:include>
			<div class="span10">
				<ul class="breadcrumb">
					<li><a href="${ctx}/admin/index">首页</a> <span class="divider">/</span>
					</li>
					<li><a href="${ctx}/admin/info/">信息中心</a> <span
						class="divider">/</span>
					</li>
					<li class="active">信息列表</li>
				</ul>
				<div class="well com">
					<div class="page-header">
						<div class="pull-right">
							<a href="<c:url value='/admin/info/add'/>"
								class="btn btn-primary"> 添加</a>
						</div>
						<h3 class="yahei">信息列表</h3>
					</div>
					<ul id="myTab" class="nav nav-tabs">
						<li class="active"><a data-toggle="tab"
							href="${ctx}/admin/info">信息列表</a>
						</li>
					</ul>
					<s:action name="info!search" id="infoList" executeResult="false">
						<s:param name="query.website">${website}</s:param>
					</s:action>
					<table class="table table-striped table-bordered table-condensed">
						<thead>
							<tr>
								<th>标题</th>
								<th>访问URL</th>
								<th>操作</th>
							</tr>
						</thead>
						<tbody>
							<s:iterator value="%{#infoList.infos}" status="rowStatus">
								<tr id="market20">
									<td><span class="l" style="font-size: 14px;"><a
											href="<c:url value='/admin/info/view/${id}'/>" class="">${title}</a>
									</span></td>
									<td><span class="l c999">${url}</span>
									</td>
									<td><a href="<c:url value='/admin/info/edit/${id}'/>">修改</a>
										<a href="<c:url value='/info!delete.action?id=${id}'/>"
										onclick="deleteData('确定要删除该信息吗？','market',20);">删除</a>
									</td>
								</tr>
							</s:iterator>
						</tbody>
					</table>
					<%@ include file="/common/page.jsp"%>
				</div>
				<div class="c"></div>
			</div>
		</div>
	</div>
</body>

