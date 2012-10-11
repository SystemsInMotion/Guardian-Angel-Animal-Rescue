<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt"%>
<div class="selfclear">
	<c:forEach items="${pet.media.photos.photo}" var="photo">
		<c:if test="${photo.id eq 1 and photo.size eq 'pn' }">
			<div style="float: left">
				<img src="${photo.value}" title="${pet.name}" class="shadow" />
			</div>
		</c:if>
	</c:forEach>

	<div class="pet-details">
		<div class="pet-name">${pet.name}</div>
		<ul>
			<c:forEach items="${pet.breeds.breed}" var="breed">
				<li>${breed}</li>
			</c:forEach>
		</ul>
	</div>
</div>
<div class="pet-desc">${pet.description}</div>
<script>
var emps = ${serializedEmps}
</script>