$(document).ready(function() {
	$('#previousPetCount').keyup(function() {
		if (jQuery.isNumeric(this.value) && this.value < 21) {
			petHistories(this.value);
		} else if (this.value == ''){
			this.value = '';
			$('#petHistory').html("");
		} else {
			$('#petHistory').html("");
			alert("Invalid value.  Please insert a number.");
			this.value = '';
			
		}
	});
});

function petHistories(petCount) {
	if (jQuery.isNumeric(petCount)) {
		var previousPets = '';
		for(var i = 0; i < petCount; i++) {
			previousPets += '<hr>';
			previousPets += '<div class="row grid2col">';
			previousPets += '<div class="column">Name <input name="previousPets['+i+'].name" type="text" class="short"></div>';
			previousPets += '<div class="column">Type/Breed <input name="previousPets['+i+'].breed" type="text"></div>';
			previousPets += '</div><div class="row grid2col">';
			previousPets += '<div class="column">Age <input name="previousPets['+i+'].age" type="text" class="input2char"></div>';
			previousPets += '<div class="column">Indoor <input name="previousPets['+i+'].isIndoor" value="true" type="radio" class="short"> Outdoor <input name="previousPets['+i+'].isIndoor" value="true" type="radio" class="short"></div></div>';
			previousPets += '</div><div class="row grid2col">';
			previousPets += '<div class="column">Sterilized? <input name="previousPets['+i+'].sterilized" type="Radio" class="input2char"> Yes <input name="previousPets['+i+'].sterilized" type="Radio" class="input2char"> No </div>';
			previousPets += '<div class="column">Current on Vaccines? <input name="previousPets['+i+'].currentVaccines" type="Radio" class="input2char"> Yes <input name="previousPets['+i+'].currentVaccines" type="Radio" class="input2char"> No</div></div>';
			previousPets += '</div><div class="row grid2col">';
			previousPets += '<div class="column">Heartworm Prevention? <input name="previousPets['+i+'].heartworm" type="Radio" class="input2char"> Yes <input name="previousPets['+i+'].heartworm" type="Radio" class="input2char"> No </div></div>';
			

		};
		$('#petHistory').html(previousPets);
	}
}
