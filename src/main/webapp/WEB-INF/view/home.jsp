<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt"%>
<div id="petCarousels">
	<div class="carousel">
		<button class="slider-button">&lt;</button>
		<div class="slider-wrapper">
			<div class="slider">
				<c:forEach items="${cats}" var="cat">
					<div class="pet-thumbnail">
						<h4>${cat.name}</h4>
						<c:forEach items="${cat.media.photos.photo}" var="photo"
							varStatus="status">
							<c:if test="${photo.id eq 1 and photo.size eq 'x' }">
								<a href="<c:url value='/app/pet/${cat.id}'/>"><img
									src="${photo.value}" title="${cat.name}" class="shadow" /></a>
							</c:if>
						</c:forEach>
					</div>
				</c:forEach>
			</div>
		</div>
		<button class="slider-button">&gt;</button>
	</div>

	<div class="carousel">
		<button class="slider-button">&lt;</button>
		<div class="slider-wrapper">
			<div class="slider">
				<c:forEach items="${dogs}" var="dog">
					<div class="pet-thumbnail">
						<h4>${dog.name}</h4>
						<c:forEach items="${dog.media.photos.photo}" var="photo"
							varStatus="status">
							<c:if test="${photo.id eq 1 and photo.size eq 'pn' }">
								<a href="<c:url value='/app/pet/${dog.id}'/>"><img
									src="${photo.value}" title="${dog.name}"  class="shadow" /></a>
							</c:if>
						</c:forEach>
					</div>
				</c:forEach>
			</div>
		</div>
		<button class="slider-button">&gt;</button>
	</div>
</div>

<c:forEach items="${cats}" var="cat" varStatus="status">
	<c:forEach items="${cat.media.photos.photo}" var="photo">
		<c:if test="${photo.id eq 1 and photo.size eq 'x' and status.first}">
			<img id="previewImg" src="${photo.value}" title="${cat.name}" class="shadow" />
		</c:if>
	</c:forEach>
</c:forEach>
