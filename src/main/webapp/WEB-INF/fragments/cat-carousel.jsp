<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt"%>
<button class="slider-button">&lt;</button>
<div class="slider-wrapper">
	<div class="slider">
		<c:forEach items="${cats}" var="cat">
			<div class="pet-thumbnail">
				<h4>${cat.name}</h4>
				<c:forEach items="${cat.media.photos.photo}" var="photo"
					varStatus="status">
					<c:if test="${photo.id eq 1 and photo.size eq 'pn' }">
						<a href="<c:url value='/app/pet/${cat.id}'/>"><img
							src="${photo.value}" title="${cat.name}" class="shadow" /></a>
					</c:if>
				</c:forEach>
			</div>
		</c:forEach>
	</div>
</div>
<button class="slider-button">&gt;</button>
