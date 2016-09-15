<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<div id="adoptionForm">
	<form:form modelAttribute="application" action="/app/adopt"
		method="post">
		<div class="section">
			<c:import url="/WEB-INF/fragments/adopt/pet-info.jsp" />
		</div>
		<div class="section">
			<c:import url="/WEB-INF/fragments/adopt/applicant-info.jsp" />
		</div>
		<div class="section">
			<c:import url="/WEB-INF/fragments/adopt/household-info.jsp" />
		</div>
		<div class="section">
			<c:import url="/WEB-INF/fragments/adopt/current-pets-static.jsp" />
		</div>
		<div class="section">
			<c:import url="/WEB-INF/fragments/adopt/previous-pets-static.jsp" />
		</div>
		<div class="section">
			<c:import url="/WEB-INF/fragments/adopt/vet-history.jsp" />
		</div>
		<div class="section">
			<c:import url="/WEB-INF/fragments/adopt/living-conditions.jsp" />
		</div>
		<div class="section">
			<c:import url="/WEB-INF/fragments/adopt/reasons-for-adopting.jsp" />
		</div>
		<div class="section">
			<c:import url="/WEB-INF/fragments/adopt/disclaimer.jsp" />
		</div>

		<div class="section">
			<div class="row grid2col">
				<div class="column">
					<div class="signature">Signature of Applicant</div>
				</div>
				<div class="column">
					<div class="signature">Date</div>
				</div>
			</div>
		</div>
	</form:form>
</div>