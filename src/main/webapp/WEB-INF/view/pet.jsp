<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt"%>
<script type="text/javascript">
<!--
	var petId = '${pet.id}';
	$(function() {
		$("#btnAdopt").button().click(function() {
			window.location = '<c:url value="/app/adopt"/>/${pet.id}';
		});
	});
//-->
</script>
<div class="module">
	<div class="innards">
		<div class="selfclear">
			<c:forEach items="${pet.media.photos.photo}" var="photo">
				<c:if test="${photo.id eq 1 and photo.size eq 'pn' }">
					<div id="petImageContainer">
						<img id="petImage" src="${photo.value}" title="${pet.name}"
							class="shadow" />
					</div>
				</c:if>
			</c:forEach>

			<div id="petThumbnails">
				<c:forEach items="${pet.media.photos.photo}" var="photo"
					varStatus="status">
					<c:if test="${photo.size eq 'pn'}">
						<div class="pet-thumbnail">
							<img src="${photo.value}" title="${pet.name}" class="shadow"
								height="50" />
						</div>
					</c:if>
				</c:forEach>
			</div>

			<div class="pet-details">
				<h2>${pet.name}</h2>
				<c:forEach items='${pet.breeds.breed}' var='breed'
					varStatus='status'>
				${breed}<c:if test='${not status.last}'> / </c:if>
				</c:forEach>
				<hr>
				<div>${pet.size.description}&nbsp;&#8226;&nbsp;${pet.age.value}&nbsp;&#8226;&nbsp;${pet.sex.description}</div>
				<hr>
				<h4>More info:</h4>
				<ul id="petOptions">
					<c:forEach items='${pet.options.option}' var='option'
						varStatus='status'>
						<li>${option.description}</li>
					</c:forEach>
				</ul>
			</div>
			<div style="float: left">
				<button type="button" id="btnAdopt">Adopt ${pet.name}</button>
			</div>
		</div>
		<div class="pet-desc">${pet.description}</div>
	</div>
</div>