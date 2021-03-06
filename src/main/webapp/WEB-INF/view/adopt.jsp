<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<div class="module">
	<div class="innards">
		<div>
			<form:form method="post" modelAttribute="application" id="adoptionForm" name="adoptionForm"
                       action="/app/adopt/${pet.id}">
				<c:import url="/WEB-INF/fragments/adopt/pet-info.jsp" />
				<div id="formErrors" ></div>
				<c:import url="/WEB-INF/fragments/adopt/applicant-info.jsp" />
				<c:import url="/WEB-INF/fragments/adopt/household-info.jsp" />
				<c:import url="/WEB-INF/fragments/adopt/current-pets-dynamic.jsp" />
				<c:import url="/WEB-INF/fragments/adopt/previous-pets-dynamic.jsp" />
				<c:import url="/WEB-INF/fragments/adopt/vet-history.jsp" />
				<c:import url="/WEB-INF/fragments/adopt/living-conditions.jsp" />
				<c:import url="/WEB-INF/fragments/adopt/reasons-for-adopting.jsp" />
				<c:import url="/WEB-INF/fragments/adopt/disclaimer.jsp" />

				<div class="row">
					<button type="submit" id="submitBtn">Apply</button>
				</div>
			</form:form>
		</div>
	</div>
</div>