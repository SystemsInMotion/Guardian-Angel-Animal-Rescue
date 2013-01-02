<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<h3>Current Pets</h3>
<div class="module">
	<div class="row">
		<form:label for="currentPetCount" path="currentPetCount"
			cssErrorClass="error">How many pets do you currently own? (Max 20)</form:label>
		<input type="text" id="currentPetCount" name="currentPetCount"
			class="input2char" />
	</div>
	<div id="currentPets"></div>
</div>
