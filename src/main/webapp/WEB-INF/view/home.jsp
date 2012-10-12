<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt"%>
<style type="text/css">
.petDisplay {
	display: inline-block;
	text-align: center;
	vertical-align: bottom;
}

.petDisplay img {
	height: 75px;
	box-shadow: rgba(0, 0, 0, 0.35) 3px 3px 3px;
	padding: 5px;
	background: white;
	margin: 2px;
}
.petDisplay img:hover {
	box-shadow: rgba(0, 0, 255, 0.6) 3px 3px 3px;
}

.petDisplay .petDetails {
	display: none;
}
.sliderButton {
	width: 28px;
	font-size: 40px;
	font-family: "Segoe UI", Tahoma, sans-serif;
	border: none;
	margin: 0 5px;
	padding: 20px 0 29px;
	outline: none;
	background-color: transparent;
	cursor: pointer;
	color: rgba(0, 0, 0, 0.5);
	border-radius: 5px;
	display: inline-block;
}
.sliderButton:hover {
	background-color: rgba(0, 0, 0, 0.06);
}
.slider-wrapper {
	display: inline-block;
	width: 500px;
	height: 110px;
	overflow: hidden;
	vertical-align: bottom;
	position: relative;
}
.slider {
	position: absolute;
}
.carousel {
	width: 600px;
	height: 110px;
	overflow: hidden;
	white-space: nowrap;
}
#petCarousels {
	float: left;
	width: 566px;
}
#previewImg {
	height: 150px;
}
</style>

<script type="text/javascript">
(function($){
	var methods = {
		init: function(options) {
			
			var $this = this;
            options = $.extend({
                click: 300,
                hover: 20
            }, options);

            var LEFT = -1;
            var RIGHT = 1;
            var ANIMATION_PERIOD = 200;
            
            var getTargetOffset = function(movement, dir) {
            	var maxBound = 0;
            	var minBound = $this.find(".slider-wrapper").width() - $this.find(".slider").width(); 
				var sliderOffset = parseInt($this.find(".slider").css("left")) || 0;
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
				$this.find(".slider").animate({left: targetOffset }, ANIMATION_PERIOD, "linear", repeat); 
            };
            
			$this.find(".sliderButton:first-child")
				.click(function() {
					$this.find(".slider").stop().animate({left: getTargetOffset(options.click, LEFT)}, ANIMATION_PERIOD, "linear", scrollLeft);
				})
				.mouseover(scrollLeft)
				.mouseout(function(){
					$this.find(".slider").stop();
				});
			$this.find(".sliderButton:last-child")
				.click(function() {
					$this.find(".slider").stop().animate({left: getTargetOffset(options.click, RIGHT)}, ANIMATION_PERIOD, "linear", scrollRight);
				})
				.mouseover(scrollRight)
				.mouseout(function(){
					$this.find(".slider").stop();
				});

		}
	};
	$.fn.carousel = function(method) {
		if (methods[method]) {
            for (var funcI = 0; funcI < this.length; funcI++) {
                var returnValue = methods[method].apply($(this[funcI]), Array.prototype.slice.call(arguments, 1));
                if (typeof returnValue !== "undefined") return returnValue;
            }			
		} else if (typeof method === "object" || !method) {
            for (var initI = 0; initI < this.length; initI++) {
                methods.init.apply($(this[initI]), arguments);
            }
		} else {
			$.error("jQuery.zoomCarousel." + method + " does not exist");
		}
	}
}(jQuery));

$(window).ready(function() {
	$(".carousel").carousel({});
	
	$(".petDisplay").mouseover(function() {
		$("#previewImg").attr("src", $(this).find("img").attr("src"));
	});
});
</script>
<!-- <h3>Cats</h3> -->
<div id="petCarousels">
	<div class="carousel">
		<button class="sliderButton">&lt;</button>
		<div class="slider-wrapper">
			<div class="slider">
				<c:forEach items="${cats}" var="cat">
					<div class="petDisplay">
						<h3>${cat.name}</h3>
						<div class="petDetails">
							<h4>${cat.age}</h4>
							<ul style="margin: none">
								<c:forEach items="${cat.breeds.breed}" var="breed">
									<li>${breed}</li>
								</c:forEach>
							</ul>
						</div>
						<c:forEach items="${cat.media.photos.photo}" var="photo"
							varStatus="status">
							<c:if test="${photo.id eq 1 and photo.size eq 'pn' }">
								<a href="<c:url value='/app/pet/${cat.id}'/>"> <img
									src="${photo.value}" title="${cat.name}" />
								</a>
							</c:if>
						</c:forEach>
					</div>
				</c:forEach>
			</div>
		</div>
		<button class="sliderButton">&gt;</button>
	</div>
	
	<!-- <h3>Dogs</h3> -->
	<div class="carousel">
		<button class="sliderButton">&lt;</button>
		<div class="slider-wrapper">
			<div class="slider">
				<c:forEach items="${dogs}" var="dog">
					<div class="petDisplay">
						<h3>${dog.name}</h3>
						<div class="petDetails">
							<h4>${dog.age}</h4>
							<ul style="margin: none">
								<c:forEach items="${dog.breeds.breed}" var="breed">
									<li>${breed}</li>
								</c:forEach>
							</ul>
						</div>
						<c:forEach items="${dog.media.photos.photo}" var="photo"
							varStatus="status">
							<c:if test="${photo.id eq 1 and photo.size eq 'pn' }">
								<a href="<c:url value='/app/pet/${dog.id}'/>"> <img
									src="${photo.value}" title="${dog.name}" />
								</a>
							</c:if>
						</c:forEach>
					</div>
				</c:forEach>
			</div>
		</div>
		<button class="sliderButton">&gt;</button>
	</div>
</div>

<img id="previewImg"/>