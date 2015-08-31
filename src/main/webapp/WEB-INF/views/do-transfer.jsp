<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<link rel="stylesheet" type="text/css"
	href="../../resources/files/css/bootstrap.min.css">
<div class="panel panel-default">
	<div class="panel-heading">

		<h3 style="color: #800000" align="center">Transfer Informations</h3>

	</div>
	<div class="panel-body">

		<form:form cssClass="form-horizontal" modelAttribute="banqueForm"
			action="transfer" method="post">
			<div class="form-group col-sm-12">
				<label for="codeCompte"
					class="col-sm-3 col-sm-offset-1 control-label">From Compte
					<strong style="color: red">*</strong> :
				</label>
				<div class="col-sm-6">

					<form:select cssClass="form-control" path="codeCpte">
						<form:option value="" label="select an account"></form:option>
						<form:options itemLabel="codeCompte" itemValue="codeCompte"
							items="${comptes }" />

					</form:select>
				</div>
			</div>
			<div class="form-group col-sm-12">
				<label for="codeCompte"
					class="col-sm-3 col-sm-offset-1 control-label">To <strong
					style="color: red">*</strong> :
				</label>
				<div class="col-sm-6">

					<form:input path="codeCpte2" placeholder="Receiver account number"
						cssClass="form-control" />
				</div>
			</div>
			<div class="form-group col-sm-12">
				<label for="montant" class="col-sm-3 col-sm-offset-1 control-label">Amount
					<strong style="color: red">*</strong> :
				</label>
				<div class="col-sm-6">

					<form:input path="montant" />
				</div>
			</div>

			<div class="form-group col-sm-12">
				<div class="col-sm-offset-4 col-sm-8">
					<button type="submit" class="btn btn-default" name="action">ok</button>
				</div>
			</div>
		</form:form>



	</div>



</div>