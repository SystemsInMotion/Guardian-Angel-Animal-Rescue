<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<h3>Pet to Adopt</h3>
<div class="module">
	<form:hidden path="pet.name" />
	<c:choose>
		<c:when test="${not empty pet.media}">
			<c:forEach items="${pet.media.photos.photo}" var="photo">
				<c:if test="${photo.id eq 1 and photo.size eq 'pn' }">
					<div style="float: left">
						<img id="petImage" src="${photo.value}" title="${pet.name}"
							class="shadow" />
					</div>
				</c:if>
			</c:forEach>

			<div class="pet-details">
				<h2>${pet.name}</h2>
				<c:forEach items='${pet.breeds.breed}' var='breed'
					varStatus='status'>
				${breed}<c:if test='${not status.last}'> / </c:if>
				</c:forEach>
				<hr>
				<div>${pet.size.description}&nbsp;&#8226;&nbsp;${pet.age.value}&nbsp;&#8226;&nbsp;${pet.sex.description}</div>
				<hr>
			</div>
		</c:when>
		<c:otherwise>
			<div class="row grid2col">
		<div class="column">
			<label for="pet.name">What's the name of the pet you wish to adopt?</label>
			<input type="text" name="pet.name">
		</div>
		<div class="column">
			<label for="pet.description">Brief description</label>
			<input type="text" name="pet.description">
		</div>
	</div>
		</c:otherwise>
	</c:choose>
</div>