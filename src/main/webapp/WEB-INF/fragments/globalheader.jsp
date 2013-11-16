<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt"%>
<div id="globalheader">
	<div class="innards">
		<a href="<c:url value='/app/home'/>"><img alt="GAAR logo"
			src="<c:url value='/images/gaar_logo.jpg'/>" id="gaar-logo"
			width="192" height="80" /></a>
		<div id="globalnav">
			<ul>
				<li><a href="<c:url value='/app/about'/>">About Us</a></li>
				<li><a href="<c:url value='/app/cats'/>">Cats</a></li>
				<li><a href="<c:url value='/app/dogs'/>">Dogs</a></li>
				<li><a href="<c:url value='/app/brokenWings'/>">Broken
						Wings</a></li>
				<li><a href="<c:url value='/app/faq'/>">FAQ</a></li>
				<li><a href="<c:url value='/app/support'/>">Support GAAR</a></li>
				<li><a href="<c:url value='/app/volunteer'/>">Volunteer</a></li>
				<li><a href="<c:url value='/app/contact'/>">Contact Us</a></li>
			</ul>
		</div>
		<div id="globalnav-mini" data-role="fieldcontain">
			<select id="select-mobile-nav" data-mini="true">
				<option>Menu</option>
				<option value="<c:url value='/app/about'/>">About Us</option>
				<option value="<c:url value='/app/cats'/>">Cats</option>
				<option value="<c:url value='/app/dogs'/>">Dogs</option>
				<option value="<c:url value='/app/brokenWings'/>">Broken
					Wings</option>
				<option value="<c:url value='/app/faq'/>">FAQ</option>
				<option value="<c:url value='/app/support'/>">Support GAAR</option>
				<option value="<c:url value='/app/volunteer'/>">Volunteer</option>
				<option value="<c:url value='/app/contact'/>">Contact Us</option>
			</select>
		</div>
	</div>
</div>
