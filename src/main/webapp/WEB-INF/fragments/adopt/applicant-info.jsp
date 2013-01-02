<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<h3>Applicant Information</h3>
<div class="module">
	<div class="row grid2col">
		<div class="column">
			<form:label for="firstName" path="firstName" cssErrorClass="error">First name</form:label>
			<input type="text" name="firstName">
		</div>
		<div class="column">
			<form:label for="lastName" path="lastName" cssErrorClass="error">Last name</form:label>
			<input type="text" name="lastName">
		</div>
	</div>
	<div class="row grid2col">
		<div class="column">
			<form:label for="address1" path="address1" cssErrorClass="error">Address 1</form:label>
			<input type="text" name="address1">
		</div>
		<div class="column">
			<form:label for="address2" path="address2" cssErrorClass="error">Address 2</form:label>
			<input type="text" name="address2">
		</div>
	</div>
	<div class="row grid2col">
		<div class="column">
			<form:label for="zipCode" path="zipCode" cssErrorClass="error">Zip code</form:label>
			<input type="text" name="zipCode">
		</div>
		<div class="column">
			<form:label for="city" path="city" cssErrorClass="error">City</form:label>
			<input type="text" name="city">
		</div>
	</div>
	<div class="row grid2col">
		<div class="column">
			<form:label for="homePhone" path="homePhone" cssErrorClass="error">Home phone</form:label>
			<input type="text" name="homePhone">
		</div>
		<div class="column">
			<form:label for="mobilePhone" path="mobilePhone"
				cssErrorClass="error">Mobile phone</form:label>
			<input type="text" name="mobilePhone">
		</div>
	</div>
	<div class="row grid2col">
		<div class="column">
			<form:label for="email" path="email" cssErrorClass="error">Email address</form:label>
			<input type="text" name="email">
		</div>
		<c:if test="${not empty pet.lastUpdate}">
			<div class="column">
				<form:label for="emailConfirm" path="emailConfirm"
					cssErrorClass="error">Confirm email</form:label>
				<input type="text" name="emailConfirm" >
			</div>
		</c:if>
	</div>
</div>
