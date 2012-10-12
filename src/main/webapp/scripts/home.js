$(document).ready(function(){
	$('.menuitem img').animate({width: 100}, 0); //Set all menu items to smaller size

	$('.menuitem').mouseover(function(){ //When mouse over menu item

		gridimage = $(this).find('img'); //Define target as a variable
		gridimage.stop().animate({width: 200}, 150); //Animate image expanding to original size

	}).mouseout(function(){ //When mouse no longer over menu item

		gridimage.stop().animate({width: 100}, 150); //Animate image back to smaller size

	});
});
