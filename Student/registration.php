

<?php
include('../Admin/dbcon.php');
session_start();

$studentID = $_POST['studentID'];
$password = $_POST['password'];
$firstname = $_POST['firstname'];
$lastname = $_POST['lastname'];
$email = $_POST['email'];


    $query = mysqli_query($conn,"select * from student where  firstname='$firstname' and lastname='$lastname' and studentID='$studentID'")or die(mysqli_error());
    $row = mysqli_fetch_array($query);
    $id = $row['student_id'];

    $count = mysqli_num_rows($query);
    if ($count > 0){
        mysqli_query($conn,"update student set studentID='$studentID',password = '$password', email = '$email', status = 'Registered' where student_id = '$id'")or die(mysqli_error());
        $_SESSION['id']=$id;
            ?>
        <script>
	alert('Registration Success!');
    window.location = 'loginsignup.php';
    </script>
            <?php
    }else{ ?>
       <script>
	alert('Data Not Found. Try again!');
    window.location = 'loginsignup.php';
        </script>
            <?php
}
?>