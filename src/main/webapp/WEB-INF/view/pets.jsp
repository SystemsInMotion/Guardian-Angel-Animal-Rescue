<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt"%>
<%@ taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles"%>
<div class="module-left">
	<div class="innards">
		<h3>${animalType}</h3>
		<c:choose>
			<c:when test="${pets == null}">
				<c:choose>
					<c:when test="${animalType == 'Dogs'}">
						There seems to be a problem with PetFinder.<br>
						To view all of our dogs, click <a href="https://www.petfinder.com/pet-search?shelter_id=MI144&animal=Dog">here</a>
					</c:when>
					<c:otherwise>
						There seems to be a problem with PetFinder.<br>
						To view all of our cats, click <a href="https://www.petfinder.com/pet-search?shelter_id=MI144&animal=Cat">here</a>
					</c:otherwise>
				</c:choose>
			</c:when>
			<c:otherwise>
				<hr>
				<div class="pets-thumbnails">
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
					</c:forEach>
				</div>
			</c:otherwise>
		</c:choose>
	</div>
</div>