<?php include('header_dashboard.php'); ?>
<?php include('session.php'); ?>
<?php $get_id = $_GET['id']; ?>

<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<link rel="stylesheet" type="text/css" href="student_css/assignment_student.css">
	<title></title>
</head>
<body>

	<?php include('StudentHeader.php'); ?> 
<?php include('StudentSideNav.php'); ?>

        <section class="main_contant" id="main_contant">

        	<div class="desig-div" style="margin-top: -40px;">
            						<?php $class_query = mysqli_query($conn,"select * from teacher_class
										LEFT JOIN class ON class.class_id = teacher_class.class_id
										LEFT JOIN subject ON subject.subject_id = teacher_class.subject_id
										where teacher_class_id = '$get_id'")or die(mysqli_error());
										$class_row = mysqli_fetch_array($class_query);
										?>

            					 <a href="#" class="desig-1"><?php echo $class_row['class_name']; ?></a><span class="divider" style="font-size: 10px; color: #787878;"> &nbsp;&nbsp;&nbsp;/&nbsp;&nbsp;&nbsp; </span>
                                 <a href="#" class="desig-1"><?php echo $class_row['subject_code']; ?></a><span class="divider" style="font-size: 10px; color: #787878;"> &nbsp;&nbsp;&nbsp;/&nbsp;&nbsp;&nbsp; </span>
                                 <a href="#" class="desig-2">School Year: <?php echo $class_row['school_year']; ?></a><span class="divider" style="font-size: 10px; color: #787878;"> &nbsp;&nbsp;&nbsp;/&nbsp;&nbsp;&nbsp; </span>
                                 <a href="#" class="desig-1">Uploaded Assignments</a>
                           </div>

                           <div class="my-acc-h1">
                                <span class="acc-hi">Hi </span>
                                <span class="acc-name"> <?php echo $row['firstname']." ".$row['lastname'];  ?></span>
                                <span class="acc-welcome">, Welcome Back</span>
                            </div>

                            <div class="featured-text" style="margin-bottom: 40px;">
                                <span style="color: #747b7f;">Active User.</span>
                            </div>

	        <div class="container-fluid">
	            <div class="row-fluid">
					<?php include('class_sidebar.php'); ?>
	                <div class="span9" id="content" style="padding-bottom: 50px;">
	                     <div class="row-fluid">
					   
					   <!-- breadcrumb -->
				
										<?php $class_query = mysqli_query($conn,"select * from teacher_class
										LEFT JOIN class ON class.class_id = teacher_class.class_id
										LEFT JOIN subject ON subject.subject_id = teacher_class.subject_id
										where teacher_class_id = '$get_id'")or die(mysqli_error());
										$class_row = mysqli_fetch_array($class_query);
										?>
				
					     <ul class="breadcrumb">
							
						</ul>
						 <!-- end breadcrumb -->
						
						
                        <!-- block -->
                        <div id="block_bg" class="block">
                            <div class="navbar navbar-inner block-header">
								<?php $query = mysqli_query($conn,"select * FROM assignment where class_id = '$get_id'  order by fdatein DESC")or die(mysqli_error()); 
									  $count  = mysqli_num_rows($query);
								?>
                                <div id="" class="muted pull-right"><span class="badge badge-info"></span></div>
                            </div>
                            <div class="block-content1 collapse in">

                            	<div class="header-my-acc" style="display: flex;">
                                    <span>Uploaded Assignments</span>

                                     <span style="margin-left: auto;">Uploaded Count : <span><?php echo $count; ?></span></span> 
                                </div>

                                <div class="span12">
								<?php
									$query = mysqli_query($conn,"select * FROM assignment where class_id = '$get_id'  order by fdatein DESC")or die(mysqli_error());
									$count = mysqli_num_rows($query);
									if ($count == '0'){?>

								<center>
									<br> <br>
									<div class="alert alert-info" style="background-color:#6599FF; color: white;"><i class="fas fa-exclamation-triangle"></i>No Assignment Currently Uploaded</div>
								</center>
									<?php
									}else{
								?>
                                <table cellpadding="0" cellspacing="0" border="0" class="table" id="customers">
						
										<thead>
										    <br>
										        <tr>
												<th>Date Upload</th>
												<th>File Name</th>
												<th>Description</th>
												<th>Download / Submit</th>
												</tr>
												
										</thead>
										<tbody>
											
                              		<?php
										$query = mysqli_query($conn,"select * FROM assignment where class_id = '$get_id'  order by fdatein DESC")or die(mysqli_error());
										while($row = mysqli_fetch_array($query)){
										$id  = $row['assignment_id'];
										$floc = $row['floc'];
									?>                              
										<tr>
										 <td><?php echo $row['fdatein']; ?></td>
                                         <td><?php  echo $row['fname']; ?></td>
                                         <td><?php echo $row['fdesc']; ?></td>                                      
                                         <td width="220">
										 <form id="assign" method="post" action="submit_assignment.php<?php echo '?id='.$get_id ?>&<?php echo 'post_id='.$id ?>">
										 <input type="hidden" name="id" value="<?php echo $id; ?>">
										 <?php
											if ($floc == ""){
											}else{
										 ?>
										  <a data-placement="bottom" title="Download" id="<?php echo $id; ?>download"  class="btn btn-info" href="<?php echo $row['floc']; ?>"><i class="fas fa-download"></i></a>
										<?php } ?>
										 <button  data-placement="bottom" title="Submit Assignment" id="<?php echo $id; ?>submit" class="btn btn-success" name="btn_assign"><i class="fas fa-upload"></i> Submit Assignment</button>
										 </form>
										 </td>                                      
														<script type="text/javascript">
														$(document).ready(function(){
															$('#<?php echo $id; ?>submit').tooltip('show');
															$('#<?php echo $id; ?>submit').tooltip('hide');
														});
														</script>
                             							<script type="text/javascript">
														$(document).ready(function(){
															$('#<?php echo $id; ?>download').tooltip('show');
															$('#<?php echo $id; ?>download').tooltip('hide');
														});
														</script>

                               
                                </tr>
                         
						 <?php } ?>
						   
                              
										</tbody>
									</table>
						 <?php } ?>
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
