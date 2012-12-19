<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<c:set var="uri"
	value="${requestScope['javax.servlet.forward.request_uri']}" />
<ul>
	<li><a href="<c:url value='/app/about'/>"
		<c:if test="${fn:endsWith(uri,'about')}">class='selected'</c:if>>About
			GAAR</a></li>
	<li class="separator"><span>&nbsp;</span></li>
	<li><a href="<c:url value='/app/about/team'/>"
		<c:if test="${fn:contains(uri,'team')}">class='selected'</c:if>>Our Team</a></li>
	<li class="separator"><span>&nbsp;</span></li>
</ul>
