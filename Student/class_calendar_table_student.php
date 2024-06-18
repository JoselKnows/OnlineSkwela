<style>
               #customers {
   border-collapse: collapse;
   width: 100%;
   white-space: nowrap;
   border-radius: 8px;
   margin-top: -30px;
}


               
#customers th{
   font-family: 'Montserrat';
   font-size: 15px;
   font-weight: 600;
   border-bottom: 1px solid #EDEDED;
   padding: 17px;
   color: #528DFF;
}

#customers td{
   font-family: 'Montserrat';
   font-size: 15px;
   text-align: center;
   border-bottom: 1px solid #EDEDED;
   padding: 3px;
   height: 80px;

}
                </style>
		<table cellpadding="0" cellspacing="0" border="0" class="table" id="customers">
									
									<?php // include('move_to_school_year.php'); ?>
										<thead>
										        <tr>
												<th>Event</th>
												<th>Date Start</th>
												<th>Date End</th>
												</tr>
												
										</thead>
										<tbody>
											
                             
									<?php $event_query = mysqli_query($conn,"select * from event where teacher_class_id = '$get_id' ")or die(mysqli_error());
										while($event_row = mysqli_fetch_array($event_query)){
										$id  = $event_row['event_id'];
									?>                              
										<tr id="del<?php echo $id; ?>">
									
										<td><?php echo $event_row['event_title']; ?></td>
                                        <td><?php  echo $event_row['date_start']; ?></td>
										<td><?php  echo $event_row['date_end']; ?></td>                                    
                                                                
									 
                             

                               
                                </tr>
                         
						 <?php } ?>
						   
                              
										</tbody>
									</table>