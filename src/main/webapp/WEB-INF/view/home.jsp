<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt"%>
<div class="module">
	<h3>Showings</h3>
	<p>
		<strong>Cats shown every Sat 1-4 pm</strong> at <a
			href="http://stores.petsmart.com/Store/Details/686" target="_blank">PetSmart
			in Commerce Twp</a> unless otherwise noted. If interested in meeting a
		particular pet, please <a href="http://www.gaarmichigan.org/contact/">email</a>
		us in advance. Private home visits may also be available. Our hotline
		number is (734) 516-2171.
	</p>
</div>

<div id="petCarousels">
	<div class="carousel" id="cat-carousel"><div style="text-align:center;padding-top:42px"><img src="<c:url value='/images/spinner_18_18.gif'/>"/></div></div>
	<div class="carousel" id="dog-carousel"><div style="text-align:center;padding-top:42px"><img src="<c:url value='/images/spinner_18_18.gif'/>"/></div></div>
</div>
<img id="previewImg" class="shadow" style="visibility:hidden" />
