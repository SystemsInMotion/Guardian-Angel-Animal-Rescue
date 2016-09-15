<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt"%>
<button class="slider-button-left">&nbsp;</button>
<div class="slider-wrapper">
	<div class="slider">
		<c:forEach items="${dogs}" var="dog">
			<div class="pet-thumbnail">
                <h4 id = "dog-checker"><a href="/app/pet/${dog.id}">${dog.name}</a></h4>
                <c:choose>
                    <c:when test="${empty dog.media.photos}">
                        <a href="/app/pet/${dog.id}"><img
                                src="/images/no_image-128.png" title="${dog.name}" class="shadow" /></a>
                    </c:when>
                    <c:otherwise>
                        <c:forEach items="${dog.media.photos.photo}" var="photo"
                                   varStatus="status">
                            <c:if test="${photo.id eq 1 and photo.size eq 'pn' }">
                                <a href="/app/pet/${dog.id}"><img
                                        src="${photo.value}" title="${dog.name}" class="shadow" /></a>
                            </c:if>
                        </c:forEach>
                    </c:otherwise>
                </c:choose>

				<%--<c:forEach items="${dog.media.photos.photo}" var="photo"
					varStatus="status">
					<c:if test="${photo.id eq 1 and photo.size eq 'pn' }">
						<a href="/app/pet/${dog.id}"><img
							src="${photo.value}" title="${dog.name}" class="shadow" /></a>
					</c:if>
				</c:forEach>--%>
			</div>
		</c:forEach>
	</div>
</div>
<button class="slider-button-right">&nbsp;</button>
