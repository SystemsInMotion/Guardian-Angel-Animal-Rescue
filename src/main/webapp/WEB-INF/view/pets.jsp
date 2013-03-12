<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt"%>
<%@ taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles"%>
<div class="module">
	<div class="innards">
		<h3>${animalType}</h3>
		<hr><div class="pets-thumbnails">
		<c:forEach items="${pets}" var="pet">
			<div class="pet-thumbnail">
				<h4>${pet.name}</h4>
				<c:forEach items="${pet.media.photos.photo}" var="photo"
					varStatus="status">
					<c:if test="${photo.id eq 1 and photo.size eq 'pn' }">
						<a href="<c:url value='/app/pet/${pet.id}'/>"><img
							src="${photo.value}" title="${pet.name}" class="shadow" /></a>
					</c:if>
				</c:forEach>
			</div>
		</c:forEach></div>
	</div>
</div>