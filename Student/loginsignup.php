<?php 
session_start();
?>


<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<title>Onlineskwela- Login and Registration Form</title>
	<link rel="stylesheet" type="text/css" href="../Teacher/loginsignup.css">
</head>
<body>
	<div class="hero">
		<div class="form-box">
			<div class="button-box">
				<div id="btn"></div>
				<button type="button" class="toggle-btn" onclick="login()">Log In</button>
				<button type="button" class="toggle-btn" onclick="register()">Register</button>
			</div>
		<div class="social-icons">
			<a href="../index.php"><img src="../images/logo.png"></a>
		</div>
		<form id="login" class="input-group" action="login.php" method="POST">
			<input type="text" class="input-field" id="username" name="email" placeholder="Enter Email Address" required>
			<input type="password" class="input-field" id="password" name="password" placeholder="Enter Password" required>
			<!-- <input type="checkbox" class="chech-box"><span>Remember Password</span> -->
			<a href="">Forgot password?</a>
			<br>
			<br>
			<button type="submit" name="login" class="submit-btn">LOG IN</button>
			
		<?php  include('../Student/dbcon.php');
        if(isset($_SESSION['test']))
        {
        ?>
            <div class="test" style="  width: 100%; align-items: center; height: 100%; display: grid; justify-items: center; width: 50%; text-align: center; margin: 0; padding: 2px; font-size: 20px;font-weight: bold; color: #FFFFFF;  ">
                <strong><?= $_SESSION['test']; ?></strong>
            </div>
        <?php 
        unset($_SESSION['test']);
        }
        ?>
		</form>

			<form id="register" class="input-group"  action="registration.php" method="POST">
			<input type="text" class="input-field" name="firstname" placeholder="First Name" required>
			<input type="text" class="input-field" name="lastname"placeholder="Last Name" required>
			<input type="text" class="input-field"  name="studentID" placeholder="ID Number" required>
			<input type="text" class="input-field" name="email" placeholder="Enter Email Address" required>
			<input type="password" class="input-field" name="password" placeholder="Enter Password" required>
			<!-- <input type="checkbox" class="chech-box"><span>I agree to the terms and conditions </span> -->
			<br>
			<button type="submit" class="submit-btn">REGISTER</button>
			
		</form>
		</div>
		
	</div>

	<script type="text/javascript">
		var x = document.getElementById("login");
		var y = document.getElementById("register");
		var z = document.getElementById("btn");

		function register(){
			x.style.left = "-400px";
			y.style.left = "50px";
			z.style.left = "110px";
		}

		function login(){
			x.style.left = "50px";
			y.style.left = "450px";
			z.style.left = "0px";
		}

	</script>
</body>
</html>