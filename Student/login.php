<?php

include('dbcon.php');
        session_start();
        $email = $_POST['email'];
        $password = $_POST['password'];

//dito iistore

/* student */
            $query = "SELECT * FROM student WHERE email='$email' AND password='$password'";
            $result = mysqli_query($conn,$query)or die(mysqli_error());
            $row = mysqli_fetch_array($result);
            $num_row = mysqli_num_rows($result);

        if( $num_row > 0 ) { 
        $_SESSION['id']=$row['student_id'];
            header('location:../Student/StudentDashboard.php');
        }else{ ?> 
        <script>
    	alert('Incorrect Email or Password. Try Again!');
        window.location = 'loginsignup.php';
        </script>
        <?php
        }
?>