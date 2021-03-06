<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt"%>
<div class="module">
	<div class="innards">
		<h3>Cats</h3>
		<hr>
        <div class="pet-thumbnail">
            <h4 id = "cat-checker"><a href="/app/pet/${cat.id}">${cat.name}</a></h4>
            <c:choose>
                <c:when test="empty(${cat.media.photos})">
                    <a href="/app/pet/${cat.id}"><img
                            src="/images/no_image-128.png" title="${cat.name}" class="shadow" /></a>
                </c:when>
                <c:otherwise>
                    <c:forEach items="${cat.media.photos.photo}" var="photo"
                               varStatus="status">
                        <c:if test="${photo.id eq 1 and photo.size eq 'pn' }">
                            <a href="/app/pet/${cat.id}"><img
                                    src="${photo.value}" title="${cat.name}" class="shadow" /></a>
                        </c:if>
                    </c:forEach>
                </c:otherwise>
            </c:choose>
        </div>
	</div>
</div>