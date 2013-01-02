<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<div class="column" id="petsAllowedDiv">
	<form:label for="petsAllowed" path="petsAllowed" cssErrorClass="error">Are pets allowed?</form:label>
	<div class="multi-option">
		<input type="radio" name="petsAllowed" value="true"> Yes
	</div>
	<input type="radio" name="petsAllowed" value="false"> No
</div>
<div class="column" id="petsAllowedProofDiv">
	<form:label for="petsAllowedProof" path="petsAllowedProof"
		cssErrorClass="error">Can you provide proof?</form:label>
	<div class="multi-option">
		<input type="radio" name="petsAllowedProof" value="true"> Yes
	</div>
	<input type="radio" name="petsAllowedProof" value="false"> No
</div>