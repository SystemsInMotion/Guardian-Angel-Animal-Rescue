<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<h3>Vet History</h3>
<div class="module">
	<label class="autoWidth">Name(s)/phone number(s) of Veterinarian(s) that you have
		used <i>(If we cannot verify the vet history of animals currently
			in the home with the information you are providing on this
			application, your application will be denied).</i>
	</label>
	<hr>
	<!-- 
	
	 -->
	<div class="row grid2col">
		<div class="column">
			<form:label for="vets[0].name" path="vets[0].name"
				cssErrorClass="error">Vet Name</form:label>
		</div>
		<div class="column">
			<form:label for="vets[0].phone" path="vets[0].phone" cssClass="autoWidth"
				cssErrorClass="error">Vet Phone Number</form:label>
		</div>
	</div>
	<div class="row grid2col">
		<div class="column">
			<input type="text" name="vets[0].name" id="vets[0].name" class="text required" />
		</div>
		<div class="column">
			<input type="text" name="vets[0].phone" id="vets[0].phone" class="phoneUS required" />
		</div>
	</div>
	<div class="row grid2col">
		<div class="column">
			<input type="text" name="vets[1].name" id="vets[1].name" class="text" />
		</div>
		<div class="column">
			<input type="text" name="vets[1].phone" id="vets[1].phone" class="phoneUS" />
		</div>
	</div>
	<div class="row grid2col last">
		<div class="column">
			<input type="text" name="vets[2].name" id="vets[2].name" class="text" />
		</div>
		<div class="column">
			<input type="text" name="vets[2].phone" id="vets[2].phone" class="phoneUS" />
		</div>
	</div>
</div>
