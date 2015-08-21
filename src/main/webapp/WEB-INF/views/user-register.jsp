<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<link rel="stylesheet" type="text/css"
	href="../../resources/files/css/bootstrap.min.css">
<div class="panel panel-default">
	<div class="panel-heading">
		<h3 style="color: #800000">Registration details</h3>
	</div>
	<div class="panel-body">
		<form:form commandName="user"
			cssClass="form-horizontal registrationForm">
			<c:if test="${success eq true }">
				<div class="alert alert-success"><center>Registration successfully</center></div>

			</c:if>
			<div class="form-group">
				<label for="name" class="control-label col-sm-2 ">First
					Name:</label>
				<div class="col-sm-6">
					<form:input path="firstName" cssClass="form-control" />
					<form:errors path="firstName"></form:errors>
				</div>

			</div>
			<div class="form-group">
				<label for="name" class="control-label col-sm-2 ">Last Name:</label>
				<div class="col-sm-6">
					<form:input path="lastName" cssClass="form-control" />
					<form:errors path="lastName"></form:errors>
				</div>

			</div>
			<div class="form-group">
				<label for="name" class="control-label col-sm-2 ">User name:</label>
				<div class="col-sm-6">
					<form:input path="userName" cssClass="form-control" />
					<form:errors path="userName"></form:errors>
				</div>

			</div>

			<div class="form-group">
				<label for="name" class="control-label col-sm-2 ">Address:</label>
				<div class="col-sm-6">
					<form:input path="address" cssClass="form-control" />
					<form:errors path="address"></form:errors>
				</div>

			</div>

			<div class="form-group ">
				<label for="email" class="control-label col-sm-2">Email:</label>
				<div class="col-sm-6">
					<form:input path="email" cssClass="form-control" />
					<form:errors path="email"></form:errors>
				</div>

			</div>
			<div class="form-group ">
				<label for="password" class="control-label col-sm-2 ">Password:</label>
				<div class="col-sm-6">
					<form:password path="userPassword" cssClass="form-control" />
					<form:errors path="userPassword"></form:errors>
				</div>

			</div>
			<!-- <div class="form-group">
				<label for="password" class="control-label col-sm-2">Confirm:</label>
				<div class="col-sm-6">
					<input type="Password" name="password_again" id="password_again"
						class="form-control">
				</div>

			</div> -->
			<div class="form-group">
				<div class="col-sm-offset-2 col-sm-6">
					<input type="submit" class="btn btn-lg btn-primary submit"
						value="Register">

				</div>
			</div>





		</form:form>

	</div>



</div>