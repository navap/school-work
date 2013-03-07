<!DOCTYPE html>
<html>
	<head>
		<title>Java Midterm - Choose a Function</title>
		<link href="css/bootstrap.min.css" rel="stylesheet" media="screen">
	</head>
	<body>
		<div class="container">
			<nav>
				<h3 class="muted"><a href="/Calculator">Java Midterm</a>: Choose a Function</h3>
			</nav>

			<hr>
			
			<div class="jumbotron">
				<h1>Choose a Function</h1>
				<p class="lead">
					Choose your poison
				</p>
			</div>

			<hr>

			<form method="post" action="Calculator">
			<div class="row-fluid marketing">
				<div class="span3">
					<input type="hidden" name="step" value="2" />					
					<button class="btn btn-block btn-primary" type="submit" name="function" value="1">Addition</button> 
				</div>

				<div class="span3">
					<button class="btn btn-block btn-success" type="submit" name="function" value="2">Subtraction</button> 
				</div>
				
				<div class="span3">
					<button class="btn btn-block btn-warning" type="submit" name="function" value="3">Multiplication</button> 
				</div>

				<div class="span3">
					<button class="btn btn-block btn-danger" type="submit" name="function" value="4">Division</button> 
				</div>
			</div>
			</form>

			<hr />
			
			<footer>
				<p class="muted">
					Pavan Chander
				</p>
			</footer>
		</div>

	</body>
</html>