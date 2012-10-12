<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt"%>
<style type="text/css">
.petDisplay {
	display: inline-block;
}

.petDisplay img {
	height: 75px;
	box-shadow: rgba(0, 0, 0, 0.35) 3px 3px 3px;
	padding: 5px;
	background: white;
	margin: 2px;
}

.petDisplay .petDetails {
	display: none;
}
</style>
<script type="text/javascript"
	src="http://code.jquery.com/jquery-1.8.2.js"></script>
<script type="text/javascript">
	$(window).ready(
			function() {
				var speed = 200;
				$(".petDisplay img").mouseover(
						function(evt) {
							var that = this;
							$(this).animate(
									{
										height : 150
									},
									speed,
									function() {
										$(that).parent(/*a*/)
												.parent(/*.petDisplay*/);/*.find(
														".petDetails").show();*/
									});
						}).mouseout(
						function(evt) {
							$(this).parent(/*a*/).parent(/*.petDisplay*/)
									.find(".petDetails").hide();
							$(this).animate({
								height : 75
							}, speed);
						});
			});
</script>
<!-- <h3>Cats</h3> -->
<div class="pet-row-wrapper">
	<div class="pet-row">
		<c:forEach items="${cats}" var="cat">
			<div class="petDisplay" style="text-align: center">
				<h3>${cat.name}</h3>
				<div class="petDetails">
					<h4>${cat.age}</h4>
					<ul style="margin: none">
						<c:forEach items="${cat.breeds.breed}" var="breed">
							<li>${breed}</li>
						</c:forEach>
					</ul>
				</div>
				<c:forEach items="${cat.media.photos.photo}" var="photo"
					varStatus="status">
					<c:if test="${photo.id eq 1 and photo.size eq 'pn' }">
						<a href="<c:url value='/app/pet/${cat.id}'/>"> <img
							src="${photo.value}" title="${cat.name}" />
						</a>
					</c:if>
				</c:forEach>
			</div>
		</c:forEach>
	</div>
</div>

<!-- <h3>Dogs</h3> -->
<div class="pet-row-wrapper">
	<div class="pet-row">
		<c:forEach items="${dogs}" var="dog">
			<div class="petDisplay" style="text-align: center">
				<h3>${dog.name}</h3>
				<div class="petDetails">
					<h4>${dog.age}</h4>
					<ul style="margin: none">
						<c:forEach items="${dog.breeds.breed}" var="breed">
							<li>${breed}</li>
						</c:forEach>
					</ul>
				</div>
				<c:forEach items="${dog.media.photos.photo}" var="photo"
					varStatus="status">
					<c:if test="${photo.id eq 1 and photo.size eq 'pn' }">
						<a href="<c:url value='/app/pet/${dog.id}'/>"> <img
							src="${photo.value}" title="${dog.name}" />
						</a>
					</c:if>
				</c:forEach>
			</div>
		</c:forEach>
	</div>
</div>
