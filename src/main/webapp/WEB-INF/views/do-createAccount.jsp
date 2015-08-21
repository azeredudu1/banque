<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<link rel="stylesheet" type="text/css"
	href="../../resources/files/css/bootstrap.min.css">
<div class="panel panel-default">
	<div class="panel-heading">
		<center>
			<h3 style="color: #800000">Account details</h3>
		</center>
	</div>
	<div class="panel-body">
		<form:form modelAttribute="banqueForm" action="createAccount">
			<c:if test="${success eq true }">
				<div class="alert alert-success"><center>Account successfully created</center>
				</div>

			</c:if>

			<div class="form-group col-sm-12">
				<label for="description"
					class="control-label col-sm-3 col-sm-offset-2  ">
					Description:</label>
				<div class="col-sm-4">
					<form:input path="description" cssClass="form-control"
						placeHolder="account description" />
					<form:errors path="description"></form:errors>
				</div>
			</div>

			<div class="form-group col-sm-12">
				<label for="solde" class="control-label col-sm-3 col-sm-offset-2  ">
					Initial balance <strong style="color: red">* </strong>:
				</label>
				<div class="col-sm-4">
					<form:input path="solde" cssClass="form-control" />
					<form:errors path="solde"></form:errors>
				</div>
			</div>
			<div class="form-group col-sm-12">
				<label for="decouvert"
					class="control-label col-sm-3 col-sm-offset-2  ">Overdraft<strong
					style="color: red"> *</strong> :
				</label>
				<div class="col-sm-4">
					<form:input path="decouvert" cssClass="form-control" />
					<form:errors path="decouvert"></form:errors>
				</div>
			</div>

			<div class="form-group col-sm-12">
				<label for="currency"
					class="control-label col-sm-3 col-sm-offset-2  ">Currency <strong
					style="color: red">*</strong> :
				</label>
				<div class="col-sm-4">
					<form:select path="currency" cssClass="form-control"
						itemLabel="select currency">
						<form:option value="Euro">

						</form:option>
						<form:option value="Dollar">

						</form:option>

					</form:select>
					<form:errors path="currency"></form:errors>
				</div>
			</div>
			<div class="form-group col-sm-12">
				<div class="col-sm-offset-5 col-sm-7">
					<button type="submit" class="btn btn-default" name="action">ok</button>
				</div>
			</div>


		</form:form>


	</div>





</div>