<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<h2 style="text-align: center">~ Adoption Form ~</h2>
<div id="adoptionForm">
<p><c:url value="adopt" var="url" /></p>
	<form:form modelAttribute="adoptionApplication" action="/gaar/app/adopt" method="post">
		<h3>Pet to Adopt</h3>
		<div class="module">
			<c:forEach items="${pet.media.photos.photo}" var="photo">
				<c:if test="${photo.id eq 1 and photo.size eq 'pn' }">
					<div style="float: left">
						<img id="petImage" src="${photo.value}" title="${pet.name}"
							class="shadow" />
					</div>
				</c:if>
			</c:forEach>

			<div class="pet-details">
				<h2>${pet.name}</h2>
				<c:forEach items='${pet.breeds.breed}' var='breed'
					varStatus='status'>
				${breed}<c:if test='${not status.last}'> / </c:if>
				</c:forEach>
				<hr>
				<div>${pet.size.description}&nbsp;&#8226;&nbsp;${pet.age.value}&nbsp;&#8226;&nbsp;${pet.sex.description}</div>
				<hr>
			</div>
		</div>

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
				<div class="column">
					<form:label for="emailConfirm" path="emailConfirm"
						cssErrorClass="error">Confirm email</form:label>
					<input type="text" name="emailConfirm">
				</div>
			</div>
		</div>

		<h3>Household Information</h3>
		<div class="module">
			<div class="row grid4col">
				<div class="column">
					<form:label for="livingSituation" path="livingSituation"
						cssErrorClass="error">Home</form:label>
					<select name="livingSituation" id="livingSituation"><option value="">Select...</option>
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
							class="input2char">
						<form:label for="yearsLived" path="yearsLived"
							cssErrorClass="error" class="minor"> Years</form:label>
					</div>
					<input type="text" name="monthsLived" maxlength="2"
						class="input2char">
					<form:label for="monthsLived" path="monthsLived"
						cssErrorClass="error" class="minor"> Months</form:label>
				</div>
				<div class="column" id="petsAllowedDiv">
					<form:label for="petsAllowed" path="petsAllowed"
						cssErrorClass="error">Are pets allowed?</form:label>
					<div class="multi-option">
						<input type="radio" name="petsAllowed" value="true"> Yes
					</div>
					<input type="radio" name="petsAllowed" value="false"> No
				</div>
				<div class="column" id="petsAllowedProofDiv">
					<form:label for="petsAllowedProof" path="petsAllowedProof"
						cssErrorClass="error">Can you provide proof?</form:label>
					<div class="multi-option">
						<input type="radio" name="petsAllowedProof" value="true">
						Yes
					</div>
					<input type="radio" name="petsAllowedProof" value="false">
					No
				</div>
			</div>
			<div class="row">
				<form:label path="householdMemberCount" for="householdMemberCount" cssClass="inline">How may people are currently living in your
					household?</form:label><input type="text" name="householdMemberCount" id="householdMemberCount" class="input2char" />
<!-- 
				<div class="multi-option">
					<form:label for="adultCount" path="adultCount"
						cssErrorClass="error" class="minor">Adults </form:label>
					<input type="text" name="adultCount" class="input2char" />
				</div>
				<div class="multi-option">
					<form:label for="childCount" path="childCount"
						cssErrorClass="error" class="minor">Children </form:label>
					<input type="text" name="childCount" class="input2char" />
				</div>
				<form:label for="childAges" path="childAges" cssErrorClass="error"
					class="minor">Age of children </form:label>
				<span class="smaller">(comma separated)</span> <input type="text"
					name="childAges" />
 -->					
			</div>
			<div class="row" id="householdMemberAgesDiv">
			</div>
			<div class="row">
				<form:label for="familyAware" path="familyAware"
					cssErrorClass="error">Is everyone in your household aware you are adopting a
				pet?</form:label>
				<div class="multi-option">
					<input type="radio" name="familyAware" value="true"> Yes
				</div>
				<div class="multi-option">
					<input type="radio" name="familyAware" value="false"> No
				</div>
				<form:label for="familyNotAwareReason" path="familyNotAwareReason"
					cssErrorClass="error" class="minor">If No, explain: </form:label>
				<input type="text" name="familyNotAwareReason" maxlength="255"
					class="explanation" />
			</div>
			<div class="row">
				<form:label for="caretaker" path="caretaker" cssErrorClass="error">Who will be the primary caretaker?</form:label>
				<input type="text" name="caretaker" />
			</div>
		</div>

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

		<h3>Previous Pets</h3>
		<div class="module">
			<div class="row">
				<form:label for="previousPetCount" path="previousPetCount"
					cssErrorClass="error">How many pets have you owned in the past 10 years? (Max 20)</form:label>
				<input type="text" id="previousPetCount" name="previousPetCount"
					class="input2char" />
			</div>
			<div id="previousPets"></div>
		</div>

		<h3>Vet History</h3>
		<div class="module">
			<label>Name(s)/phone number(s) of Veterinarian(s) that you
				have used <i>(If we cannot verify the vet history of animals
					currently in the home with the information you are providing on
					this application, your application will be denied).</i>
			</label>
			<hr>
			<div class="row grid2col">
				<div class="column">
					<form:label for="vets[0].name" path="vets[0].name"
						cssErrorClass="error">Vet Name:</form:label>
				</div>
				<div class="column">
					<form:label for="vets[0].phone" path="vets[0].phone"
						cssErrorClass="error">Vet Phone Number:</form:label>
				</div>
			</div>
			<div class="row grid2col">
				<div class="column">
					<input type="text" id="vets[0].name" class="text" />
				</div>
				<div class="column">
					<input type="text" id="vets[0].phone" class="text" />
				</div>
			</div>
			<div class="row grid2col">
				<div class="column">
					<input type="text" id="vets[1].name" class="text" />
				</div>
				<div class="column">
					<input type="text" id="vets[1].phone" class="text" />
				</div>
			</div>
			<div class="row grid2col last">
				<div class="column">
					<input type="text" id="vets[2].name" class="text" />
				</div>
				<div class="column">
					<input type="text" id="vets[2].phone" class="text" />
				</div>
			</div>
		</div>
		<h3>Living Conditions</h3>
		<div class="module">
			<c:if test="${pet.animal eq 'CAT'}">
				<div class="row">
					<form:label for="planToDeclaw" path="planToDeclaw"
						cssErrorClass="error">Do you plan on having ${pet.name} declawed?</form:label>
					<div class="multi-option">
						<input type="radio" name="planToDeclaw" value="front">
						Yes, front only
					</div>
					<div class="multi-option">
						<input type="radio" name="planToDeclaw" value="all"> Yes,
						all four
					</div>
					<input type="radio" name="planToDeclaw" value="no"> No
				</div>
			</c:if>
			<div class="row">
				<form:label for="petLivingLocation" path="petLivingLocation"
					cssErrorClass="error">Where will ${pet.name} be living?</form:label>
				<div class="multi-option">
					<input type="checkbox" name="petLivingLocation" value="inside">
					Inside
				</div>
				<div class="multi-option">
					<input type="checkbox" name="petLivingLocation" value="outside">
					Outside
				</div>
				<form:label for="petLivingLocation" path="petLivingLocation"
					cssErrorClass="error" class="minor">Other </form:label>
				<input type="text" name="petLivingLocation" class="explanation">
			</div>
			<c:if test="${pet.animal eq 'DOG'}">
				<div class="row grid2col">
					<div class="column">
						<form:label for="fencedYard" path="fencedYard"
							cssErrorClass="error">Do you have a fenced yard?</form:label>
						<div class="multi-option">
							<input type="radio" name="fencedYard" value="partial">
							Partially fenced
						</div>
						<div class="multi-option">
							<input type="radio" name="fencedYard" value="completely">
							Completely fenced
						</div>
						<input type="radio" name="fencedYard" value="no"> No
					</div>
				</div>
				<div class="row" id="willingToInstallFenceDiv">
					<form:label for="willingToInstallFence"
						path="willingToInstallFence" cssErrorClass="error">Would you be willing to install a physical or
					electric fence?</form:label>
					<div class="multi-option">
						<input type="radio" name="willingToInstallFence" value="electric">
						Electric
					</div>
					<div class="multi-option">
						<input type="radio" name="willingToInstallFence" value="physical">
						Physical
					</div>
					<input type="radio" name="willingToInstallFence" value="no">
					No
				</div>
				<div class="row" id="howContainPetDiv">
					<form:label for="howContainPet" path="howContainPet"
						cssErrorClass="error">How will ${pet.name} be let outside and contained in
					your yard without a fence?</form:label>
					<input type="text" name="howContainPet" class="explanation">
				</div>
			</c:if>
			<div class="row">
				<form:label for="hoursAlone" path="hoursAlone" cssErrorClass="error">Approximately, how many hours will ${pet.name} be left
				alone during the day?</form:label>
				<input type="text" name="hoursAlone" class="input2char"
					class="explanation">
			</div>
			<div class="row">
				<form:label for="daytimeLocation" path="daytimeLocation"
					cssErrorClass="error">Where will ${pet.name} stay when you are not at home
				(be specific)?</form:label>
				<input type="text" name="daytimeLocation" class="explanation">
			</div>
			<div class="row">
				<form:label for="sleepLocation" path="sleepLocation"
					cssErrorClass="error">Where will ${pet.name} sleep (be specific)?</form:label>
				<input type="text" name="sleepLocation" class="explanation">
			</div>
			<div class="row">
				<form:label for="destructiveBehavior" path="destructiveBehavior"
					cssErrorClass="error">How will you handle destructive behavior?</form:label>
				<input type="text" name="destructiveBehavior" class="explanation">
			</div>
			<c:if test="${pet.animal eq 'DOG'}">
				<div class="row">
					<form:label for="planToAttendObedienceClasses"
						path="planToAttendObedienceClasses" cssErrorClass="error">Do you plan on attending obedience classes?</form:label>
					<div class="multi-option">
						<input type="radio" name="planToAttendObedienceClasses"
							value="true"> Yes
					</div>
					<input type="radio" name="planToAttendObedienceClasses"
						value="false"> No
				</div>
			</c:if>
			<div class="row">
				<form:label for="movingPlan" path="movingPlan" cssErrorClass="error">What will you do with ${pet.name} if you move?</form:label>
				<input type="text" name="movingPlan" class="explanation">
			</div>
			<div class="row">
				<form:label for="giveUpSituation" path="giveUpSituation"
					cssErrorClass="error">For what reason would you consider giving up
				${pet.name}?</form:label>
				<input type="text" name="giveUpSituation" class="explanation">
			</div>
			<div class="row">
				<form:label for="idealPet" path="idealPet" cssErrorClass="error">Please describe your ideal pet?</form:label>
				<input type="text" name="idealPet" class="explanation">
			</div>
			<div class="row">
				<form:label for="timeSearching" path="timeSearching"
					cssErrorClass="error">How long have you been looking for a pet?</form:label>
				<input type="text" name="timeSearching" class="explanation">
			</div>
			<div class="row">
				<form:label for="haveAppliedElsewhere" path="haveAppliedElsewhere"
					cssErrorClass="error">Have you applied elsewhere?</form:label>
				<div class="multi-option">
					<input type="radio" name="haveAppliedElsewhere" value="true">
					Yes
				</div>
				<input type="radio" name="haveAppliedElsewhere" value="false">
				No
			</div>
			<div id="whereAppliedDiv">
				<div class="row">
					<form:label for="whereApplied" path="whereApplied"
						cssErrorClass="error">Where else have you applied?</form:label>
					<input type="text" name="whereApplied" class="explanation">
				</div>
				<div class="row">
					<form:label for="failedAdoptionReason" path="failedAdoptionReason"
						cssErrorClass="error">What is the reason for not adopting from above?</form:label>
					<input type="text" name="failedAdoptionReason" class="explanation">
				</div>
			</div>
		</div>
		<h3>Reasons for Adopting</h3>
		<div class="module">
			<form:label for="whyWantPet" path="whyWantPet" cssErrorClass="error">Why do you want ${pet.name} as a pet? (Check all that
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
		<h3>Disclaimer</h3>
		<div class="module">
			<div class="row">
				<form:label for="medicalAwareness" path="awareOfUnknownIssues"
					cssErrorClass="error">Are you aware that rescue animals may have unknown
				medical and behavior history?</form:label>
				<div class="multi-option">
					<input type="radio" name="awareOfUnknownIssues" value="true">
					Yes
				</div>
				<input type="radio" name="awareOfUnknownIssues" value="false">
				No
			</div>
			<div class="row">
				<form:label for="homeVisit" path="agreedToHomeVisit"
					cssErrorClass="error">Would you allow a GAAR volunteer to do a home visit
				before or upon adoption?</form:label>
				<div class="multi-option">
					<input type="radio" name="agreedToHomeVisit" value="true">
					Yes
				</div>
				<input type="radio" name="agreedToHomeVisit" value="false">
				No
			</div>
			<div>
				<label>What Each Applicant Should Know</label>
				<ul class="circle">
					<li>All animals, unless otherwise stated, come with age
						appropriate vaccines and sterilization.</li>
					<li>Submitting an application does not obligate you to adopt
						nor does it guarantee ${pet.name} will be adopted to you.</li>
					<li>Guardian Angel Animal Rescue does not work on a first come
						first serve basis. We collect applications on ${pet.name} in
						question and make a determination on where we think ${pet.name}
						will do best.</li>
					<li>Guardian Angel Animal Rescue reserves the right to deny
						any application without explanation.</li>
					<li>It may take up to 7 days to process an application. The
						volunteers at GAAR all work full time jobs and we do our volunteer
						work in on our lunch hours, evenings and weekends. We cannot
						always reply ASAP to an application that has been placed.<br />
					</li>
					<li>The Guardian Angel Animal Rescue Board makes all adoption
						decisions and their decision is FINAL.</li>
				</ul>
			</div>
		</div>
		<div class="row">
			<input type="submit" value="Submit">
		</div>
	</form:form>
</div>