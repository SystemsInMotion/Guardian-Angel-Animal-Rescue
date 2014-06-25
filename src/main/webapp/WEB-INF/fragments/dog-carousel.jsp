<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt"%>
<button class="slider-button-left">&nbsp;</button>
<div class="slider-wrapper">
	<div class="slider">
		<c:forEach items="${dogs}" var="dog">
			<div class="pet-thumbnail">
				<h4 id = "dog-checker">${dog.name}</h4>
				<c:forEach items="${dog.media.photos.photo}" var="photo"
					varStatus="status">
					<c:if test="${photo.id eq 1 and photo.size eq 'pn' }">
						<a href="<c:url value='/app/pet/${dog.id}'/>"><img
							src="${photo.value}" title="${dog.name}" class="shadow" /></a>
					</c:if>
				</c:forEach>
			</div>
		</c:forEach>
	</div>
</div>
<button class="slider-button-right">&nbsp;</button>
