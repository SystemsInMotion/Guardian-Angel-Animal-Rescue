<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt" %>
<%@ taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles" %>
<div id="globalheader">
    <div id="applicationTitle">
        <tiles:getAsString name="title"/>
    </div>
    <a href="/app/home"><img alt="GAAR logo" src="/images/gaar_logo.jpg" id="gaar-logo" width="192" height="80"/></a>
</div>
