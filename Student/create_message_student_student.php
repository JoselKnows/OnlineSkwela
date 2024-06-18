
<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<link rel="stylesheet" type="text/css" href="student_css/create_message_student.css">
	<title></title>
</head>
<body>

	<div class="block-div" id="block-div-id">
			<div class="block12"  style="">

	
		<center>
				      <!-- block -->
                        <div class="block">
                            <div class="navbar navbar-inner block-header3">

                                <span class="close-btn" id="close" style="color: #6D6D6D;">x</span>
                                <div id="" class="muted pull-left"><h4><i class="fas fa-pen"></i> 
                                Create Message</h4></div>

                            </div>
                            <div class="block-content collapse in">
                                <div class="span12">
								
								    <ul class="nav nav-tabs">
										
											<a href="student_message.php" class="btn btn-info" style="margin-right: 4px;">For Teacher</a>
										
										<a href="student_message_student.php" class="btn btn-info">For Student</a>
									</ul>
								
								
	

								<form method="post" id="send_message">
										<div class="control-group">
											<label>To:</label>
                                          <div class="controls">
                                             <select name="student_id"  class="chzn-select" required>
                                             	<option></option>
											<?php
											$query = mysqli_query($conn,"select * from student order by firstname ASC");
											while($row = mysqli_fetch_array($query)){
											
											?>
											<option value="<?php echo $row['student_id']; ?>"><?php echo $row['firstname']; ?> <?php echo $row['lastname']; ?> </option>
											<?php } ?>
                                            </select>
                                          </div>
                                        </div>
								
							
										<div class="control-group">
											<label>Content:</label>
                                          <div class="controls">
											<textarea name="my_message" class="my_message" required></textarea>
                                          </div>
                                        </div>
										<div class="control-group">
                                          <div class="controls">
												<button  class="btn btn-info1"><i class="fas fa-envelope" style="margin-right: 6px;"></i> Send </button>

                                          </div>
                                        </div>
                                </form>

					
								
								
							
								
								
										<script>
			jQuery(document).ready(function(){
			jQuery("#send_message").submit(function(e){
					e.preventDefault();
					var formData = jQuery(this).serialize();
					$.ajax({
						type: "POST",
						url: "send_message_student.php",
						data: formData,
						success: function(html){
						
						window.location = 'student_message.php';
						alert('Message Successfully Sended');
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
			</center>
	</div>

		<script type="text/javascript">
			$("#close").click(function(){
			  $("#create-mess-id").hide();
			});

			
			</script>	


</body>
</html>
