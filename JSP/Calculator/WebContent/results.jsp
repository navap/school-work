<!DOCTYPE html>
<html>
<head>
<title>Java Midterm - Your Answer</title>
<link href="css/bootstrap.min.css" rel="stylesheet" media="screen">
</head>
<body>
	<div class="container">
		<nav>
			<h3 class="muted">
				<a href="/Calculator">Java Midterm</a>: Your Answer
			</h3>
		</nav>

		<hr>

		<div class="jumbotron">
			<h1>Your Answer</h1>
			<p class="lead">Ta dah!</p>
		</div>

		<hr>

		<p><%= session.getAttribute("val1") %> <%= session.getAttribute("function_name") %> <%= session.getAttribute("val2") %> is <%= session.getAttribute("result") %>.</p>
		
		<form method="post" action="Calculator">
			<input type="hidden" name="step" value="1" />
			<button class="btn btn-inverse" type="submit">Start Over</button>
		</form>

		<hr />

		<footer>
			<p class="muted">Pavan Chander</p>
		</footer>
	</div>

</body>
</html>