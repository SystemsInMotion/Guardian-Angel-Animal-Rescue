<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt"%>
<c:forEach items="${pets}" var="pet" varStatus="status">
<div>
<p>
<img src="${pet.media.photos.photo[0].value}"/><br>
${pet.name}<br>
${pet.breeds.breed}
</p>
<p>
</div>
</c:forEach>
