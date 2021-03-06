<%@ page language="java" errorPage="/error.jsp" pageEncoding="UTF-8"
	contentType="text/html;charset=utf-8"%>
<!DOCTYPE html>
<%@ include file="/common/taglibs.jsp"%>
<html >
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title><decorator:title />_EShow开源框架</title>
<%@ include file="/common/style/bootstrap.jsp"%>
<link href="${dll}/styles/style.css" rel="stylesheet" />
<%@ include file="/common/jquery.jsp"%>
<script src="${dll}/bootstrap/js/bootstrap-carousel.js"></script>
<decorator:head />
</head>
<body
	<decorator:getProperty property="body.id" writeEntireProperty="true"/>
	<decorator:getProperty property="body.class" writeEntireProperty="true"/>>
	<%@ include file="/common/header.jsp"%>
	<decorator:body />
	<footer class="footer container">
	<p class="pull-right">
		<a href="#">回到顶端</a>
	</p>
	<p>ICP备案编号：苏ICP备10018847号</p>
	<p class="links">
		<a href="${ctx}/info/about">关于我们</a> <a href="${ctx}/info/feedback">汇报Bug</a>
		<a href="${ctx}/info/team">团队成员</a> <a href="${ctx}/info/svn">源码</a> <a
			href="${ctx}/info/joinus">加入我们</a> <a href="${ctx}/info/link">友情链接</a>
	</p>
	<p>
		Copyright © 2009 www.eshow.org.cn All rights reserved.
		&nbsp;&nbsp;&nbsp;&nbsp;典型案例： <a href="http://www.fanbao.cn"
			target="_blank">翻宝网</a> <a href="http://www.mileshu.com"
			target="_blank">米乐鼠</a> &nbsp;&nbsp;&nbsp;&nbsp;支持公司： <a
			href="http://www.daoqun.net" target="_blank">无锡到群软件科技有限公司 </a>
		&nbsp;&nbsp;&nbsp;&nbsp;开源伙伴： <a
			href="http://www.opensourceforce.org/" target="_blank">开源力量 </a>
		&nbsp;&nbsp;&nbsp;&nbsp;
	</p>
	</footer>
</body>
</html>
