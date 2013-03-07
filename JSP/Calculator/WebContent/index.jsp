<!DOCTYPE html>
<html>
<head>
	<link href="css/bootstrap.min.css" rel="stylesheet" media="screen">
    <style type="text/css">
      body {
        padding-top: 40px;
        padding-bottom: 40px;
        background-color: #f5f5f5;
      }

      .form-signin {
        max-width: 600px;
        padding: 19px 29px 29px;
        margin: 0 auto 20px;
        background-color: #fff;
        border: 1px solid #e5e5e5;
        -webkit-border-radius: 5px;
           -moz-border-radius: 5px;
                border-radius: 5px;
        -webkit-box-shadow: 0 1px 2px rgba(0,0,0,.05);
           -moz-box-shadow: 0 1px 2px rgba(0,0,0,.05);
                box-shadow: 0 1px 2px rgba(0,0,0,.05);
      }
      .form-signin .form-signin-heading,
      .form-signin .checkbox {
        margin-bottom: 10px;
      }
      .form-signin input[type="text"],
      .form-signin input[type="password"] {
        font-size: 16px;
        height: auto;
        margin-bottom: 15px;
        padding: 7px 9px;
      }

    </style>
</head>
<body>
	<div class="container">
		<form class="form-signin" method="post" action="Calculator">
			<h2 class="form-signin-heading">Please sign in</h2>
			<% if (request.getAttribute("error") == "1") { %>
				<p class="text-error">That was not a valid user name and/or password.</p>
			<% } %>
			<input type="text" class="input-block-level" placeholder="User name" name="username"> 
			<input type="password" class="input-block-level" placeholder="Password" name="password">
			<input type="hidden" name="step" value="1">  

			<button class="btn btn-large btn-primary" type="submit">Sign in</button>
		</form>
	</div>
</body>
</html>