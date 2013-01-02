<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<h3>Living Conditions</h3>
<div class="module">
	<c:if test="${isCat}">
		<div class="row">
			<form:label for="planToDeclaw" path="planToDeclaw"
				cssErrorClass="error">Do you plan on having ${pet.name} declawed?</form:label>
			<div class="multi-option">
				<input type="radio" name="planToDeclaw" value="front"> Yes,
				front only
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
	<c:if test="${isDog}">
		<div class="row grid2col">
			<div class="column">
				<form:label for="fencedYard" path="fencedYard" cssErrorClass="error">Do you have a fenced yard?</form:label>
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
			<form:label for="willingToInstallFence" path="willingToInstallFence"
				cssErrorClass="error">Would you be willing to install a physical or
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
	<c:if test="${isDog}">
		<div class="row">
			<form:label for="planToAttendObedienceClasses"
				path="planToAttendObedienceClasses" cssErrorClass="error">Do you plan on attending obedience classes?</form:label>
			<div class="multi-option">
				<input type="radio" name="planToAttendObedienceClasses" value="true">
				Yes
			</div>
			<input type="radio" name="planToAttendObedienceClasses" value="false">
			No
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
