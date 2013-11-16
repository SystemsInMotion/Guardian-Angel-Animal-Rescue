<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<h3>Reasons for Adopting</h3>
<div class="module">
	<div class="innards">
		<form:label for="whyWantPet" path="whyWantPet" cssClass="autoWidth"
			cssErrorClass="error">Why do you want ${pet.name} as a pet? (Check all that
			apply)</form:label>
		<div class="row grid4col">
			<div class="column">
				<input type="checkbox" name="whyWantPet"> Companion
			</div>
			<div class="column">
				<input type="checkbox" name="whyWantPet"> Child's Pet
			</div>
			<div class="column">
				<input type="checkbox" name="whyWantPet"> Companion to
				another pet
			</div>
		</div>
		<div class="row grid4col">
			<div class="column">
				<input type="checkbox" name="whyWantPet"> Hunter
			</div>
			<div class="column">
				<input type="checkbox" name="whyWantPet"> Mouser
			</div>
			<div class="column">
				<input type="checkbox" name="whyWantPet"> Gift
			</div>
		</div>
		<div class="row grid4col last">
			<div class="column">
				<input type="checkbox" name="whyWantPet"> Other
			</div>
			<div class="column">
				<input type="checkbox" name="whyWantPet"> Guard
			</div>
		</div>
	</div>
</div>
