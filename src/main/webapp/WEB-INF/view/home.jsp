<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt"%>
<style type="text/css">
.petDisplay {
	display: inline-block;
}
.petDisplay img {
	height: 100px;
	box-shadow: rgba(0, 0, 0, 0.35) 3px 3px 3px;
	padding: 5px;
	background: white;
	margin: 2px;
}
.petDisplay .petDetails {
	display: none;
}
</style>
<script type="text/javascript" src="http://code.jquery.com/jquery-1.8.2.js"></script>
<script type="text/javascript">
$(window).ready(function(){
	$(".petDisplay img")
		.mouseover(function(evt) {
			var that = this;
			$(this).animate({height: 200}, 150, function() {
				$(that).parent(/*a*/).parent(/*.petDisplay*/).find(".petDetails").show();
			});
		})
		.mouseout(function(evt) {
			$(this).parent(/*a*/).parent(/*.petDisplay*/).find(".petDetails").hide();
			$(this).animate({height: 100}, 150);
		});
});
</script>
<h3>Cats</h3>
<c:forEach items="${cats}" var="cat">
	<div class="petDisplay">
		<h3>${cat.name}</h3>
		<div class="petDetails">
			<h2>${cat.age}</h2>
			<ul>
			<c:forEach items="${cat.breeds.breed}" var="breed">
				<li>${breed}</li>
			</c:forEach>
			</ul>
		</div>
		<c:forEach items="${cat.media.photos.photo}" var="photo" varStatus="status">
			<c:if test="${photo.id eq 1 and photo.size eq 'pn' }">
				<a href="<c:url value='/app/pet/${cat.id}'/>">
					<img src="${photo.value}" title="${cat.name}" />
				</a>
			</c:if>
		</c:forEach>
	</div>
</c:forEach>


<h3>Dogs</h3>
<c:forEach items="${dogs}" var="dog">
	<div class="petDisplay">
		<div class="petDetails">
			<h3>${dog.name}</h3>
			<h2>${dog.age}</h2>
			<ul>
			<c:forEach items="${dog.breeds.breed}" var="breed">
				<li>${breed}</li>
			</c:forEach>
			</ul>
		</div>
		<c:forEach items="${dog.media.photos.photo}" var="photo" varStatus="status">
			<c:if test="${photo.id eq 1 and photo.size eq 'pn' }">
				<a href="<c:url value='/app/pet/${dog.id}'/>">
					<img src="${photo.value}" title="${dog.name}" />
				</a>
			</c:if>
		</c:forEach>
	</div>
</c:forEach>
