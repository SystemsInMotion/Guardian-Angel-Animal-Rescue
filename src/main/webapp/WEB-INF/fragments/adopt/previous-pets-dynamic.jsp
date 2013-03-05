<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<h3>Previous Pets</h3>
<div class="module">
	<div class="row">
		<form:label for="previousPetCount" path="previousPetCount" cssClass="autoWidth"
			cssErrorClass="error">How many pets have you owned in the past 10 years? (Max 20)</form:label>
		&nbsp;<input type="text" id="previousPetCount" name="previousPetCount"
			class="input2char digits required" />
	</div>
	<div id="previousPets"></div>
</div>
