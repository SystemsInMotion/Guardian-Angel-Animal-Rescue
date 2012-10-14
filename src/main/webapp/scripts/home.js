	(function($) {
		var methods = {
			init : function(options) {

				var $this = this;
				options = $.extend({
					click : 300,
					hover : 20
				}, options);

				var LEFT = -1;
				var RIGHT = 1;
				var ANIMATION_PERIOD = 200;

				var getTargetOffset = function(movement, dir) {
					var maxBound = 0;
					var minBound = $this.find(".slider-wrapper").width()
							- $this.find(".slider").width();
					var sliderOffset = parseInt($this.find(".slider").css(
							"left")) || 0;
					var targetOffset = sliderOffset + (movement * dir);
					targetOffset = Math.max(targetOffset, minBound);
					targetOffset = Math.min(targetOffset, maxBound);
					return targetOffset;
				};

				var scrollLeft = function() {
					scroll("left");
				};

				var scrollRight = function() {
					scroll("right");
				};

				var scroll = function(dir) {
					if (dir == "left") {
						dir = LEFT;
						repeat = scrollLeft;
					} else {
						dir = RIGHT;
						repeat = scrollRight;
					}

					var targetOffset = getTargetOffset(options.hover, dir);
					console.log(targetOffset);
					$this.find(".slider").animate({
						left : targetOffset
					}, ANIMATION_PERIOD, "linear", repeat);
				};

				$this.find(".slider-button:first-child").click(function() {
					$this.find(".slider").stop().animate({
						left : getTargetOffset(options.click, RIGHT)
					}, ANIMATION_PERIOD, "linear", scrollRight);
				}).mouseover(scrollRight).mouseout(function() {
					$this.find(".slider").stop();
				});
				$this.find(".slider-button:last-child").click(function() {
					$this.find(".slider").stop().animate({
						left : getTargetOffset(options.click, LEFT)
					}, ANIMATION_PERIOD, "linear", scrollLeft);
				}).mouseover(scrollLeft).mouseout(function() {
					$this.find(".slider").stop();
				});

			}
		};
		$.fn.carousel = function(method) {
			if (methods[method]) {
				for ( var funcI = 0; funcI < this.length; funcI++) {
					var returnValue = methods[method].apply($(this[funcI]),
							Array.prototype.slice.call(arguments, 1));
					if (typeof returnValue !== "undefined")
						return returnValue;
				}
			} else if (typeof method === "object" || !method) {
				for ( var initI = 0; initI < this.length; initI++) {
					methods.init.apply($(this[initI]), arguments);
				}
			} else {
				$.error("jQuery.zoomCarousel." + method + " does not exist");
			}
		};
	}(jQuery));

	$(window).ready(function() {
		$(".carousel").carousel({});

		$(".pet-thumbnail").mouseover(function() {
			$("#previewImg").attr("src", $(this).find("img").attr("src"));
		});
	});
