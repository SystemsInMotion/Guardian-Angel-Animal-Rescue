<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt"%>
<h2 style="text-align: center">~ Adoption Form ~</h2>
<form>
	<!-- 
	<div class="module">
		<h3>Important!</h3>
		<p>
			Failure to complete the application in its entirety or providing
			false information with result in <strong>automatic denial</strong>.
		</p>
	</div>
 -->

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
		<div class="row grid2col">
			<div class="column">
				<label>First name</label> <input type="text" name="firstName">
			</div>
			<div class="column">
				<label>Last name</label> <input type="text" name="lastName">
			</div>
		</div>
		<div class="row grid2col">
			<div class="column">
				<label>Address 1</label> <input type="text" name="address1">
			</div>
			<div class="column">
				<label>Address 2</label> <input type="text" name="address2">
			</div>
		</div>
		<div class="row grid2col">
			<div class="column">
				<label>Zip code</label> <input type="text" name="zipCode">
			</div>
			<div class="column">
				<label>City</label> <input type="text" name="city">
			</div>
		</div>
		<div class="row grid2col">
			<div class="column">
				<label>Home phone</label> <input type="text" name="homePhone">
			</div>
			<div class="column">
				<label>Mobile phone</label> <input type="text" name="mobilePhone">
			</div>
		</div>
		<div class="row grid2col">
			<div class="column">
				<label>Email address</label> <input type="text" name="email1">
			</div>
			<div class="column">
				<label>Confirm email</label> <input type="text" name="email2">
			</div>
		</div>
	</div>

	<h3>Living Situation</h3>
	<div class="module">
		<div class="row grid4col">
			<div class="column">
				<label>Home</label><select name="livingSituation"><option
						value="">Select...</option>
					<option value="own">Own Home</option>
					<option value="rent">Rent Home</option>
					<option value="apartment">Apartment</option>
					<option value="condo">Condo</option>
					<option value="other">Other</option>
				</select>
			</div>
			<div class="column">
				<label>Time lived there?</label>
				<div class="multi-option">
					<input type="text" name="yearsLived" maxlength="2"
						class="input2char"> years
				</div>
				<input type="text" name="monthsLived" maxlength="2"
					class="input2char"> months
			</div>
			<div class="column">
				<label>Are pets allowed?</label>
				<div class="multi-option">
					<input type="radio" name="petsAllowed" value="true"> yes
				</div>
				<input type="radio" name="petsAllowed" value="false"> no
			</div>
			<div class="column">
				<label>Can you provide proof?</label>
				<div class="multi-option">
					<input type="radio" name="petsAllowedProof" value="true">
					yes
				</div>
				<input type="radio" name="petsAllowedProof" value="false">
				no
			</div>
		</div>
		<div class="row">
			<label>How may people are currently living in your household?</label>
			<div class="multi-option">
				Adults <input type="text" name="adultCount" class="input2char" />
			</div>
			<div class="multi-option">
				Children <input type="text" name="childCount" class="input2char" />
			</div>
			Age of children <span class="smaller">(comma separated)</span> <input
				type="text" name="childAges" />
		</div>
		<div class="row">
			<label>Is everyone in your household aware you are adopting a
				pet?</label>
			<div class="multi-option">
				<input type="radio" name="familyAware" value="true"> Yes
			</div>
			<div class="multi-option">
				<input type="radio" name="familyAware" value="false"> No
			</div>
			If no, explain: <input type="text" name="familyAwareNoReason"
				maxlength="255" class="explanation" />
		</div>
		<div class="row">
			<label>Who will be the primary caretaker?</label><input type="text"
				name="caretaker" />
		</div>
	</div>

	<h3>Pet History</h3>
	<div class="module">
		<div class="row">
			<label>How many pets have you owned in the past ten years?</label><input
				type="text" id="previousPetCount" name="previousPetCount" class="input2char" />
		</div>
		<div id="petHistory" class="row"></div>
	</div>
</form>