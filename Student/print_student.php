<?php include('header_dashboard.php'); ?>
<?php include('session.php'); ?>
<?php $get_id = $_GET['id']; ?>

<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<link rel="stylesheet" type="text/css" href="student_css/print_student.css">
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
                                 <a href="#" class="desig-1">Print</a>
                           </div>

                           <div class="my-acc-h1">
                                <span class="acc-hi">Hi </span>
                                <span class="acc-name"> <?php echo $row['firstname']." ".$row['lastname'];  ?></span>
                                <span class="acc-welcome">, Welcome Back</span>
                            </div>

                            <div class="featured-text" style="margin-bottom: 40px;">
                                <span style="color: #747b7f">Active User.</span>
                            </div>

                            <div class="pull-right" align="right" id="add-ass-id">
									<td width="30" ><a id="print" onclick="window.print()"  class="btn btn-success"><i class="icon-print" style="margin-right: 8px;"></i> Print Student List</a></td>   
							</div>


        <div class="container-fluid" style="padding-bottom: 50px;">
            <div class="row-fluid">
				<?php include('class_sidebar.php'); ?>
                <div class="span9" id="content">
                     <div class="row-fluid">
						<div class="pull-right">
						
							
						</div>
						
                        <!-- block -->
                        <div id="block_bg" class="block">
                            <div class="navbar navbar-inner block-header">
                                <div id="" class="muted pull-right">
					
								</div>
                            </div>
                            <div class="block-content1 collapse in">

                            	<div class="header-my-acc">
                                    <span>Student List</span>
                                </div>

                                <div class="span12">
						
												<table cellpadding="0" cellspacing="0" border="0" class="table" id="customers">
							
										<thead>
										        <tr>
												<th>Firstname</th>
												<th>Lastname</th>
												</tr>
												
										</thead>
										<tbody>
											
												<?php
														$my_student = mysqli_query($conn,"SELECT * FROM teacher_class_student
														LEFT JOIN student ON student.student_id = teacher_class_student.student_id 
														INNER JOIN class ON class.class_id = student.class_id where teacher_class_id = '$get_id' order by lastname ")or die(mysqli_error());
														while($row = mysqli_fetch_array($my_student)){
														$id = $row['teacher_class_student_id'];
														?>                          
										<tr id="del<?php echo $id; ?>">
									
										 <td><?php echo $row['firstname']; ?></td>
                                         <td><?php  echo $row['lastname']; ?></td>
                             
                             

                               
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
            </div>
		
        </div>
		<?php include('script.php'); ?>
	</section>

</body>
</html>
