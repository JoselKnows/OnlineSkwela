<?php
include('dbcon.php');
if (isset($_POST['backup_delete'])){
$id=$_POST['selector'];
$N = count($id);
for($i=0; $i < $N; $i++)
{
	$result = mysqli_query($conn,"DELETE FROM student_backpack where file_id='$id[$i]'");
}
?>
<script>
	alert('Deleted to backpack');
window.location = '../Student/backpack.php';
</script>
<?php
}
?>