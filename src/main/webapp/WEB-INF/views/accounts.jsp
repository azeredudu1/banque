<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<link rel="stylesheet" type="text/css"
	href="../../resources/files/css/bootstrap.min.css">
<html>
<div class="panel panel-default ">
	<c:choose>

		<c:when test="${!empty comptes}">
			<div class="panel-body">
				<table class="table table-hover table-striped">
					<thead>
						<tr>
							<th></th>
							<th>Account Number</th>
							<th>Account Type</th>
							<th>Balance</th>
							<th>Currency</th>
							<th>Date of creation</th>


						</tr>


					</thead>
					<c:forEach items="${comptes }" var="cpte">
						<tr>
							<td><a
								href='<spring:url value="/accounts/${cpte.codeCompte}"></spring:url>'
								style="color: #800000">Details</a></td>
							<td><c:out value="${cpte.codeCompte }"></c:out></td>
							<td>${cpte}</td>
							<td><c:out value="${cpte.solde }"></c:out></td>
							<td>${cpte.currency }</td>
							<td><c:out value="${cpte.dateCreation }"></c:out></td>








						</tr>

					</c:forEach>



				</table>


				<div class="panel-footer" style="text-align: center;">
					<c:forEach begin="0" end="${banqueForm.nombrePages-1 }" var="p">

						<c:choose>
							<c:when test="${p==banqueForm.page }">
								<a class="btn btn-primary active">${p+1 }</a>
							</c:when>
							<c:otherwise>
								<a class="btn btn-primary"
									href='<spring:url value="/accounts?page=${p}&username=${name} "></spring:url>'>
									${p+1} </a>

							</c:otherwise>
						</c:choose>


					</c:forEach>
				</div>

			</div>



		</c:when>

		<c:otherwise>




			<div class="panel-body">

				<h4 style="color: red; text-align: center;">No Account found in
					the database !</h4>


			</div>


		</c:otherwise>


	</c:choose>
</div>


</html>
