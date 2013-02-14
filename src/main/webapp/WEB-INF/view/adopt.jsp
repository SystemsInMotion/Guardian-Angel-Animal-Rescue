<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<div class="module">
	<div id="adoptionForm">
		<form:form method="post" modelAttribute="application" action="/app/adopt">
			<c:import url="/WEB-INF/fragments/adopt/pet-info.jsp" />
			<c:import url="/WEB-INF/fragments/adopt/applicant-info.jsp" />
			<c:import url="/WEB-INF/fragments/adopt/household-info.jsp" />
			<c:import url="/WEB-INF/fragments/adopt/current-pets-dynamic.jsp" />
			<c:import url="/WEB-INF/fragments/adopt/previous-pets-dynamic.jsp" />
			<c:import url="/WEB-INF/fragments/adopt/vet-history.jsp" />
			<c:import url="/WEB-INF/fragments/adopt/living-conditions.jsp" />
			<c:import url="/WEB-INF/fragments/adopt/reasons-for-adopting.jsp" />
			<c:import url="/WEB-INF/fragments/adopt/disclaimer.jsp" />

			<div class="row">
				<input type="submit" value="Submit">
			</div>
		</form:form>
	</div>
</div>