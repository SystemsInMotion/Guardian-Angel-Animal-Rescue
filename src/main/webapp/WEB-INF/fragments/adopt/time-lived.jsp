<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<div class="column">
	<label>Time lived there?</label>
	<div class="multi-option">
		<input type="text" name="yearsLived" maxlength="2" class="input2char">
		<form:label for="yearsLived" path="yearsLived" cssErrorClass="error"
			class="minor"> Years</form:label>
	</div>
	<input type="text" name="monthsLived" maxlength="2" class="input2char">
	<form:label for="monthsLived" path="monthsLived" cssErrorClass="error"
		class="minor"> Months</form:label>
</div>
