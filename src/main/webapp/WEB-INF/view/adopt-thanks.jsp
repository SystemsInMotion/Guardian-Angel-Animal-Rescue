<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<div class="module">
	<div class="innards">
		<h3>Thank You</h3>
		<hr>
		<p>Thank you for your interest in adopting ${petName}.
			&nbsp;Someone will be in touch with you shortly.</p>
		<p>
			<br> <a href="<c:url value='/app/home'/>">Back to home page</a>
		</p>
	</div>
</div>
