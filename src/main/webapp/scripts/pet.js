$(window).ready(function(){
	$(".pet-thumbnail").mouseover(function() {
		$("#petImage").attr("src", $(this).find("img").attr("src"));
	});
});
