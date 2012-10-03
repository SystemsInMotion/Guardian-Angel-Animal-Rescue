<!DOCTYPE html>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt"%>
<%@ taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles"%>
<html>
<head>
<%@ include file="/WEB-INF/fragments/meta-tags.jsp"%>
<%@ include file="/WEB-INF/fragments/scripts.jsp"%>

<tiles:useAttribute id="pageJS" name="page-js" classname="java.lang.String" ignore="true" />

<c:if test="${not empty pageJS}">
	<script type="text/javascript" src="${pageJS}"></script>
</c:if>

<%@ include file="/WEB-INF/fragments/styles.jsp"%>

<title><tiles:getAsString name="title" /> - GAAR Michigan</title>
<link rel="alternate" type="application/rss+xml" title="Blog" href="http://www.gaarmichigan.org/rss/blog">
<link rel="canonical" href="./home_files/home.htm">
</head>

<body class="body cc-page cc-page-index cc-indexpage cc-pagemode-default cc-content-parent" id="page-257510719" >
	<tiles:insertAttribute name="body" />
</body>
</html>