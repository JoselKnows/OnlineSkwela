<?php include('header_dashboard.php'); ?>
<?php include('session.php'); ?>

<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<link rel="stylesheet" type="text/css" href="student_css/backpack.css">
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

            					 <a href="#" class="desig-1">My Class</a><span class="divider" style="font-size: 10px; color: #787878;"> &nbsp;&nbsp;&nbsp;/&nbsp;&nbsp;&nbsp; </span>
                                 <a href="#" class="desig-1">School Year: <?php echo $school_year_query_row['school_year']; ?></a><span class="divider" style="font-size: 10px; color: #787878;"> &nbsp;&nbsp;&nbsp;/&nbsp;&nbsp;&nbsp; </span>
                                 <a href="#" class="desig-1">Backpack</a>
                           </div>

                           <div class="my-acc-h1">
                                <span class="acc-hi">Hi </span>
                                <span class="acc-name"> <?php echo $row['firstname']." ".$row['lastname'];  ?></span>
                                <span class="acc-welcome">, Welcome Back</span>
                            </div>

                            <div class="featured-text" style="margin-bottom: 40px;">
                                <span style="color: #747b7f;">Active User.</span>
                            </div>

					    <!-- breadcrumb -->	
									<ul class="breadcrumb">
										
										
									</ul>
						 <!-- end breadcrumb -->

						 <div class="dashboard">
                                    <ul>
                                      
                                    </ul>
                                </div>

                        <!-- block -->
                        
                    </div><div id="block_bg" class="block">
                            <!--<div class="navbar navbar-inner block-header">
                                <div id="" class="muted pull-right"></div>
                            </div> -->
                            <div class="block-content1 collapse in">

                            	<div class="header-my-acc">
                                    <span>Backpack</span>
                                </div>

                                <div class="span12">
							    
								<?php
								$query_backpack = mysqli_query($conn,"select * FROM student_backpack where student_id = '$session_id'  order by fdatein DESC ")or die(mysqli_error());
								$num_row = mysqli_num_rows($query_backpack);
								if ($num_row > 0){
								?>
									<form action="delete_backpack.php" method="post">
  									<table cellpadding="0" cellspacing="0" border="0" class="table" id="customers">
  									<div align="right">
									<button name="backup_delete" class="btn btn-danger"><i class="fas fa-trash-alt"></i> </button>
									</div>
									<?php //include('modal_backpack_delete.php'); ?>
										<thead>
										<br>
										        <tr>
										        <th><div class="pull-left">
								                Check All  <input type="checkbox"  name="selectAll" id="checkAll" />
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
												<th>Download Material</th>
												</tr>
										</thead>
										<tbody>
                              		<?php
										$query = mysqli_query($conn,"select * FROM student_backpack where student_id = '$session_id'  order by fdatein DESC ")or die(mysqli_error());
										while($row = mysqli_fetch_array($query)){
										$id  = $row['file_id'];
									?>                              
										<tr id="del<?php echo $id; ?>">
										<td width="30">
											<input id="" class="" name="selector[]" type="checkbox" value="<?php echo $id; ?>">
										</td>
										
										<td><?php echo $row['fdatein']; ?></td>
                                        <td><?php  echo $row['fname']; ?></td>
                                        <td><?php echo $row['fdesc']; ?></td>                                      
                                        <td width="30"><a class="btn btn btn-dl" href="<?php echo $row['floc']; ?>"><i class="fas fa-download"></i></a></td>
										</tr>
									<?php } ?>
										</tbody>
									</table>
									</form>
									<?php }else{ ?>
										<center>
											<br><br>
									<div class="alert alert-info" style="background-color: #6599FF; color:white;"><i class="fas fa-exclamation-triangle"></i> No Files Inside Your Backpack.</div>
								</center>
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
