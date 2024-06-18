

  <body id="login">


    <link rel="stylesheet" type="text/css" href="signup-login-teacher.css">

    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
    <script type="text/javascript" src="main.js"></script>

</head>
<body>
    <header>
        <img src="../images/eskwela.png" class="logo" alt="OnlinEskwela Logo">
        <a href="#" class="school-name"><span>Blessed Regina Protmann </span>Catholic School</a>
       
        <input type="text" id="menu-bar">
        <label for="menu-bar" class="fas fa-bars"></label>
        <nav class="navbar">
            <a href="../index.php">Main Menu</a>
         
           
        </nav>
    </header>


    <div id="box">
        <div id="main"></div>

        <!-- <div id="loginform"> -->
        
        <!-- style="font-size: 20px; color: #FFFFFF; margin: 15px; --> 
    
   
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

        <form id="login-form"  action="login.php" method="POST">
            <h1>LOGIN</h1>
           <!-- <input type="text" name="name" placeholder="First Name"required> <br>
            <input type="text" name="lname" placeholder="Last Name"required> <br>
            <input type="text" name="username" id="username-field" class="login-form-field" placeholder="Username"required> <br>
            <input type="password" name="password" id="password-field" class="login-form-field" placeholder="Password"required> <br>
           <button type="submit">Login</button> -->

           <input type="text" class="input-block-level" id="username" name="username" placeholder="Username" required>
            <input type="password" class="input-block-level" id="password" name="password" placeholder="Password" required>
            <button data-placement="right" title="Click Here to Sign In" id="signin" name="login" class="btn btn-info" type="submit"><i class=""></i> Sign in</button>
                                                        

        
         </form>


        <form id="signup-form" action="student_signup.php" method="POST">
        <!-- <div id="signupform"> -->
            <h1>SIGN UP</h1>
          <input type="text" class="input-block-level" id="username" name="username" placeholder="ID Number" required><br>
            <input type="text" class="input-block-level" id="firstname" name="firstname" placeholder="Firstname" required><br>
            <input type="text" class="input-block-level" id="lastname" name="lastname" placeholder="Lastname" required><br>
            <label>Class</label>
            <select name="class_id" class="input-block-level span5">
                <option></option>
                <?php
                $query = mysqli_query($conn,"select * from class order by class_name ")or die(mysqli_error());
                while($row = mysqli_fetch_array($query)){
                ?>
                <option value="<?php  echo $row['class_id']; ?>"><?php echo $row['class_name']; ?></option>
                <?php
                }
                ?>
            </select><br>
            <input type="password" class="input-block-level" id="password" name="password" placeholder="Password" required><br>
            <input type="password" class="input-block-level" id="cpassword" name="cpassword" placeholder="Re-type Password" required><br>
            <button id="signin" name="login" class="btn btn-info" type="submit"><i class="icon-check icon-large"></i> Sign in</button>
        </form>

       <script>
            jQuery(document).ready(function(){
            jQuery("#signin_student").submit(function(e){
                    e.preventDefault();
                        
                        var password = jQuery('#password').val();
                        var cpassword = jQuery('#cpassword').val();
                    
                    
                    if (password == cpassword){
                   
                        if(html=='true'){
                        alert("Password does not match with your current password");
                        window.location = "signup.php";
                        }else if(html=='false'){
                             alert("Sign Up Failed");
                        window.location = "signup.php";
                            
                        }
                       
            
                    }else
                        {
                            alert("Student does not found in the database");
                        window.location = "signup.php";
                        
                        }
                });
            
            </script>


 
            
        <div id="loginmsg">Have an Account?</div>
        <div id="signupmsg">Don't Have an Account</div>
        
        <button type="reset" id="loginBtn">LOGIN</button>

        <button type="reset" id="signupBtn">SIGN UP</button>
    </div>
    
</body>
<?php include('../Admin/dbcon.php'); ?>
</html>