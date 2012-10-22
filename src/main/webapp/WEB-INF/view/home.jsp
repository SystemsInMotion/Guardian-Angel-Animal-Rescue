<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt"%>
<div class="module">
	<h3>Showings</h3>
	<p>
		<strong>Cats shown every Sat 1-4 pm</strong> at <a
			href="http://stores.petsmart.com/Store/Details/686" target="_blank">PetSmart
			in Commerce Twp</a> unless otherwise noted. If interested in meeting a
		particular pet, please <a href="http://www.gaarmichigan.org/contact/">email</a>
		us in advance. Private home visits may also be available. Our hotline
		number is (734) 516-2171.
	</p>
</div>

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
									src="${photo.value}" title="${dog.name}" class="shadow" /></a>
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
			<img id="previewImg" src="${photo.value}" title="${cat.name}"
				class="shadow" />
		</c:if>
	</c:forEach>
</c:forEach>
