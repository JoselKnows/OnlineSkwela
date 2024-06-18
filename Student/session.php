<?php
//Start session
if(!isset($_SESSION)) 
    { 
        session_start(); 
    }
//Check whether the session variable SESS_MEMBER_ID is present or not
if (!isset($_SESSION['id']) || ($_SESSION['id'] == '')) {
    header("location:../MainMenu/signup.php");
    exit();
   
}

$session_id=$_SESSION['id'];
?>