	
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<c:import url="/WEB-INF/jsp/header.jsp"/>
<title>GoodReads Author Search</title>

<style>
table.dataTable thead .sorting:after,
table.dataTable thead .sorting:before,
table.dataTable thead .sorting_asc:after,
table.dataTable thead .sorting_asc:before,
table.dataTable thead .sorting_asc_disabled:after,
table.dataTable thead .sorting_asc_disabled:before,
table.dataTable thead .sorting_desc:after,
table.dataTable thead .sorting_desc:before,
table.dataTable thead .sorting_desc_disabled:after,
table.dataTable thead .sorting_desc_disabled:before {
bottom: .5em;
}
</style>

<script>
$(document).ready(function () {
	$('#dtBasicExample').DataTable();
	$('.dataTables_length').addClass('bs-select');
	});
</script>
	
	
	<table id="dtBasicExample" class="table table-striped table-bordered table-sm" cellspacing="0" width="100%">
  <thead>
    <tr>
      <th class="th-sm">Title
      </th>
      <th class="th-sm">Number of Ratings
      </th>
      <th class="th-sm">Average Rating
      </th>
      <th class="th-sm">Number of Pages
      </th>
      <th class="th-sm">Description
      </th>
      <th class="th-sm">Link
      </th>
    </tr>
  </thead>
  <tbody>
  <c:forEach items="${books1}" var="book">
    <tr>
      <td>${book.bookTitle}</td>
      <td>${book.ratingCount}</td>
      <td>${book.averageRating}</td>
      <td>${book.numOfPages}</td>
      <td>${book.description}</td>
      <td><a href="${book.bookLink}">See on Goodreads</a></td>
    </tr>
    </c:forEach>
  </tbody>
  <tfoot>
    <tr>
      <th>Title
      </th>
      <th>Number of Ratings
      </th>
      <th>Average Rating
      </th>
      <th>Number of Pages
      </th>
      <th>Description
      </th>
      <th>Link
      </th>
    </tr>
  </tfoot>
</table>
	
<c:import url="/WEB-INF/jsp/footer.jsp"/>