<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<h3>Current Pets</h3>
<div class="module">
	<div class="innards">
		<div class="row">
			<form:label for="currentPetCount" path="currentPetCount"
				cssClass="autoWidth" cssErrorClass="error">How many pets do you currently own? (Max 20)</form:label>
			&nbsp;<input type="text" id="currentPetCount" name="currentPetCount"
				class="input2char digits required" />
		</div>
		<div id="currentPets"></div>
	</div>
</div>
