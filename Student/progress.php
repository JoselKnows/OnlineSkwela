<?php include('header_dashboard.php'); ?>
<?php include('session.php'); ?>
<?php $get_id = $_GET['id']; ?>

<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<link rel="stylesheet" type="text/css" href="student_css/progress.css">
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
										$class_id = $class_row['class_id'];
										$school_year = $class_row['school_year'];
										?>

            					 <a href="#" class="desig-1"><?php echo $class_row['class_name']; ?></a><span class="divider" style="font-size: 10px; color: #787878;"> &nbsp;&nbsp;&nbsp;/&nbsp;&nbsp;&nbsp; </span>
                                 <a href="#" class="desig-1"><?php echo $class_row['subject_code']; ?></a><span class="divider" style="font-size: 10px; color: #787878;"> &nbsp;&nbsp;&nbsp;/&nbsp;&nbsp;&nbsp; </span>
                                 <a href="#" class="desig-2">School Year: <?php echo $class_row['school_year']; ?></a><span class="divider" style="font-size: 10px; color: #787878;"> &nbsp;&nbsp;&nbsp;/&nbsp;&nbsp;&nbsp; </span>
                                 <a href="#" class="desig-1">Progress</a>
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
                <div class="span4" id="content">
                     <div class="row-fluid">
					    <!-- breadcrumb -->
				<br>
										
				
					     <ul class="breadcrumb">
							
						</ul>
						 <!-- end breadcrumb -->
					 
                        <!-- block -->
                        <div id="block_bg" class="block">
                            <div class="navbar navbar-inner block-header">
                            	<br><br>
                            	<center>
							   
							</center>
							</div>
                            <div class="block-content1 collapse in">

                            	<div class="header-my-acc">
                                    <span>Assignment Grade Progress</span>
                                   
                                </div>

                                <div class="span12">
										<table cellpadding="0" cellspacing="0" border="0" class="table" id="customers">
						
										<thead>
										        <tr>
												<th>Date Upload</th>
												<th>Assignment</th>
												<th>Grade</th>
												</tr>
												
										</thead>
										<tbody>
											
                              		<?php
										$query = mysqli_query($conn,"select * FROM student_assignment 
										LEFT JOIN student on student.student_id  = student_assignment.student_id
										RIGHT JOIN assignment on student_assignment.assignment_id  = assignment.assignment_id
										WHERE student_assignment.student_id = '$session_id'
										order by fdatein DESC")or die(mysqli_error());
										while($row = mysqli_fetch_array($query)){
										$id  = $row['student_assignment_id'];
										$student_id = $row['student_id'];
									?>                              
										<tr>
										 <td><?php echo $row['fdatein']; ?></td>
                                         <td><?php  echo $row['fname']; ?></td>
                                      
										 <?php if ($session_id == $student_id){ ?>
                                         <td>
										 <span class="badge badge-success"><?php echo $row['grade']; ?></span>
										 </td>
										 <?php }else{ ?>
										 <td></td>
										 <?php } ?>										 
                                </tr>
                         
						 <?php } ?>
						   
                              
										</tbody>
									</table>
						
                                </div>
                            </div>
                        </div>
                        <!-- /block -->
                    </div>


                </div>
				
				
				
				                <div class="span5" id="content">
                     <div class="row-fluid" style="padding-bottom: 50px;">
					    <!-- breadcrumb -->
				
							
				
					     <ul class="breadcrumb">
		
							<li><a href="#"><b>..</b></a></li>
						</ul>
						 <!-- end breadcrumb -->
					 
                        <!-- block -->
                        <div id="block_bg" class="block">
                            <div class="navbar navbar-inner block-header">
                            	<center>
							    <div id="" class="muted pull-left"><h4> </h4></div>
							</center>
							</div>
                            <div class="block-content2 collapse in">

                            	<div class="header-my-acc">
                                    <span>Quiz Score Progress</span>
                                </div>

                                <div class="span12">
			
								<table cellpadding="0" cellspacing="0" border="0" class="table" id="customers1">
										<thead>
										        <tr>
												<th>Quiz Title</th>
												<th>Description</th>
												<th>Score</th>
												</tr>
										</thead>
										<tbody>
                              		<?php
										$query = mysqli_query($conn,"select * FROM class_quiz 
										LEFT JOIN quiz on class_quiz.quiz_id = quiz.quiz_id
										where teacher_class_id = '$get_id' order by class_quiz_id DESC ")or die(mysqli_error());
										while($row = mysqli_fetch_array($query)){
										$id  = $row['class_quiz_id'];
										$quiz_id  = $row['quiz_id'];
										//$quiz_time  = $row['quiz_time'];
									
										$query1 = mysqli_query($conn,"select * from student_class_quiz where class_quiz_id = '$id' and student_id = '$session_id'")or die(mysqli_error());
										$row1 = mysqli_fetch_array($query1);
										$grade = $row1['grade'] ??null;

									?>          
										<?php if ($grade ==""){
										
										}else{ ?>	
										<tr>                     
										 <td><?php echo $row['quiz_title']; ?></td>
                                         <td><?php  echo $row['quiz_description']; ?></td>
                                         <td width="200">
									
										<b>Already Taken Score <?php echo $grade; ?></b>
						
										</td>            
														<script type="text/javascript">
														$(document).ready(function(){
															$('#<?php echo $id; ?>Take This Quiz').tooltip('show');
															$('#<?php echo $id; ?>Take This Quiz').tooltip('hide');
														});
														</script>										 
										</tr>
										<?php } ?>
						 <?php } ?>
										</tbody>
									</table>
						
                                </div>
                            </div>
                        </div>
                        <!-- /block -->
                    </div>


                </div>
				
				<?php /* include('downloadable_sidebar.php') */ ?>
            </div>
		
        </div>
    </section>
		<?php include('script.php'); ?>
   

</body>
</html>
   