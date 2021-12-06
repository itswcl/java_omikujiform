<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<!-- Bootstrap CSS -->
<link rel="stylesheet" href="/webjars/bootstrap/css/bootstrap.min.css" />
<!-- local JS -->
<script type="text/javascript" src="js/app.js"></script>
<!-- Bootstrap JS or jQuery-->
<script src="/webjars/jquery/jquery.min.js"></script>
<script src="/webjars/bootstrap/js/bootstrap.min.js"></script>
<title>Starting page</title>
</head>
<body>

	<div class="container d-flex justify-content-center">

		<form action="/omikuji/formSubmit" method="post" class="form-group col-5 text-center">
			<h1>Send an Omikuji!</h1>
				<label>Pick any number from 5 to 25</label>
				<select class="form-control" name="numbers">
					<!-- forEach var link to out value -->
					<!-- forEach run from begin to end -->
					<c:forEach var = "number" begin = "5" end="25">
						<option value="${ number }">${ number }</option>
					</c:forEach>
				</select>
				<label>Enter the name of any city</label>
				<input class="form-control" type="text" name="city">
				<label>Enter the name of any real person</label>
				<input class="form-control" type="text" name="person">
				<label>Enter professional endeavor or hobby:</label>
				<input class="form-control" type="text" name="hobby">
				<label>Enter any type of living thing.</label>
				<input class="form-control" type="text" name="living">
				<label>Say something nice to someone:</label>
				<textarea class="form-control" name="niceToSomeone" rows="4" cols="6"></textarea>
				<label class="d-block">Send and show a friend</label>
				<input class="btn btn-block btn-primary" type="submit">
		</form>
	</div>

</body>
</html>