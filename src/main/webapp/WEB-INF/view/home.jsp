<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt"%>
<h3>Cats</h3>
<c:forEach items="${cats}" var="cat">
	<c:forEach items="${cat.media.photos.photo}" var="photo"
		varStatus="status">
		<c:if test="${photo.id eq 1 and photo.size eq 't' }">
			<a href="<c:url value='/app/pet/${cat.id}'/>"><img
				src="${photo.value}" title="${cat.name}" class="shadow" /></a>
		</c:if>
	</c:forEach>
</c:forEach>


<h3>Dogs</h3>
<c:forEach items="${dogs}" var="dog">
	<c:forEach items="${dog.media.photos.photo}" var="photo"
		varStatus="status">
		<c:if test="${photo.id eq 1 and photo.size eq 't' }">
			<a href="<c:url value='/app/pet/${dog.id}'/>"><img
				src="${photo.value}" title="${dog.name}" /></a>
		</c:if>
	</c:forEach>
</c:forEach>
