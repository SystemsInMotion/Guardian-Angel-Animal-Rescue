<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt"%>
<h2 style="text-align:center">Adoption Form</h2>
<form>
	<div class="module">
		<h3>Important!</h3>
		<p>
			Failure to complete the application in its entirety or providing
			false information with result in <strong>automatic denial</strong>.
		</p>
	</div>

	<h3>Pet Information</h3>
	<div class="module">
		<h3>${pet.name}</h3>
		<p>
			<c:forEach items='${pet.breeds.breed}' var='breed' varStatus='status'>
				${breed}<c:if test='${not status.last}'> / </c:if>
			</c:forEach>
		</p>
	</div>

	<h3>Applicant Information</h3>
	<div class="module">
		<div class="row">
			<div class="col1of2" style="float: left; width: 50%">
				<label>First name</label> <input type="text" name="firstName">
			</div>
			<div class="col2of2" style="float: left; width: 50%">
				<label>Last name</label> <input type="text" name="lastName">
			</div>
		</div>
		<div class="row">
			<div class="col1of2" style="float: left; width: 50%">
				<label>Address 1</label> <input type="text" name="address1">
			</div>
			<div class="col2of2" style="float: left; width: 50%">
				<label>Address 2</label> <input type="text" name="address2">
			</div>
		</div>
		<div class="row">
			<div class="col1of2" style="float: left; width: 50%">
				<label>Zip code</label> <input type="text" name="zipCode">
			</div>
			<div class="col2of2" style="float: left; width: 50%">
				<label>City</label> <input type="text" name="city">
			</div>
		</div>
	</div>
</form>