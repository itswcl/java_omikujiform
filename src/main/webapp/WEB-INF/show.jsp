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

	<div class="container d-flex justify-content-center text-center">
		<div class="col-5">
		<h1>Here's Your Omikuji</h1>
		<p class="border border-dark bg-primary fs-5 p-5">
			In <c:out value="${ number }"/> years, you will live in <c:out value="${ city }"/> with <c:out value="${ person }"/> as your 
			roommate, <c:out value="${ hobby }"/> for a living. The next time you see a 
			<c:out value="${ living }"/>, you will have god luck. Also, <c:out value="${ living }"/>
		</p>
		<a href="/omikuji">Go Back</a>
		</div>
		
	</div>

</body>
</html>