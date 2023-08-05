<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<jsp:include page="head.jsp" />
<body>
	<form action="${Action}" method="post">
		<div class="container">
			<div class="row bg-success p-2 text-light">
				<div class="col-md-12">
					<h2>REGISTRATION PAGE</h2>
				</div>
			</div>
			<div class="row">
				<div class="col-md-6 bg-info p-3 text-light">
					<div class="row p-2">
						<div class="col-md-3">FirstName</div>
						<div class="col-md-5">
							<input type="hidden" name="id" class="form-control" value="${IdValue}"/>
							<input type="text" name="firstName" class="form-control" value="${FirstNameValue}" />
						</div>
						<div class="col-md-4 text-danger">${FirstNameError}</div>
					</div>
					<div class="row p-2">
						<div class="col-md-3">LastName</div>
						<div class="col-md-5">
							<input type="text" name="lastName" class="form-control" value="${LastNameValue}" />
						</div>
						<div class="col-md-4 text-danger">${LastNameError}</div>
					</div>
					<div class="row p-2">
						<div class="col-md-3">Address</div>
						<div class="col-md-5">
							<input type="text" name="address" class="form-control" value="${AddressValue}" />
						</div>
						<div class="col-md-4 text-danger">${AddressError}</div>
					</div>
					<div class="row p-2">
						<div class="col-md-3">City</div>
						<div class="col-md-5">
							<input type="text" name="city" class="form-control" value="${CityValue}" />
						</div>
						<div class="col-md-4 text-danger">${CityError}</div>
					</div>
					<div class="row p-2">
						<div class="col-md-3">State</div>
						<div class="col-md-5">
							<input type="text" name="state" class="form-control" value="${StateValue}" />
						</div>
						<div class="col-md-4 text-danger">${StateError}</div>
					</div>
					<div class="row p-2">
						<div class="col-md-3">Email</div>
						<div class="col-md-5">
							<input type="text" name="email" class="form-control" value="${EmailValue}" />
						</div>
						<div class="col-md-4 text-danger">${EmailError}</div>
					</div>
					<div class="row p-2">
						<div class="col-md-3">Phone</div>
						<div class="col-md-5">
							<input type="text" name="phone" class="form-control" value="${PhoneValue}" />
						</div>
						<div class="col-md-4 text-danger">${PhoneError}</div>
					</div>
					
					<div class="row p-2">
						<div class="col-md-3">
							<input type="submit" value="${ButtonValue}" class="btn btn-warning" />
						</div>
						<div class="col-md-9">
							<div class="text-success">${SuccessMessage}</div>
							<div class="text-danger">${ErrorMessage}</div>
						</div>
					</div>
				</div>

				<div class="col-md-9 bg-warning">
					<table class="table">
						<tr>
							<th>ACTION</th>
							<th>FirstName</th>
						    <th>LastName</th>
							<th>Address</th>
							<th>City</th>
							<th>State</th>
							<th>Email</th>
							<th>Phone</th>
						</tr>
						<c:forEach var="person" items="${PersonList}">
							<tr>
								<td><a href="./deletePerson?id=${person.id}"><svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-trash3-fill" viewBox="0 0 16 16">
  <path d="M11 1.5v1h3.5a.5.5 0 0 1 0 1h-.538l-.853 10.66A2 2 0 0 1 11.115 16h-6.23a2 2 0 0 1-1.994-1.84L2.038 3.5H1.5a.5.5 0 0 1 0-1H5v-1A1.5 1.5 0 0 1 6.5 0h3A1.5 1.5 0 0 1 11 1.5Zm-5 0v1h4v-1a.5.5 0 0 0-.5-.5h-3a.5.5 0 0 0-.5.5ZM4.5 5.029l.5 8.5a.5.5 0 1 0 .998-.06l-.5-8.5a.5.5 0 1 0-.998.06Zm6.53-.528a.5.5 0 0 0-.528.47l-.5 8.5a.5.5 0 0 0 .998.058l.5-8.5a.5.5 0 0 0-.47-.528ZM8 4.5a.5.5 0 0 0-.5.5v8.5a.5.5 0 0 0 1 0V5a.5.5 0 0 0-.5-.5Z"/>
</svg></a>&nbsp&nbsp&nbsp&nbsp&nbsp




<a href="./getPersonEdit?id=${person.id}">"<svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-eyedropper" viewBox="0 0 16 16">
  <path d="M13.354.646a1.207 1.207 0 0 0-1.708 0L8.5 3.793l-.646-.647a.5.5 0 1 0-.708.708L8.293 5l-7.147 7.146A.5.5 0 0 0 1 12.5v1.793l-.854.853a.5.5 0 1 0 .708.707L1.707 15H3.5a.5.5 0 0 0 .354-.146L11 7.707l1.146 1.147a.5.5 0 0 0 .708-.708l-.647-.646 3.147-3.146a1.207 1.207 0 0 0 0-1.708l-2-2zM2 12.707l7-7L10.293 7l-7 7H2v-1.293z"/>
</svg></a></td>
								<td>${person.firstName}</td>
								<td>${person.lastName}</td>
								<td>${person.address}</td>
								<td>${person.city}</td>
								<td>${person.state}</td>
								<td>${person.email}</td>
								<td>${person.phone}</td>
							</tr>
						</c:forEach>
					</table>
				</div>

			</div>
		</div>

	</form>

</body>
</html>