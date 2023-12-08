<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>

<!-- bootstrap -->
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css"
	integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm"
	crossorigin="anonymous">
</head>
<body class="" style="background: #e2e2e2;">
	<div class="container mt-4">
		<div class="row">
			<div class="col-md-8 offset-md-2">
				<div class="card">
					<div class="card-body">
						<h3 class="text-center">Complex Form</h3>
						<div class="alert alert-danger" role="alert">
							<form:errors path="student.*"/>	
						</div>
						<form action="handleform" method="post">
							<div class="form-group">
								<label for="exampleInputEmail">Your name</label> <input
									name="name" type="text" class="form-control"
									id="exampleInputEmail" aria-describedby="emailHelp"
									placeholder="Enter Name"> <small id="emailHelp"
									class="form-text text-muted">We'will never share your
									name with anyone else.</small>

							</div>
							<div class="form-group">
								<label for="exampleInputEmail">Your id</label> <input name="id"
									type="text" class="form-control" id="exampleInputEmail"
									aria-describedby="emailHelp" placeholder="Enter Id">
							</div>
							<div class="form-group">
								<label for="exampleInputEmail">Your DOB</label> <input
									name="date" type="date" class="form-control"
									id="exampleInputEmail" aria-describedby="emailHelp"
									placeholder="dd/mm/yyyy">
							</div>
							<div class="form-group">
								<label for="exampleFormSelect1">Select courses</label> <select
									name="courses" class="form-control" id="exampleFormSelect1"
									multiple>
									<option>Java</option>
									<option>Python</option>
									<option>C++</option>
									<option>Django</option>
									<option>Spring Framework</option>
								</select>
							</div>
							<div class="form-group">
								<span class="mr-3">Select Gender</span>
								<div class="form-check form-check-inline">
									<input name="gender" type="radio" class="form-check-input"
										id="inlineRadio1" aria-describedby="emailHelp" value="male">
									<label class="form-check-label" form="inlineRadio1">Male</label>
								</div>
								<div class="form-check form-check-inline">
									<input name="gender" type="radio" class="form-check-input"
										id="inlineRadio2" aria-describedby="emailHelp" value="female">
									<label class="form-check-label" form="inlineRadio2">Female</label>
								</div>
							</div>
							<div class="form-group">
								<label for="exampleInputEmail">Select Type</label> <select
									class="form-control" name="type">
									<option value="oldstudent">Old Student</option>
									<option value="normalstudent">Normal Student</option>
								</select>
							</div>

							<div class="card">
								<div card-body>
									<p>Your address</p>
									<div class="form-group">
										<input name="address.street" type="text" class="form-control"
											placeholder="Enter street" />
									</div>
									<div class="form-group">
										<input name="address.city" type="text" class="form-control"
											placeholder="Enter city" />
									</div>
								</div>
							</div>
							<div class="container text-center">
								<button type="submit" class="btn btn-primary">Submit</button>
							</div>
						</form>
					</div>
				</div>
			</div>
		</div>

	</div>

</body>
</html>