$(document).ready(function() {
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

	$('input[name="willingToInstallFenceDiv"]').click(function() {
		$('#howContainPetDiv').css('display','none');
	});
	$('input[name="willingToInstallFenceDiv"][value="no"]').click(function() {
		$('#howContainPetDiv').css('display','block');
	});

	$('input[name="haveAppliedElsewhere"]').click(function() {
		$('#whereAppliedDiv').css('display','none');
	});
	$('input[name="haveAppliedElsewhere"][value="true"]').click(function() {
		$('#whereAppliedDiv').css('display','block');
	});
});

function currentPets(petCount) {
	if (jQuery.isNumeric(petCount)) {
		var currentPets = '';
		for(var i = 0; i < petCount; i++) {
			var isLast = (i + 1 == petCount) ? ' last' : '';
			currentPets += '<hr>';
			currentPets += '<div class="row grid3col">';
			currentPets += '  <div class="column"><label for="currentPets['+i+'].name">Name</label><input name="currentPets['+i+'].name" type="text" class=""></div>';
			currentPets += '  <div class="column"><label for="currentPets['+i+'].breed">Type/Breed</label><input name="currentPets['+i+'].breed" type="text"></div>';
			currentPets += '  <div class="column"><label for="currentPets['+i+'].age">Age</label><input name="currentPets['+i+'].age" type="text" class="input2char"></div>';
			currentPets += '</div>';
			currentPets += '<div class="row grid2col">';
			currentPets += '  <div class="column"><label for="currentPets['+i+'].isIndoor">Where does this pet primarily stay?</label><div class="multi-option"><input name="currentPets['+i+'].isIndoor" value="true" type="radio" class="short"> Indoor</div><input name="currentPets['+i+'].isIndoor" value="false" type="radio" class="short"> Outdoor</div>';
			currentPets += '  <div class="column"><label for="currentPets['+i+'].isSterilized">Is this pet sterilized?</label><div class="multi-option"><input name="currentPets['+i+'].isSterilized" type="radio" value="true"> Yes</div><input name="currentPets['+i+'].isSterilized" type="radio" value="false"> No</div>';
			currentPets += '</div>';
			currentPets += '<div class="row grid2col">';
			currentPets += '  <div class="column"><label for="currentPets['+i+'].hasVaccines">Is this pet current on its vaccines?</label><div class="multi-option"><input name="currentPets['+i+'].hasVaccines" type="radio" class="input2char"> Yes</div><input name="currentPets['+i+'].hasVaccines" type="radio" class="input2char"> No</div>';
			currentPets += '  <div class="column"><label for="currentPets['+i+'].isHeartwormed">Is this pet on heartworm preventative?</label><div class="multi-option"><input name="currentPets['+i+'].isHeartwormed" type="radio" class="input2char"> Yes</div><input name="currentPets['+i+'].isHeartwormed" type="radio" class="input2char"> No</div>';
			currentPets += '</div>';
			//currentPets += '<div class="row' + isLast + '"><label>Where is this pet now?</label><input type="text" name="currentPets['+i+'].whereNow" class="explanation"></div>';
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
			previousPets += '<div class="row grid2col">';
			previousPets += '  <div class="column"><label for="previousPets['+i+'].breed">Type/Breed</label><input name="previousPets['+i+'].breed" type="text"></div>';
			previousPets += '  <div class="column"><label for="previousPets['+i+'].ownedHowLong">How long did you own this pet?</label><input name="previousPets['+i+'].ownedHowLong" type="text" class="input2char"> years</div>';
			previousPets += '</div>';
			previousPets += '<div class="row' + isLast + '"><label>Where is this pet now?</label><input type="text" name="previousPets['+i+'].whereNow" class="explanation"></div>';
		};
		$('#previousPets').html(previousPets);
	}
}

function householdMemberAges(memberCount) {
	if (jQuery.isNumeric(memberCount)) {
		var householdMemberAges = '<label class="inline">Age of each household member:</label>';
		for(var i = 0; i < memberCount; i++) {
			householdMemberAges += '<input name="householdMemberAges['+i+']" type="text" class="input2char">&nbsp;&nbsp;';
		};
		$('#householdMemberAgesDiv').html(householdMemberAges);
		$('#householdMemberAgesDiv').css("display","block");
	}
}
