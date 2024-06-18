<?php include('header_dashboard.php'); ?>
<?php include('session.php'); ?>
<?php $get_id = $_GET['id']; ?>

<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">

	<link rel="stylesheet" type="text/css" href="student_css/class_calendar_student.css">
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
                                 <a href="#" class="desig-1">My Class Calendar</a>
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
                <div class="span9" id="content">
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
               
								<div class="block-content1 collapse in">

									 	<div class="header-my-acc">
                                    <span>My Class Calendar</span>
                                  

                                    
                                </div>

										<div class="span12">
							<!-- block -->
										<!-- <div class="navbar navbar-inner block-header">
											<div class="muted pull-left">Calendar</div>
										</div>
										<div id='calendar'></div>		-->
										<div class="dashboard" id="dashboard">
						                    <ul>
						                      
						                        </ul>
						                    </div>
							<!-- block -->
									</div>
										
							<?php include('class_calendar_table_student.php'); ?>
							
						
										</div>
                                </div>
                            </div>
                        </div>
                        <!-- /block -->
                    </div>
                </div>
            </div>

        </div>
		<?php include('script.php'); ?>
		<?php include('class_calendar_script.php'); ?>
	</section>

</body>
</html>
 