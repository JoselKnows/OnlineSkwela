<?php include('header_dashboard.php'); ?>
<?php include('session.php'); ?>
<?php $get_id = $_GET['id']; ?>

<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<link rel="stylesheet" type="text/css" href="student_css/downloadables.css">
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
                                  <a href="#" class="desig-1">School Year: <?php echo $class_row['school_year']; ?></a><span class="divider" style="font-size: 10px; color: #787878;"> &nbsp;&nbsp;&nbsp;/&nbsp;&nbsp;&nbsp; </span>
                                 <a href="#" class="desig-1">Downloadable Materials</a>
                           </div>

                           <div class="my-acc-h1">
                                <span class="acc-hi">Hi </span>
                                <span class="acc-name"> <?php echo $row['firstname']." ".$row['lastname'];  ?></span>
                                <span class="acc-welcome">, Welcome Back</span>
                            </div>

                            <div class="featured-text" style="margin-bottom: 40px;">
                                <span style="color: #747b7f;">Active User.</span>
                            </div>

        <div class="container-fluid" style="padding-bottom: 50px;">
            <div class="row-fluid">
				<?php include('class_sidebar.php'); ?>
                <div class="span6" id="content">
                     <div class="row-fluid">
					    <!-- breadcrumb -->
				
										<?php $class_query = mysqli_query($conn,"select * from teacher_class
										LEFT JOIN class ON class.class_id = teacher_class.class_id
										LEFT JOIN subject ON subject.subject_id = teacher_class.subject_id
										where teacher_class_id = '$get_id'")or die(mysqli_error());
										$class_row = mysqli_fetch_array($class_query);
										$class_id = $class_row['class_id'];
										$school_year = $class_row['school_year'];
										?>
				
					     <ul class="breadcrumb">
					
						</ul>
						 <!-- end breadcrumb -->
					 
                        <!-- block -->
                 
                        <div id="block_bg" class="block">
                            <div class="navbar navbar-inner block-header">
							<?php 	$query = mysqli_query($conn,"select * FROM files where class_id = '$get_id' order by fdatein DESC ")or die(mysqli_error());
									$count = mysqli_num_rows($query);
							?>
                                <div id="" class="muted pull-right"><span class="badge badge-info"></span></div>
                            </div>
                            <div class="block-content1 collapse in">

                            	<div class="header-my-acc">
                                    <span>Downloadables / Downloadable Count : <span><?php echo $count; ?></span></span>
                                    

                                    
                                </div>

                                <div class="span12">
										
								<?php
									$query = mysqli_query($conn,"select * FROM files where class_id = '$get_id' order by fdatein DESC ")or die(mysqli_error());
									$count = mysqli_num_rows($query);	
								if ($count == '0'){ ?>
								<center>
									<br> <br>
									<div class="alert alert-info" style="background-color:#6599FF; color: white;"><i class="fas fa-exclamation-triangle"></i> No downloadable material currently uploaded.</div> 
								</center>
								<?php
								}else{
								?>
								
								<br>
								
									<form action="copy_file_student.php" method="post">
									<div align="right">
										<button name="delete_user" class="btn btn-danger"><i class="fas fa-copy"></i> Copy Check item to backpack</button>
									</div>

									
									<?php //include('copy_to_backpack_modal.php'); ?>
  									<table cellpadding="0" cellspacing="0" border="0" class="table" id="customers">
						
										<thead>
										        <tr>
												<th>
													<div class="">
													Check All &nbsp;&nbsp;<input type="checkbox"  name="selectAll" id="checkAll" />
														<script>
														$("#checkAll").click(function () {
															$('input:checkbox').not(this).prop('checked', this.checked);
														});
														</script>					
													</div> 
												</th>
												<th>Date Upload</th>
												<th>File Name</th>
												<th>Description</th>
												<th>Uploaded by</th>
												<th>Download</th>
												
												</tr>
												
										</thead>
										<tbody>
											
                              		<?php
										$query = mysqli_query($conn,"select * FROM files where class_id = '$get_id' order by fdatein DESC ")or die(mysqli_error());
										while($row = mysqli_fetch_array($query)){
										$id  = $row['file_id'];
									?>                              
										<tr>
										<td width="30">
											<input id="" class="" name="selector[]" type="checkbox" value="<?php echo $id; ?>">
										</td>
                             
										 <td><?php echo $row['fdatein']; ?></td>
                                         <td><?php  echo $row['fname']; ?></td>
                                         <td><?php echo $row['fdesc']; ?></td>                                      
                                         <td><?php echo $row['uploaded_by']; ?></td>                                      
                                         <td width="30">
										 <a  class="btn btn-info5"data-placement="bottom" title="Download" id="<?php echo $id; ?>Download" href="<?php echo $row['floc']; ?>"><i class="fas fa-download"></i></a>
										 </td>            
														<script type="text/javascript">
														$(document).ready(function(){
															$('#<?php echo $id; ?>Download').tooltip('show');
															$('#<?php echo $id; ?>Download').tooltip('hide');
														});
														</script>	

																			 
                                </tr>
                         
						 <?php } ?>
						   
                              
										</tbody>
									</table>
									</form>
						 <?php } ?>		
                                </div>
                            </div>
                        </div>
                        <!-- /block -->
                    </div>
                </div>
				<?php //include('downloadable_sidebar_student.php'); ?>
            </div>

        </div>
		<?php include('script.php'); ?>
	</section>

</body>
</html>
