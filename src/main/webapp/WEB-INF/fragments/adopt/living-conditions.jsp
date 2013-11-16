<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<h3>Living Conditions</h3>
<div class="module">
	<div class="innards">
		<c:if test="${isCat}">
			<div class="row">
				<form:label for="planToDeclaw" path="planToDeclaw"
					cssClass="autoWidth" cssErrorClass="error">Do you plan on having ${pet.name} declawed?</form:label>
				<div class="minorElemBig">
					<label for="planToDeclaw">Yes, front only</label> <input
						type="radio" name="planToDeclaw" value="front" class="required">
				</div>
				<div class="minorElemBig">
					<label for="planToDeclaw">Yes, all four</label> <input type="radio"
						name="planToDeclaw" value="all">
				</div>
				<div class="minorElemBig">
					<label for="planToDeclaw">No</label> <input type="radio"
						name="planToDeclaw" value="no">
				</div>
			</div>
		</c:if>
		<div class="row">
			<form:label for="petLivingLocation" path="petLivingLocation"
				cssClass="autoWidth" cssErrorClass="error">Where will ${pet.name} be living?</form:label>
			<div class="minorElem">
				<label for="petLivingLocation">Inside</label> <input type="checkbox"
					name="petLivingLocation" value="inside" class="required">
			</div>
			<div class="minorElem">
				<label for="petLivingLocation">Outside</label> <input
					type="checkbox" name="petLivingLocation" value="outside">
			</div>
			<form:label for="petLivingLocation" path="petLivingLocation"
				cssErrorClass="error" class="minor">Other </form:label>
			<input type="text" name="petLivingLocation" class="explanation">
		</div>
		<c:if test="${isDog}">
			<div class="row ">
				<form:label for="fencedYard" path="fencedYard" cssClass="autoWidth"
					cssErrorClass="error">Do you have a fenced yard?</form:label>
				<div class="minorElemBigger">
					<label for="fencedYard">Partially fenced</label> <input
						type="radio" name="fencedYard" value="partial" class="required">
				</div>
				<div class="minorElemBigger">
					<label for="fencedYard">Completely fenced</label> <input
						type="radio" name="fencedYard" value="completely">
				</div>
				<div class="minorElemBigger">
					<label for="fencedYard">No</label> <input type="radio"
						name="fencedYard" value="no">
				</div>
			</div>

			<div class="row" id="willingToInstallFenceDiv">
				<form:label for="willingToInstallFence" path="willingToInstallFence"
					cssClass="autoWidth" cssErrorClass="error">Would you be willing to install a physical or
					electric fence?</form:label>
				<div class="minorElem">
					<label for="willingToInstallFence">Electric</label> <input
						type="radio" name="willingToInstallFence" value="electric"
						class="required">
				</div>
				<div class="minorElem">
					<label for="willingToInstallFence">Physical</label> <input
						type="radio" name="willingToInstallFence" value="physical">
				</div>
				<div class="minorElem">
					<label for="willingToInstallFence">No</label> <input type="radio"
						name="willingToInstallFence" value="no">
				</div>
			</div>
			<div class="row" id="howContainPetDiv">
				<form:label for="howContainPet" path="howContainPet"
					cssClass="autoWidth" cssErrorClass="error">How will ${pet.name} be let outside and contained in
					your yard without a fence?</form:label>
				<br> <input type="text" name="howContainPet"
					class="explanation required">
			</div>
		</c:if>
		<div class="row">
			<form:label for="hoursAlone" path="hoursAlone" cssClass="autoWidth"
				cssErrorClass="error">Approximately, how many hours will ${pet.name} be left
				alone during the day?</form:label>
			&nbsp;<input type="text" name="hoursAlone"
				class="input2char digits required">
		</div>
		<div class="row">
			<form:label for="daytimeLocation" path="daytimeLocation"
				cssClass="autoWidth" cssErrorClass="error">Where will ${pet.name} stay when you are not at home
				(be specific)?</form:label>
			<br> <input type="text" name="daytimeLocation"
				class="explanation required">
		</div>
		<div class="row">
			<form:label for="sleepLocation" path="sleepLocation"
				cssClass="autoWidth" cssErrorClass="error">Where will ${pet.name} sleep (be specific)?</form:label>
			<br> <input type="text" name="sleepLocation"
				class="explanation required">
		</div>
		<div class="row">
			<form:label for="destructiveBehavior" path="destructiveBehavior"
				cssClass="autoWidth" cssErrorClass="error">How will you handle destructive behavior?</form:label>
			<br> <input type="text" name="destructiveBehavior"
				class="explanation required">
		</div>
		<c:if test="${isDog}">
			<div class="row">
				<form:label for="planToAttendObedienceClasses"
					path="planToAttendObedienceClasses" cssClass="autoWidth"
					cssErrorClass="error">Do you plan on attending obedience classes?</form:label>
				<div class="minorElemSmall">
					<label for="planToAttendObedienceClasses">Yes</label> <input
						type="radio" name="planToAttendObedienceClasses" value="true"
						class="required">
				</div>
				<div class="minorElemSmall">
					<label for="planToAttendObedienceClasses">No</label> <input
						type="radio" name="planToAttendObedienceClasses" value="false">
				</div>
			</div>
		</c:if>
		<div class="row">
			<form:label for="movingPlan" path="movingPlan" cssClass="autoWidth"
				cssErrorClass="error">What will you do with ${pet.name} if you move?</form:label>
			<br> <input type="text" name="movingPlan"
				class="explanation required">
		</div>
		<div class="row">
			<form:label for="giveUpSituation" path="giveUpSituation"
				cssClass="autoWidth" cssErrorClass="error">For what reason would you consider giving up
				${pet.name}?</form:label>
			<br> <input type="text" name="giveUpSituation"
				class="explanation required">
		</div>
		<div class="row">
			<form:label for="idealPet" path="idealPet" cssClass="autoWidth"
				cssErrorClass="error">Please describe your ideal pet?</form:label>
			<br> <input type="text" name="idealPet"
				class="explanation required">
		</div>
		<div class="row">
			<form:label for="timeSearching" path="timeSearching"
				cssClass="autoWidth" cssErrorClass="error">How long have you been looking for a pet?</form:label>
			<br> <input type="text" name="timeSearching"
				class="explanation required">
		</div>
		<div class="row">
			<div class="row">
				<form:label for="haveAppliedElsewhere" path="haveAppliedElsewhere"
					cssClass="autoWidth" cssErrorClass="error">Have you applied elsewhere?</form:label>
				<div class="minorElemSmall">
					<label for="haveAppliedElsewhere">Yes</label> <input type="radio"
						name="haveAppliedElsewhere" value="true" class="required">
				</div>
				<div class="minorElemSmall">
					<label for="haveAppliedElsewhere">No</label> <input type="radio"
						name="haveAppliedElsewhere" value="false">
				</div>
			</div>
		</div>
		<div id="whereAppliedDiv">
			<div class="row">
				<form:label for="whereApplied" path="whereApplied"
					cssClass="autoWidth" cssErrorClass="error">Where else have you applied?</form:label>
				<br> <input type="text" name="whereApplied"
					class="explanation required">
			</div>
			<div class="row">
				<form:label for="failedAdoptionReason" path="failedAdoptionReason"
					cssClass="autoWidth" cssErrorClass="error">What is the reason for not adopting from above?</form:label>
				<br> <input type="text" name="failedAdoptionReason"
					class="explanation required">
			</div>
		</div>
	</div>
</div>
