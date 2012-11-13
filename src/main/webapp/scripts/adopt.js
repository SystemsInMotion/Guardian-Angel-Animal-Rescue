$(document).ready(function() {
	$('#currentPetCount').keyup(function() {
		if (jQuery.isNumeric(this.value) && this.value < 21) {
			currentPets(this.value);
		} else if (this.value == ''){
			this.value = '';
			$('#currentPets').html("");
		} else {
			$('#currentPets').html("");
			alert("Invalid value.  Please insert a number.");
			this.value = '';
			
		}
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
			currentPets += '<div class="row' + isLast + '"><label>Where is this pet now?</label><input type="text" name="currentPets['+i+'].whereNow" class="explanation"></div>';

		};
		$('#currentPets').html(currentPets);
	}
}
