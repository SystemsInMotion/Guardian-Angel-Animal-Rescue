<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<c:set var="uri"
	value="${requestScope['javax.servlet.forward.request_uri']}" />
<ul>
	<li><a href="<c:url value='/app/support'/>"
		<c:if test="${fn:endsWith(uri,'support')}">class='selected'</c:if>>Support
			GAAR</a></li>
	<li class="separator"><span>&nbsp;</span></li>
	<li><a href="<c:url value='/app/support/kroger'/>"
		<c:if test="${fn:contains(uri,'kroger')}">class='selected'</c:if>>Kroger
			Community Rewards</a></li>
	<li class="separator"><span>&nbsp;</span></li>
	<li><a href="<c:url value='/app/support/search-shop-earn'/>"
		<c:if test="${fn:contains(uri,'search-shop-earn')}">class='selected'</c:if>>Search,
			Shop, &amp; Earn</a></li>
	<li class="separator"><span>&nbsp;</span></li>
	<li><a href="<c:url value='/app/support/wishlist'/>"
		<c:if test="${fn:contains(uri,'wishlist')}">class='selected'</c:if>>Wish
			List</a></li>
</ul>
