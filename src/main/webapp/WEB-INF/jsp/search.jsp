
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<c:import url="/WEB-INF/jsp/header.jsp"/>
	<c:url var="formAction" value="/search" />
	<form method="POST" action="${formAction}">
		<div class="formInputGroup">
			<label for="name">Author Name</label> <input type="text" name="name"
				title="name" style="color: #888;" id="name" /> 
				<label for="minReviews">Minimum # of Reviews</label> <input type="text" name="minReviews"
				title="minReviews" style="color: #888;" id="minReviews" />
				<input class="formSubmitButton" type="submit" value="Search" />
		</div>
	</form>
<c:import url="/WEB-INF/jsp/footer.jsp"/>
