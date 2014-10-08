<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<h3>Applicant Information</h3>
<div class="module">
	<div class="innards">
		<div class="row">
			<form:label for="firstName" path="firstName" cssErrorClass="error">First name</form:label>
			<input type="text" name="firstName" id="firstName" class="required">
		</div>
		<div class="row">
			<form:label for="lastName" path="lastName" cssErrorClass="error">Last name</form:label>
			<input type="text" name="lastName" id="lastName" class="required">
		</div>
		<div class="row">
			<form:label for="address1" path="address1" cssErrorClass="error">Address 1</form:label>
			<input type="text" name="address1" id="address1" class="required">
		</div>
		<div class="row">
			<form:label for="address2" path="address2" cssErrorClass="error">Address 2</form:label>
			<input type="text" name="address2" id="address2">
		</div>
		<div class="row">
			<form:label for="city" path="city" cssErrorClass="error">City</form:label>
			<input type="text" name="city" id="city" class="required">
		</div>
		<div class="row">
			<form:label for="state" path="state" cssErrorClass="error">State</form:label>
			<input type="text" name="state" id="state" class="required">
		</div>
		<div class="row">
			<form:label for="zipCode" path="zipCode" cssErrorClass="error">Zip code</form:label>
			<input type="text" name="zipCode" id="zipCode"
				class="zipcodeUS required">
		</div>
		<div class="row">
			<form:label for="homePhone" path="homePhone" cssErrorClass="error">Home phone</form:label>
			<input type="text" name="homePhone" id="homePhone" class="phoneUS">
		</div>
		<div class="row">
			<form:label for="mobilePhone" path="mobilePhone"
				cssErrorClass="error">Mobile phone</form:label>
			<input type="text" name="mobilePhone" id="mobilePhone"
				class="phoneUS">
		</div>
		<div class="row">
			<form:label for="email" path="email" cssErrorClass="error">Email address</form:label>
			<input type="text" name="email" id="email" class="email required">
		</div>
		<c:if test="${not empty pet.lastUpdate}">
			<div class="row">
				<form:label for="emailConfirm" path="emailConfirm"
					cssErrorClass="error">Confirm email</form:label>
				<input type="text" name="emailConfirm" id="emailConfirm"
					class="email required">
			</div>
		</c:if>
	</div>
</div>
