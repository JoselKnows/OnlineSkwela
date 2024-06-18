<?php include('header_dashboard.php'); ?>
<?php include('session.php'); ?>
    <body id="class_div">
		<?php include('TeacherHeader.php'); ?>
        <div class="container-fluid">
            <div class="row-fluid">
				<?php include('TeacherSideNav.php'); ?>
				<section class="main_contant" id="main_contant">
                <div class="span9" id="content">
                     <div class="row-fluid">
					    <!-- breadcrumb -->	
					     <ul class="breadcrumb">
								<?php
								$school_year_query = mysqli_query($conn,"select * from school_year order by school_year DESC")or die(mysqli_error());
								$school_year_query_row = mysqli_fetch_array($school_year_query);
								$school_year = $school_year_query_row['school_year'];
								?>
								<a href="#" style="  color: black;"><b>My Class</b></a><span class="divider">/</span>
									<a href="#" style="  color: black;">School Year: <?php echo $school_year_query_row['school_year']; ?></a>
						</ul>
						 <!-- end breadcrumb -->
                        <!-- block -->


                        <div class="block">
                           <br><br>

                            <div style="display: flex;">
                            	<div class="container-fluid" style=" position: auto; left: 150px;width: 350px;height: 250px; border: 3px solid purple; background-color: purple; border-radius: 15px">


                            <div class="block-content collapse in">
                                <div class="span4" style="display:flex; margin-right: auto;">
										<form class="" id="add_downloadble" method="post" enctype="multipart/form-data" name="upload" >
											<br>
												<div class="control-group" style="color:white;>
													<label class="control-label" for="inputEmail"  style="margin-left: 40%;"></label>
													<div class="controls" style="margin-left: 15px;">
														<input name="uploaded_file"  class="input-file uniform_on" id="fileInput" type="file" >
														<input type="hidden" name="MAX_FILE_SIZE" value="1000000" />
														<input type="hidden" name="id" value="<?php echo $session_id ?>"/>
													</div>
												</div>
												<div class="control-group">
													<div class="controls">
														<br>
														<input type="text" name="name" Placeholder="File Name"  class="input" style="margin-left: 20%; size: 100%">
													</div>
												</div>
												<br>
												<div class="control-group" style="margin-left: 25%;">
													<div class="controls">
													<textarea id="assigntextare" placeholder="Description" name="desc" required></textarea>
													</div>
												</div>
                
					
											<script>
			jQuery(document).ready(function($){
				$("#add_downloadble").submit(function(e){
					$.jGrowl("Uploading File Please Wait......", { sticky: true });
					e.preventDefault();
					var _this = $(e.target);
					var formData = new FormData($(this)[0]);
					$.ajax({
						type: "POST",
						url: "add_assignment_save.php",
						data: formData,
						success: function(html){
							//$.jGrowl("Assignment Successfully Added", { header: 'Assignment Added' });
							alert('Assignment Added');
							window.location = 'add_assignment.php';
						},
						cache: false,
						contentType: false,
						processData: false
					});
				});
			});
			</script>	
	
	
									</div>
								
							</div>

							<div>
									<div class="span8" style="display: flex;  margin-left:50px;">
										<br><br>
											
			<div class="alert alert-info"><i class="fas fa-exclamation-circle" style="color: white; background-color: purple; margin-top 0%;"> Check The Class you want to put this file.</i></div>


					 
									<div class="pull-left"> <br><br>
							Check All <input type="checkbox"  name="selectAll" id="checkAll" />
								<script>
								$("#checkAll").click(function () {
									$('input:checkbox').not(this).prop('checked', this.checked);
								});
								</script>					
							</div>
											<table cellpadding="0" cellspacing="0" border="0" class="table" id="customers">

										<thead>
										        <tr>
												<!-- <th></th> -->
												<th>Class Name</th>
												<th>Subject Code</th>
												</tr>
												
										</thead>
										<tbody>
											
                              	<?php $query = mysqli_query($conn,"select * from teacher_class
										LEFT JOIN class ON class.class_id = teacher_class.class_id
										LEFT JOIN subject ON subject.subject_id = teacher_class.subject_id
										where teacher_id = '$session_id' and school_year = '$school_year' ")or die(mysqli_error());
										$count = mysqli_num_rows($query);
										
									
										while($row = mysqli_fetch_array($query)){
										$id = $row['teacher_class_id'];
				
										?>                             
										<tr id="del<?php echo $id; ?>">
											<td width="30">
												<input id="" class="" name="selector[]" type="checkbox" value="<?php echo $id; ?>">
											</td> 
											<td><?php echo $row['class_name']; ?></td>
											<td><?php echo $row['subject_code']; ?></td>                                                                   
										</tr>
                         
						<?php } ?>
							
						   
                              
										</tbody>
									</table>
						
									
                                </div>
								<div class="span10">
								<hr>
									<center>
									<div class="control-group">
												<div class="controls">
													<button name="Upload" type="submit" value="Upload" class="btn btn-success" /><i class="icon-upload-alt"></i>&nbsp;Upload</button>
												</div>
									</div>
									</center>
             
						       </form>		
								</div>
                            </div>
                 
                        <!-- /block -->
                    </div>
			

                </div>
							<?php/*  include('teacher_right_sidebar.php')  */?>
						
</section>
	
            </div>
		
        </div>
		<?php include('script.php'); ?>
    </body>
</html>


<style>
#customers {
  font-family: Arial, Helvetica, sans-serif;
  border-collapse: collapse;
  width: 70%;
  background-color: black;

}

#customers td, #customers th {
  border: 1px solid #ddd;
  padding: 4px;
  text-align: center;
}

#customers tr:nth-child(even){background-color: black}

#customers tr:hover {background-color: #f83292;}

#customers th {
  padding-top: 12px;
  padding-bottom: 12px;
  text-align: center;
  background-color: #f83292;
  color: white;


}
#customers td {
    color: white;
}
</style>