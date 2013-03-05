<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<h3>Disclaimer</h3>
<div class="module">
	<div class="row">
		<form:label for="medicalAwareness" path="awareOfUnknownIssues"
			cssClass="autoWidth" cssErrorClass="error">Are you aware that rescue animals may have unknown
				medical and behavior history?</form:label>
		<div class="minorElemSmall">
			<label for="awareOfUnknownIssues">Yes</label> <input type="radio"
				name="awareOfUnknownIssues" value="true" class="required">
		</div>
		<div class="minorElemSmall">
			<label for="awareOfUnknownIssues">No</label> <input type="radio"
				name="awareOfUnknownIssues" value="false">
		</div>
	</div>
	<div class="row">
		<form:label for="homeVisit" path="agreedToHomeVisit"
			cssClass="autoWidth" cssErrorClass="error">Would you allow a GAAR volunteer to do a home visit
				before or upon adoption?</form:label>
		<div class="minorElemSmall">
			<label for="agreedToHomeVisit">Yes</label> <input type="radio"
				name="agreedToHomeVisit" value="true" class="required">
		</div>
		<div class="minorElemSmall">
			<label for="agreedToHomeVisit">No</label> <input type="radio"
				name="agreedToHomeVisit" value="false">
		</div>
	</div>
	<div>
		<label class="autoWidth">What Each Applicant Should Know</label>
		<ul class="circle">
			<li>All animals, unless otherwise stated, come with age
				appropriate vaccines and sterilization.</li>
			<li>Submitting an application does not obligate you to adopt nor
				does it guarantee ${pet.name} will be adopted to you.</li>
			<li>Guardian Angel Animal Rescue does not work on a first come
				first serve basis. We collect applications on ${pet.name} in
				question and make a determination on where we think ${pet.name} will
				do best.</li>
			<li>Guardian Angel Animal Rescue reserves the right to deny any
				application without explanation.</li>
			<li>It may take up to 7 days to process an application. The
				volunteers at GAAR all work full time jobs and we do our volunteer
				work in on our lunch hours, evenings and weekends. We cannot always
				reply ASAP to an application that has been placed.<br />
			</li>
			<li>The Guardian Angel Animal Rescue Board makes all adoption
				decisions and their decision is FINAL.</li>
		</ul>
	</div>
</div>