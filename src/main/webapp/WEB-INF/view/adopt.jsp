<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt"%>
<h2 style="text-align: center">~ Adoption Form ~</h2>
<form action="../adopt" method="POST">
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
					<input type="radio" name="petsAllowed" value="true"> Yes
				</div>
				<input type="radio" name="petsAllowed" value="false"> No
			</div>
			<div class="column">
				<label>Can you provide proof?</label>
				<div class="multi-option">
					<input type="radio" name="petsAllowedProof" value="true">
					Yes
				</div>
				<input type="radio" name="petsAllowedProof" value="false">
				No
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
			If No, explain: <input type="text" name="familyAwareNoReason"
				maxlength="255" class="explanation" />
		</div>
		<div class="row">
			<label>Who will be the primary caretaker?</label><input type="text"
				name="caretaker" />
		</div>
	</div>

	<h3>Current Pets</h3>
	<div class="module">
		<div class="row">
			<label>How many pets do you currently own? (Max 20)</label><input
				type="text" id="currentPetCount" name="currentPetCount" class="input2char" />
		</div>
		<div id="currentPets"></div>
	</div>
	<h3>Vet History</h3>
	<div class="module">
	<label>Name(s)/phone number(s) of Veterinarian(s) that you have used <i>(If we cannot verify the vet history of animals currently in the home with the information you are providing on this application, your application will be automatically denied).</i></label>
		<hr>
		<div class="row grid2col">
			<div class="column">
				<label>Vet Name:</label>
			</div>		
			<div class="column">
				<label>Vet Phone Number:</label>
			</div>		
		</div>
		<div class="row grid2col">
			<div class="column">
				<input type="text" id="vetsUsedName" class="text" />
			</div>		
			<div class="column">
				<input type="text" id="vetsUsedPhone" class="text" />
			</div>		
		</div>
		<div class="row grid2col">
			<div class="column">
				<input type="text" id="vetsUsedName" class="text" />
			</div>		
			<div class="column">
				<input type="text" id="vetsUsedPhone" class="text" />
			</div>		
		</div>
		<div class="row grid2col last">
			<div class="column">
				<input type="text" id="vetsUsedName" class="text" />
			</div>		
			<div class="column">
				<input type="text" id="vetsUsedPhone" class="text" />
			</div>		
		</div>
	</div>
	<h3>Living Conditions</h3>
	<div class="module">
		<div class="row">
			<label>If animal is a cat, will the animal be declawed?</label>
			<div class="multi-option">
				<input type="radio" name="declawed" value="true"> Yes
			</div>
			<input type="radio" name="declawed" value="false"> No
		</div>
		<div class="row">
			<label>Where will the animal be living?</label>
			<div class="multi-option">
				<input type="checkbox" name="livingLocation" value="true"> Inside
				<input type="checkbox" name="livingLocation" value="false"> Outside
				<input type="checkbox" name="livingLocation" value="other"> Other
				<input type="text" name="livingLocationOtherText" value="">
			</div>			
		</div>
		<div class="row grid2col">
			<div class="column">
				<label>Do you have a fenced yard?</label>
				<div class="multi-option">
					<input type="radio" name="fencedYard" value="true"> Yes
				</div>	
				<input type="radio" name="fencedYard" value="false"> No
			</div>
			<div class="column">
				<label>Complete?</label>
				<div class="multi-option">
					<input type="radio" name="fencedYardComplete" value="true"> Yes
				</div>	
				<input type="radio" name="fencedYardComplete" value="false"> No
			</div>		
		</div>
		<div class="row">
			<label>If No, would you be willing to install a physical or electric fence? </label>
			<input type="checkbox" name="installFence" value="true"> Electric
			<input type="checkbox" name="installFence" value="false"> Physical
			<input type="checkbox" name="installFence" value="other"> No
		</div>
		<div class="row">
			<label>If No, how will the animal be let outside and contained in your yard?</label>
			<input type="text" name="howContained" value="">
		</div>
		<div class="row">
			<label>If No, how will the animal be let outside and contained in your yard?</label>
			<input type="text" name="howContained2" value="">
		</div>
		<div class="row">
			<label>Approximately, how many hours would the animal be left alone during the day?</label>
			<input type="text" name="hoursAlone" class="input2char" value="">
		</div>
		<div class="row">
			<label>Where will the animal stay when you are not at home (be specific)?</label>
			<input type="text" name="daytimeLocation" value="">
		</div>
		<div class="row">
			<label>Where will the animal sleep (be specific)?</label>
			<input type="text" name="sleepLocation" value="">
		</div>
		<div class="row">
			<label>How will you handle destructive behavior?</label>
			<input type="text" name="destructiveBehavior" value="">
		</div>
		<div class="row">
			<label>Do you plan on attending obedience classes?</label>
			<input type="radio" name="obedienceClasses" value="true"> Yes
			<input type="radio" name="obedienceClasses" value="false"> No
		</div>
		<div class="row">
			<label>What will you do with the animal if you move?</label>
			<input type="text" name="moving" value="">
		</div>
		<div class="row">
			<label>For what reason would you consider giving up the animal?</label>
			<input type="text" name="givingUpSituation" value="">
		</div>
		<div class="row">
			<label>Please describe your ideal pet?</label>
			<input type="text" name="idealPet" value="">
		</div>
		<div class="row">
			<label>How long have you been looking for a pet?</label>
			<input type="text" name="searchingLength" value="">
		</div>
		<div class="row last">
			<label>Have you applied elsewhere?</label>
			<div class="multi-option">
				<input  type="radio" name="appliedElsewhere">Yes
				<input  type="radio" name="appliedElsewhere">No
			</div>
			<label>If Yes, where?</label><input type="text" name="howContained" value="">			
		</div>
	</div>	
	<h3>Reasons for Adopting</h3>
	<div class="module">
		<Label>Why do you want a pet?  (Check all that apply)</Label>
		<div class="row grid4col">
			<div class="column">
				<input  type="checkbox" name="whyWantPet"> Companion
			</div>	
			<div class="column">		
				<input  type="checkbox" name="whyWantPet"> Child's Pet
			</div>
			<div class="column">
				<input  type="checkbox" name="whyWantPet"> Companion to another pet
			</div>
		</div>				
		<div class="row grid4col">
			<div class="column">
				<input  type="checkbox" name="whyWantPet"> Hunter
			</div>	
			<div class="column">		
				<input  type="checkbox" name="whyWantPet"> Mouser
			</div>
			<div class="column">
				<input  type="checkbox" name="whyWantPet"> Gift
			</div>		
		</div>
		<div class="row grid4col last">
			<div class="column">
				<input  type="checkbox" name="whyWantPet"> Other
			</div>
			<div class="column">
				<input  type="checkbox" name="whyWantPet"> Guard
			</div>
		</div>
	</div>	
	<h3>Disclaimer</h3>
	<div class="module">
		<div class="row">
			<label>Are you aware that rescue animals may have unknown medical and behavior history?</label>
			<div class="multi-option">
					<input type="radio" name="medicalAwareness" value="true"> Yes
				</div>
				<input type="radio" name="medicalAwareness" value="false"> No			
		</div>
		<div class="row">
			<label>Would you object to a GAAR rep visiting/calling your home to inquire about the animal?</label>
			<div class="multi-option">
					<input type="radio" name="homeVisit" value="true"> Yes
				</div>
				<input type="radio" name="homeVisit" value="false"> No			
		</div>
		<div>
			<label>What Each Applicant Should Know</label>
			<ul class="circle">
				<li>All animals, unless otherwise stated, come with age appropriate vaccines and sterilization.</li>
				<li>Adoption Fee for cats that are sterilized is $150.  Adoption fee for cats/kittens that are not sterilized is $200 and upon proof of spay/neuter, $50 will be refunded to adopter.</li>
				<li>Adoption Fee for dogs that are sterilized is $175.  Adoption fee for pups/dogs that are not sterilized is $225 and upon proof of spay/neuter, $50 will be refunded to adopter.</li>
				<li>All donations and adoption fees are put towards the care of animals.  Please do not ask us to lower our adoption fee.  The yearly cost of owning a cat or dog exceeds $200, so if you cannot afford the adoption fee, then you cannot afford to own a dog or cat.</li>
				<li>Submitting an application does not obligate you to adopt nor does it guarantee the animal will be adopted to you.</li>
				<li>Guardian Angel Animal Rescue does not work on a first come first serve basis.  We collect applications on the animal in question and make a determination on where we think the animal will do best.</li>
				<li>Guardian Angel Animal Rescue reserves the right to deny any application without explanation.</li>
				<li>It may take up to 7 days to process an application.  The volunteers at GAAR all work full time jobs and we do our volunteer work in on our lunch hours, evenings and weekends.  We cannot always reply ASAP to an application that has been placed.<br/></li>
				<li>The Guardian Angel Animal Rescue Board makes all adoption decisions and their decision is FINAL.</li>			
			</ul>
		</div>
	</div>
	<div class="row">
		<input type="submit" value="Submit">	
	</div>
</form>