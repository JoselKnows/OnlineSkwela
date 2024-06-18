<?php include('header_dashboard.php'); ?>
<?php include('session.php'); ?>
<?php $get_id = $_GET['id']; ?>

<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<link rel="stylesheet" type="text/css" href="student_css/announcement.css">
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
                                 <a href="#" class="desig-1">Announcement</a>
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

					  <br>
				
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
                                <div id="" class="muted pull-left"></div>
                            </div>
                            <div class="block-content1 collapse in">

                            	<div class="header-my-acc">
                                    <span>Announcement</span>
                                </div>

                                <div class="span12">
                                	
								 <?php
								 $query_announcement = mysqli_query($conn,"select * from teacher_class_announcements
																	where  teacher_class_id = '$get_id' order by date DESC
																	")or die(mysqli_error());
								$count = mysqli_num_rows($query_announcement);
								if ($count > 0){
								 while($row = mysqli_fetch_array($query_announcement)){
								 $id = $row['teacher_class_announcements_id'];
								 ?>
											<div class="post"  id="del<?php echo $id; ?>" >
											<center>
												<div style="background-color: #528DFF;color: white; padding: 5px;">
											<?php echo $row['content']; ?>
											</div>
											</center>
										
											<hr>
											
										
											<strong><i class="fas fa-calendar"></i> <?php echo $row['date']; ?></strong>
											
										<br><br>
											
											</div>
											
								<?php }}else{ ?>

							<center>
								<br><br>
								<div class="alert alert-info" style="background-color: #6599FF; color:white; padding: 5px;"><i class="fas fa-exclamation-triangle" ></i> No Announcements Found.</div>
								</center>
								<?php } ?>
                                </div>
								
							
                            </div>
                        </div>
                        <!-- /block -->
                    </div>


                </div>
				
				

					<script type="text/javascript">
	$(document).ready( function() {

		
		$('.remove').click( function() {
		
		var id = $(this).attr("id");
			$.ajax({
			type: "POST",
			url: "remove_announcements.php",
			data: ({id: id}),
			cache: false,
			success: function(html){
			$("#del"+id).fadeOut('slow', function(){ $(this).remove();}); 
			$('#'+id).modal('hide');
			$.jGrowl("Your Post is Successfully Deleted", { header: 'Data Delete' });
		
			}
			}); 
			
			return false;
		});				
	});

</script>
					
                </div>
				
			
            </div>
			

        </div>
		<?php include('script.php'); ?>
	</section>

</body>
