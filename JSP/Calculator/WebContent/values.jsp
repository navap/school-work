<!DOCTYPE html>
<html>
<head>
<title>Java Midterm - Enter Your Numbers</title>
<link href="css/bootstrap.min.css" rel="stylesheet" media="screen">
</head>
<body>
	<div class="container">
		<nav>
			<h3 class="muted">
				<a href="/Calculator">Java Midterm</a>: Enter Your Numbers
			</h3>
		</nav>

		<hr>

		<div class="jumbotron">
			<h1>Enter Your Numbers</h1>
			<p class="lead">Number 1 will be <%= session.getAttribute("function_name") %> number 2</p>
		</div>

		<hr>

		<form method="post" action="Calculator">
			<input type="hidden" name="step" value="3">
			<label>Number 1:</label> 
			<input type="text" name="val1" /> 
			<label>Number 2:</label>
			<input type="text" name="val2" />

			<p>
				<button type="submit" class="btn btn-primary">Calculate!</button>
			</p>
		</form>

		<hr />

		<footer>
			<p class="muted">Pavan Chander</p>
		</footer>
	</div>

</body>
</html>