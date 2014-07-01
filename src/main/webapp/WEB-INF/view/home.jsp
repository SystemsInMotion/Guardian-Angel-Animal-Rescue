<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt" %>

<div id="pet-preview" class="selfclear">
    <div id="petCarousels">
        <div class="carousel" id="cat-carousel">
            <div class="innards">
                <div style="text-align: center; padding-top: 42px">
                    <img src="<c:url value='/images/spinner_18_18.gif'/>"/>
                </div>
            </div>
        </div>
        <div class="carousel" id="dog-carousel">
            <div style="text-align: center; padding-top: 42px">
                <img src="<c:url value='/images/spinner_18_18.gif'/>"/>
            </div>
        </div>
    </div>
    <img id="previewImg" class="shadow" style="visibility: hidden"/>
</div>

<jsp:include page="/WEB-INF/fragments/sidebar.jsp"/>

<div class="module-left">
    <div class="innards">
        <h3>Showings</h3>
        <hr>
        <p>
            <strong>Cats shown every Sat 1-4 pm</strong> at <a
                href="http://stores.petsmart.com/Store/Details/686" target="_blank">PetSmart
            in Commerce Twp</a> unless otherwise noted. If interested in meeting a
            particular pet, please <a
                href="mailto:guardian_angel_rescue@hotmail.com">email</a> us in
            advance. Private home visits may also be available. Our hotline
            number is (734) 516-2171.
        </p>
    </div>
</div>

<div class="module-left">
    <div class="innards selfclear">
         <h3>Cat and Dog Brushes Needed</h3>
        <hr>
        <p>
   Our Detroit babies need cat and dog brushes. If anybody has any extra that they are 
   willing to donate, please contact us at 734-788-6857 or guardian_angel_rescue@hotmail.com 
   and we can pick them up. Otherwise, you may drop any extra brushes off at 
   <a href="http://stores.petsmart.com/Store/Details/686" target="_blank">PetSmart in Commerce Twp</a>
   and we will deliver them to Detroit. Thank you.
        </p>
    </div>
</div>

<div class="module-left">
    <div class="innards">
        <h3>Foster Homes Needed</h3>
        <hr>
        <p>
			<span style="color: #ff0000;"><strong>GAAR is
                searching for foster homes for both cats and dogs.</strong></span> <span
                style="color: #000000;">&nbsp;If you are interested in
				temporarily caring for a pet until a permanent home is found for
				them, please contact us at <a
                    href="mailto:guardian_angel_rescue@hotmail.com">guardian_angel_rescue@hotmail.com</a>.
				&nbsp;We will work with you to find the right fit for your home.
				Many wonderful animals are waiting for a full belly, warm bed, and a
				human friend.
			</span>
        </p>
    </div>
</div>