$(document).ready(function() {
	$('#previousPetCount').change(function() {
		if (jQuery.isNumeric(this.value)) {
			petHistories(this.value);
		} else {
			alert("Invalid value.  Please insert a number.");
			this.value = '';
		}
	});
});

function petHistories(petCount) {
	if (jQuery.isNumeric(petCount)) {
		alert("It's a number!: " + petCount);
	}
}
