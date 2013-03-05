<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<div class="row">
	<label>Time lived there?</label>
	<div class="minorElem">
		<form:label for="yearsLived" path="yearsLived" cssErrorClass="error"
			class="digits required">Years</form:label>
		<input type="text" name="yearsLived" maxlength="2"
			class="input2char required">
	</div>
	<div class="minorElem">
		<form:label for="monthsLived" path="monthsLived" cssErrorClass="error"
			class="digits required">Months</form:label>
		<input type="text" name="monthsLived" maxlength="2" class="input2char required">
	</div>
</div>
