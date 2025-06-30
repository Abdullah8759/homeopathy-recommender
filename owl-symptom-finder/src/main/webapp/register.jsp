
<!DOCTYPE html>
<html>
<head>
<title>Register - Advance Physiotherapy Clinic</title>
<link rel="stylesheet" href="css/style.css">
<style>
.register-container {
	max-width: 400px;
	margin: 50px auto;
	padding: 30px;
	background-color: #1e1e2f;
	color: white;
	border-radius: 10px;
	box-shadow: 0 0 10px rgba(255, 255, 255, 0.1);
}

.register-container input[type="text"], .register-container input[type="email"],
	.register-container input[type="password"] {
	width: 100%;
	padding: 12px;
	margin: 10px 0;
	border: none;
	border-radius: 5px;
	background-color: #333;
	color: #fff;
}

.register-container input[type="submit"] {
	background-color: #28a745;
	color: white;
	padding: 12px;
	width: 100%;
	border: none;
	border-radius: 5px;
	font-size: 16px;
	cursor: pointer;
}

.register-container input[type="submit"]:hover {
	background-color: #218838;
}

h2 {
	text-align: center;
	margin-bottom: 20px;
}
</style>
</head>
<body>
	<div class="register-container">
		<h2>Patient Registration</h2>
		<form action="RegisterServlet" method="post">
			Name: <input type="text" name="name" required><br>
			Email: <input type="email" name="email" required><br>
			Password: <input type="password" name="password" required><br>
			<input type="submit" value="Register">
		</form>
	</div>
	
	
</body>
</html>

