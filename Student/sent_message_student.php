
<?php include('header_dashboard.php'); ?>
<?php include('session.php'); ?>
<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<link rel="stylesheet" type="text/css" href="student_css/student_sent_message.css">
	<title></title>
</head>
<body>

		<?php include('StudentHeader.php'); ?>
       
				<?php include('StudentSideNav.php'); ?>
				<section class="main_contant" id="main_contant">

					<div class="desig-div" style="margin-top: -40px;">
            						<?php
								$school_year_query = mysqli_query($conn,"select * from school_year order by school_year DESC")or die(mysqli_error());
								$school_year_query_row = mysqli_fetch_array($school_year_query);
								$school_year = $school_year_query_row['school_year'];
								?>

            					 <a href="#" class="desig-1">Message</a><span class="divider" style="font-size: 10px; color: #787878;"> &nbsp;&nbsp;&nbsp;/&nbsp;&nbsp;&nbsp; </span>
                                 <a href="#" class="desig-1">Inbox</a><span class="divider" style="font-size: 10px; color: #787878;"> &nbsp;&nbsp;&nbsp;/&nbsp;&nbsp;&nbsp; </span>
                                 <a href="#" class="desig-2">School Year: <?php echo $school_year_query_row['school_year']; ?></a>
                           </div>

                           <div class="my-acc-h1">
                                <span class="acc-hi">Hi </span>
                                <span class="acc-name"> <?php echo $row['firstname']." ".$row['lastname'];  ?></span>
                                <span class="acc-welcome">, Welcome Back</span>
                            </div>

                            <div class="featured-text" style="margin-bottom: 40px;">
                                <span style="color:#747b7f">Active User.</span>
                            </div>

                            <ul class="nav nav-pills pull-right2">
											<center>
										<a href="student_message.php" class="btn btn-info2"><i class="fas fa-envelope" style="margin-right: 6px; font-size: 15px;"></i>Inbox</a>

										<a href="sent_message_student.php" id="" class="btn btn-info2"><i class="fas fa-envelope-open" style="margin-right: 6px; font-size: 15px;"></i> Send Messages</a>

									</center>
										</ul>

										<ul class="nav nav-pills pull-right3">
											<center>

										<a href="#" id="sent-mess-id" class="btn btn-info3"><i class="fa-solid fa-plus" style="margin-right: 6px; font-size: 15px;"></i> Create Messages</a>

									</center>
										</ul>


                <div class="span9" id="content" style="padding-bottom: 50px;">
                    

					    <!-- breadcrumb -->
				
					       <ul class="breadcrumb">
	
							
								
						</ul>
						 <!-- end breadcrumb -->
<!-- block -->
              			
              				<div class="container-fluid" >
           					 <div class="row-fluid">

           					 	
                        <div id="block_bg" class="block">
                            <div class="navbar navbar-inner block-header">
                                <div id="" class="muted pull-left"></div>
                            </div>
                            <div class="block-content collapse in">

                            	<div class="header-my-acc">
                                    <span>Inbox</span>
                                </div>

                                <div class="span12">
								<form action="read_message.php" method="post">
										
										<div style="padding: 5%;">
										

										

												
							
										
									
									<?php
								 $query_announcement = mysqli_query($conn,"select * from message_sent
																	LEFT JOIN student ON student.student_id = message_sent.reciever_id
																	where  sender_id = '$session_id'  order by date_sended DESC
																	")or die(mysqli_error());
								 $count_my_message = mysqli_num_rows($query_announcement);
								 if ($count_my_message != '0'){
								 while($row = mysqli_fetch_array($query_announcement)){
								 $id = $row['message_sent_id'];
								 ?>		
											<div class="post"  id="del<?php echo $id; ?>" style="margin-top: 5%; ">
												<div class="pull-right" align="right" style="margin-top: -50px">
													<!-- <a class="btn btn-link"  href="#<?php echo $id; ?>" data-toggle="modal" ><i class="fas fa-trash-alt"></i>  </a> -->
													<button   id="<?php echo $id; ?>" class="btn btn-danger remove" data-dismiss="modal" aria-hidden="true"><i class="fas fa-trash-alt"></i></button>
													<?php //include("remove_sent_message_modal.php"); ?>
													</div>
												<i class="fas fa-quote-left" style="color: #528DFF; "><br>
												<strong style="color:#6D6D6D">
											<?php echo $row['content']; ?>
											</strong>
											</i>

													<hr>
											Send to: <strong style="color: #528DFF; "><?php echo $row['reciever_name']; ?></strong>
											<i class="fas fa-calendar"></i> <?php echo $row['date_sended']; ?>

											</div>
								<?php }}else{ ?>
								<center>
									<div class="btn btn-info2" style="  color: whitesmoke; margin-top: 20%; margin-bottom:20%" ><i class="fas fa-exclamation-triangle"></i>  No Sent Messages</div>
								<?php } ?>		
								</div>	
								</form>		
                                </div>
                            </div>
                       
                        <!-- /block -->
                   
                    </div>
					
<script type="text/javascript">
	$(document).ready( function() {
		$('.remove').click( function() {
		var id = $(this).attr("id");
			$.ajax({
			type: "POST",
			url: "remove_inbox_message.php",
			data: ({id: id}),
			cache: false,
			success: function(html){
			$("#del"+id).fadeOut('slow', function(){ $(this).remove();}); 
			$('#'+id).modal('hide');
			$.jGrowl("Your Sent message is Successfully Deleted", { header: 'Data Delete' });	
			}
			}); 		
			return false;
		});				
	});
</script>
			

                </div>

		                <div style="display: none;" id="create-mess-id">
							<?php include('create_message_student.php') ?>
						</div>
			</div>
		</div>
	</section>


		<?php include('script.php'); ?>


		<script type="text/javascript">
			$("#sent-mess-id").click(function(){
			  $("#create-mess-id").show();
			});
		</script>


</body>
</html>
