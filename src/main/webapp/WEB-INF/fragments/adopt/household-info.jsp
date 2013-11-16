<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<h3>Household Information</h3>
<div class="module">
	<div class="innards">
		<c:choose>
			<c:when test="${not empty pet.lastUpdate}">
				<div class="row">
					<form:label for="livingSituation" path="livingSituation"
						cssErrorClass="error">Home</form:label>
					<select name="livingSituation" id="livingSituation"
						class="required"><option value="">Select...</option>
						<option value="own">Own Home</option>
						<option value="rent">Rent Home</option>
						<option value="apartment">Apartment</option>
						<option value="condo">Condo</option>
						<option value="other">Other</option>
					</select>
				</div>
				<c:import url="/WEB-INF/fragments/adopt/time-lived.jsp" />
				<c:import url="/WEB-INF/fragments/adopt/pets-allowed.jsp" />
			</c:when>
			<c:otherwise>
				<div>
					<label>Living Situation</label>
				</div>
				<div class="row grid5col">
					<div class="column">
						<input type="radio" /> Own Home
					</div>
					<div class="column">
						<input type="radio" /> Rent Home
					</div>
					<div class="column">
						<input type="radio" /> Apartment
					</div>
					<div class="column">
						<input type="radio" /> Condo
					</div>
					<div class="column">
						<input type="radio" /> Other
					</div>
				</div>
				<div class="row grid3col">
					<c:import url="/WEB-INF/fragments/adopt/time-lived.jsp" />
					<c:import url="/WEB-INF/fragments/adopt/pets-allowed.jsp" />
				</div>
			</c:otherwise>
		</c:choose>
		<div class="row">
			<form:label path="householdMemberCount" for="householdMemberCount"
				cssClass="inline">How may people are currently living in your
					household?</form:label>
			<input type="text" name="householdMemberCount"
				id="householdMemberCount" class="input2char digits required" />
		</div>
		<div class="row" id="householdMemberAgesDiv">
			<c:if test="${empty pet.lastUpdate}">
				<label class="inline">List the ages of each household
					member:</label>
				<input type="text" class="required">
			</c:if>
		</div>

		<div class="row" id="familyAwareDiv">
			<form:label for="familyAware" path="familyAware"
				cssErrorClass="error" cssClass="autoWidth">Is everyone in your household aware you are adopting a
				pet?</form:label>
			<div class="minorElem">
				<label for="familyAware">Yes</label><input type="radio"
					name="familyAware" value="true" class="">
			</div>
			<div class="minorElem">
				<label for="familyAware">No</label><input type="radio"
					name="familyAware" value="false">
			</div>
			<form:label for="familyNotAwareReason" path="familyNotAwareReason"
				cssErrorClass="error" class="minor">If No, explain: </form:label>
			<input type="text" name="familyNotAwareReason" maxlength="255"
				class="explanation familyAware" />
		</div>
		<div class="row" id="caretakerDiv">
			<form:label for="caretaker" path="caretaker" cssErrorClass="error"
				cssClass="autoWidth">Who will be the primary caretaker?</form:label>
			<input type="text" name="caretaker" class="" />
		</div>
	</div>
</div>
