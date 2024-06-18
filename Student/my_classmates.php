<?php include('header_dashboard.php'); ?>
<?php include('session.php'); ?>
<?php $get_id = $_GET['id']; ?>

<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<link rel="stylesheet" type="text/css" href="student_css/myclassmates.css">
	<title></title>
</head>
<body>

	<?php include('StudentHeader.php'); ?> 
<?php include('StudentSideNav.php'); ?>
        
        <section class="main_contant" id="main_contant">

        	<div style="padding-bottom: 50px;">

                     		<div class="desig-div">
                                 <a href="#" class="desig-1">My Class</a><span class="divider" style="font-size: 10px; color: #787878;"> &nbsp;&nbsp;&nbsp;/&nbsp;&nbsp;&nbsp; </span>
                                 <a href="#" class="desig-2">School Year: <?php echo $school_year_query_row['school_year']; ?></a><span class="divider" style="font-size: 10px; color: #787878;"> &nbsp;&nbsp;&nbsp;/&nbsp;&nbsp;&nbsp; </span>
                                 <a href="#" class="desig-1">My Classmates</a>
                           </div>

                           <div class="my-acc-h1">
                                <span class="acc-hi">Hi </span>
                                <span class="acc-name"> <?php echo $row['firstname']." ".$row['lastname'];  ?></span>
                                <span class="acc-welcome">, Welcome Back</span>
                            </div>

                            <div class="featured-text" style="margin-bottom: 40px;">
                                <span style="color: #747b7f">Active User.</span>
                            </div>

 <?php include('class_sidebar.php'); ?>

        <div class="container-fluid">
            <div class="row-fluid">
				
                <div class="span9" id="content">
                     <div class="row-fluid">
						<div class="pull-right">
						<!--<a href="add_student.php<?php echo '?id='.$get_id; ?>" class="btn btn-info"><i class="fas fa-plus" style="margin-right: 6px;"></i> Add Student</a>
						<a onclick="window.open('print_student.php<?php echo '?id='.$get_id; ?>')"  class="btn btn-success"><i class="fas fa-th-list" style="margin-right: 6px;"></i> Student List</a>-->
						</div>

						
                        <!-- block -->
                        <div id="block_bg" class="block">
                            <div class="navbar navbar-inner block-header">
                               
                            </div>
                            <div class="block-content collapse in">

                            	<div class="header-my-acc">
                                    <span>My Classmates</span>

                                    
								<?php 
								$my_student = mysqli_query($conn,"SELECT * FROM teacher_class_student
														LEFT JOIN student ON student.student_id = teacher_class_student.student_id 
														INNER JOIN class ON class.class_id = student.class_id where teacher_class_id = '$get_id' order by lastname ")or die(mysqli_error());
								$count_my_student = mysqli_num_rows($my_student);?>
								<span  style="margin-left: auto;">Number of Classmates :&nbsp; </span> <span class="badge badge-info" style="font-weight: bold;" > <?php echo $count_my_student; ?></span>
								

                                </div>

                                <div class="span12">
									<ul	 id="da-thumbs" class="da-thumbs">
										    <?php
														$my_student = mysqli_query($conn,"SELECT * FROM teacher_class_student
														LEFT JOIN student ON student.student_id = teacher_class_student.student_id 
														INNER JOIN class ON class.class_id = student.class_id where teacher_class_id = '$get_id' order by lastname ")or die(mysqli_error());
														while($row = mysqli_fetch_array($my_student)){
														$id = $row['teacher_class_student_id'];
														?>
											<li id="del<?php echo $id; ?>">
													<a href="#">
															<img id="student_avatar_class" src ="../Admin/<?php echo $row['location'] ?>" width="124" height="140" class="img-polaroid" onerror=this.src="../images/NO-IMAGE-AVAILABLE.jpg">
														<div>
														    
														    
														<span>
														<p><?php ?></p>
														
														</span>
														</div>
													</a>
													<p class="class"><?php echo $row['lastname'];?></p>
													<p class="subject"><?php echo $row['firstname']; ?></p>
													<div style="margin-top: 25px; margin-bottom: 25px;">
														
											</li>
											<?php //include("remove_student_modal.php"); ?>
											<?php } ?>
									</ul>
												<script type="text/javascript">
													$(document).ready( function() {
														$('.remove').click( function() {
														var id = $(this).attr("id");
															$.ajax({
															type: "POST",
															url: "remove_student.php",
															data: ({id: id}),
															cache: false,
															success: function(html){
																$("#del"+id).fadeOut('slow', function(){ $(this).remove();}); 
																$('#'+id).modal('hide');
																$.jGrowl("Your Student is Successfully Remove", { header: 'Student Remove' });
															}
															}); 	
															return false;
														});				
													});
												</script>
                                </div>
                            </div>
                        </div>
                        <!-- /block -->
                    </div>
                </div>
            </div>
		
        </div>
		<?php include('script.php'); ?>
	</section>

</body>
</html>
