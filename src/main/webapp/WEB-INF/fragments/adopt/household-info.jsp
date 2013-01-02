<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<h3>Household Information</h3>
<div class="module">
	<c:choose>
		<c:when test="${not empty pet.lastUpdate}">
			<div class="row grid4col">
				<div class="column">
					<form:label for="livingSituation" path="livingSituation"
						cssErrorClass="error">Home</form:label>
					<select name="livingSituation" id="livingSituation"><option
							value="">Select...</option>
						<option value="own">Own Home</option>
						<option value="rent">Rent Home</option>
						<option value="apartment">Apartment</option>
						<option value="condo">Condo</option>
						<option value="other">Other</option>
					</select>
				</div>
				<c:import url="/WEB-INF/fragments/adopt/time-lived.jsp" />
				<c:import url="/WEB-INF/fragments/adopt/pets-allowed.jsp" />
			</div>
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
			id="householdMemberCount" class="input2char" />
	</div>
	<div class="row" id="householdMemberAgesDiv">
		<c:if test="${empty pet.lastUpdate}">
			<label class="inline">List the ages of each household member:</label><input type="text">
		</c:if>
	</div>

	<div class="row">
		<form:label for="familyAware" path="familyAware" cssErrorClass="error">Is everyone in your household aware you are adopting a
				pet?</form:label>
		<div class="multi-option">
			<input type="radio" name="familyAware" value="true"> Yes
		</div>
		<div class="multi-option">
			<input type="radio" name="familyAware" value="false"> No
		</div>
		<form:label for="familyNotAwareReason" path="familyNotAwareReason"
			cssErrorClass="error" class="minor">If No, explain: </form:label>
		<input type="text" name="familyNotAwareReason" maxlength="255"
			class="explanation" />
	</div>
	<div class="row">
		<form:label for="caretaker" path="caretaker" cssErrorClass="error">Who will be the primary caretaker?</form:label>
		<input type="text" name="caretaker" />
	</div>
</div>
