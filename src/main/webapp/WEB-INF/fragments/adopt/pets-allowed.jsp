<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<div class="row" id="petsAllowedDiv">
	<form:label for="petsAllowed" path="petsAllowed" cssClass="autoWidth"
		cssErrorClass="error">Are pets allowed?</form:label>
	<div class="minorElem">
		<label for="petsAllowed">Yes</label><input type="radio"
			name="petsAllowed" value="true" class="required">
	</div>
	<div class="minorElem">
		<label for="petsAllowed">No</label><input type="radio"
			name="petsAllowed" value="false">
	</div>
</div>
<div class="row" id="petsAllowedProofDiv">
	<form:label for="petsAllowedProof" path="petsAllowedProof"
		cssClass="autoWidth" cssErrorClass="error">Can you provide proof?</form:label>
	<div class="minorElem">
		<label for="petsAllowedProof">Yes</label><input type="radio"
			name="petsAllowedProof" value="true" class="required">
	</div>
	<div class="minorElem">
		<label for="petsAllowedProof">No</label><input type="radio"
			name="petsAllowedProof" value="false">
	</div>
</div>