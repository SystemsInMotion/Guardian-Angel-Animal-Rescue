var validator;

$(document).ready(function() {
	$('button').button();
	
	jQuery.validator.setDefaults({
		debug: true
	});
	
	jQuery.validator.addMethod("familyAware", function(value, element) {
		var isAware = $('input:radio[name=familyAware]:checked').val();
		return !(isAware == 'false' && value.trim().length == 0);
	}, "Please provide a reason why your family is not aware of your desire to adopt a pet.");

	validator = $("#adoptionForm").validate({
		rules: {
			emailConfirm: {
				equalTo: "#email"
			}
		},
		messages: {
			emailConfirm: {
				equalTo: "Emails do not match.  Please re-enter."
			}
		}
	});
	
	$('#submitBtn').click(function(){
		var result = validator.form();
		var numberOfInvalids = validator.numberOfInvalids();
		alert("result : " + result + "\nnumberOfInvalids : " + numberOfInvalids);
//		if (numberOfInvalids == 0) {
//			this.form.submit();
//		}
	});

	
	$('#livingSituation').change(function(){
		if(this.options[this.selectedIndex].value != 'own'){
			$('#petsAllowedDiv').css('display','block');
			$('#petsAllowedProofDiv').css('display','block');
		}else{
			$('#petsAllowedDiv').css('display','none');
			$('#petsAllowedProofDiv').css('display','none');
		}
	});

	$('#householdMemberCount').keyup(function() {
		if (jQuery.isNumeric(this.value)) {
			householdMemberAges(this.value);
			var display = 'none';
			if (this.value > 1) {
				display = 'block';
			}
			$('#familyAwareDiv').css('display', display);
			$('#caretakerDiv').css('display', display);
		} else if (this.value == '') {
			this.value = '';
			$('#householdMemberAgesDiv').html("");
		} else {
			$('#householdMemberAgesDiv').html("");
			alert("Invalid value.  Please insert a number.");
			this.value = '';
		}
	});
	
	$('#currentPetCount').keyup(function() {
		if (jQuery.isNumeric(this.value) && this.value < 21) {
			currentPets(this.value);
		} else if (this.value == '') {
			this.value = '';
			$('#currentPets').html("");
		} else {
			$('#currentPets').html("");
			alert("Invalid value.  Please insert a number.");
			this.value = '';
		}
	});
	
	$('#previousPetCount').keyup(function() {
		if (jQuery.isNumeric(this.value) && this.value < 21) {
			previousPets(this.value);
		} else if (this.value == '') {
			this.value = '';
			$('#previousPets').html("");
		} else {
			$('#previousPets').html("");
			alert("Invalid value.  Please insert a number.");
			this.value = '';
		}
	});
	
	$('input[name="fencedYard"]').click(function() {
		$('#willingToInstallFenceDiv').css('display','none');
		$('input[name="willingToInstallFenceDiv"]').removeAttr("checked");
		$('#howContainPetDiv').css('display','none');
	});
	$('input[name="fencedYard"][value="no"]').click(function() {
		$('#willingToInstallFenceDiv').css('display','block');
	});

	$('input[name="willingToInstallFence"]').click(function() {
		$('#howContainPetDiv').css('display','none');
	});
	$('input[name="willingToInstallFence"][value="no"]').click(function() {
		$('#howContainPetDiv').css('display','block');
	});

	$('input[name="haveAppliedElsewhere"]').click(function() {
		$('#whereAppliedDiv').css('display','none');
	});
	$('input[name="haveAppliedElsewhere"][value="true"]').click(function() {
		$('#whereAppliedDiv').css('display','block');
	});
	
	$('#firstName').focus();
});

function currentPets(petCount) {
	if (jQuery.isNumeric(petCount)) {
		var currentPets = '';
		for(var i = 0; i < petCount; i++) {
			currentPets += '<hr>';
			currentPets += '<div class="row">';
			currentPets += '	<label for="currentPets['+i+'].name">Pet name</label><input name="currentPets['+i+'].name" type="text" class="required">';
			currentPets += '</div>';
			currentPets += '<div class="row">';
			currentPets += '	<label for="currentPets['+i+'].breed">Type/Breed</label><input name="currentPets['+i+'].breed" type="text" class="required">';
			currentPets += '</div>';
			currentPets += '<div class="row">';
			currentPets += '	<label for="currentPets['+i+'].age">Age</label><input name="currentPets['+i+'].age" type="text" class="input2char digits required">';
			currentPets += '</div>';
			currentPets += '<div class="row grid2col">';
			currentPets += '	<div class="column">';
			currentPets += '  		<label for="currentPets['+i+'].isIndoor" class="autoWidth">Where does this pet primarily stay?</label>';
			currentPets += '		<div class="minorElem">';
			currentPets += '  			<label for="currentPets['+i+'].isIndoor">Indoor</label><input name="currentPets['+i+'].isIndoor" value="true" type="radio" class="short required">';
			currentPets += '		</div>';
			currentPets += '		<div class="minorElem">';
			currentPets += '  			<label for="currentPets['+i+'].isIndoor">Outdoor</label><input name="currentPets['+i+'].isIndoor" value="false" type="radio" class="short">';
			currentPets += '		</div>';
			currentPets += '	</div>';
			currentPets += '	<div class="column">';
			currentPets += '		<label for="currentPets['+i+'].isSterilized" class="autoWidth">Is this pet sterilized?</label>';
			currentPets += '		<div class="minorElem">';
			currentPets += '  			<label for="currentPets['+i+'].isSterilized">Yes</label><input name="currentPets['+i+'].isSterilized" value="true" type="radio" class="short required">';
			currentPets += '		</div>';
			currentPets += '		<div class="minorElem">';
			currentPets += '  			<label for="currentPets['+i+'].isSterilized">No</label><input name="currentPets['+i+'].isSterilized" value="false" type="radio" class="short">';
			currentPets += '		</div>';
			currentPets += '	</div>';
			currentPets += '</div>';
			currentPets += '<div class="row grid2col">';
			currentPets += '	<div class="column">';
			currentPets += '  		<label for="currentPets['+i+'].hasVaccines" class="autoWidth">Is this pet current on its vaccines?</label>';
			currentPets += '		<div class="minorElem">';
			currentPets += '  			<label for="currentPets['+i+'].hasVaccines">Yes</label><input name="currentPets['+i+'].hasVaccines" value="true" type="radio" class="short required">';
			currentPets += '		</div>';
			currentPets += '		<div class="minorElem">';
			currentPets += '  			<label for="currentPets['+i+'].hasVaccines">No</label><input name="currentPets['+i+'].hasVaccines" value="false" type="radio" class="short">';
			currentPets += '		</div>';
			currentPets += '	</div>';
			currentPets += '	<div class="column">';
			currentPets += '		<label for="currentPets['+i+'].isHeartwormed" class="autoWidth">Is this pet on heartworm preventative?</label>';
			currentPets += '		<div class="minorElem">';
			currentPets += '  			<label for="currentPets['+i+'].isHeartwormed">Yes</label><input name="currentPets['+i+'].isHeartwormed" value="true" type="radio" class="short required">';
			currentPets += '		</div>';
			currentPets += '		<div class="minorElem">';
			currentPets += '  			<label for="currentPets['+i+'].isHeartwormed">No</label><input name="currentPets['+i+'].isHeartwormed" value="false" type="radio" class="short">';
			currentPets += '		</div>';
			currentPets += '	</div>';
			currentPets += '</div>';
		};
		$('#currentPets').html(currentPets);
	}
}

function previousPets(petCount) {
	if (jQuery.isNumeric(petCount)) {
		var previousPets = '';
		for(var i = 0; i < petCount; i++) {
			var isLast = (i + 1 == petCount) ? ' last' : '';
			previousPets += '<hr>';
			previousPets += '<div class="row">';
			previousPets += '	<label for="previousPets['+i+'].breed">Type/Breed</label><input name="previousPets['+i+'].breed" type="text" class="required">';
			previousPets += '</div>';
			previousPets += '<div class="row">';
			previousPets += '	<label for="previousPets['+i+'].ownedHowLong" class="autoWidth">How many years did you own this pet?</label>&nbsp;&nbsp;<input name="previousPets['+i+'].ownedHowLong" type="text" class="input2char digits required">';
			previousPets += '</div>';
			previousPets += '<div class="row' + isLast + '">';
			previousPets += '	<label class="autoWidth">Where is this pet now?</label><br><input type="text" name="previousPets['+i+'].whereNow" class="explanation required">';
			previousPets += '</div>';
		};
		$('#previousPets').html(previousPets);
	}
}

function householdMemberAges(memberCount) {
	if (jQuery.isNumeric(memberCount)) {
		var householdMemberAges = '<label class="inline">Age of each household member:</label>';
		for(var i = 0; i < memberCount; i++) {
			householdMemberAges += '<input name="householdMemberAges['+i+']" type="text" class="input2char digits required">&nbsp;&nbsp;';
		};
		$('#householdMemberAgesDiv').html(householdMemberAges);
		$('#householdMemberAgesDiv').css("display","block");
	}
}
