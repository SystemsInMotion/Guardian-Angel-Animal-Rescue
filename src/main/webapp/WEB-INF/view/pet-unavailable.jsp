<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt"%>

<div class="module-left">
	<div class="innards">
		<h3>Pet not found.</h3>
		<hr>
		<p>Sorry, the pet you are looking for cannot be found.</p>
		<div>
			Please visited all of our available pets on one of the following
			pages:
			<ul>
				<li><a href="<c:url value='/app/cats'/>">Cats</a></li>
				<li><a href="<c:url value='/app/dogs'/>">Dogs</a></li>
				<li><a href="<c:url value='/app/home'/>">Home</a></li>
			</ul>
		</div>
	</div>
</div>