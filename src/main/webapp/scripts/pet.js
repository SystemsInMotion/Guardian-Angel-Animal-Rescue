$( window ).bind( 'load', function() {
	widestThumbnail();
	thumbnailMouseover();
});

function widestThumbnail() {
	var imgs = $(".pet-thumbnail img");
	var widest = imgs[0];
	for ( var i = 1; i < imgs.length; i++) {
		if (imgs[i].width > widest.width) {
			widest = imgs[i];
		}
	}
	$("#petImage").attr("src", widest.src);
	$("#petImageContainer").css("width", $("#petImageContainer").width());
}

function thumbnailMouseover() {
	$(".pet-thumbnail").mouseover(function() {
		$("#petImage").attr("src", $(this).find("img").attr("src"));
	});
}
