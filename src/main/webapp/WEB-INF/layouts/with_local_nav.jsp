<!DOCTYPE html>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt"%>
<%@ taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles"%>
<html>
<head>
<%@ include file="/WEB-INF/fragments/meta-tags.jsp"%>
<%@ include file="/WEB-INF/fragments/styles.jsp"%>
<%@ include file="/WEB-INF/fragments/scripts.jsp"%>
<tiles:useAttribute id="pageJS" name="page-js" classname="java.lang.String" ignore="true" />
<c:if test="${not empty pageJS}"><script type="text/javascript" src="${pageJS}"></script></c:if>
<title><tiles:getAsString name="title" /> - GAAR Michigan</title>
</head>
<body id="home" class="home responsive">
	<div id="content">
		<jsp:include page="/WEB-INF/fragments/globalheader.jsp" />
		<jsp:include page="/WEB-INF/fragments/sidebar.jsp" />
		<div id="local-nav">
			<tiles:insertAttribute name="local-nav" />
		</div>
		<div id="splitContent">
			<tiles:insertAttribute name="center-content" />
		</div>
	</div>
	<!--/content-->
</body>
</html>