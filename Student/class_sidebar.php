
<div class="btn-group" style="width:100%">
    
       <!--
                <button style="width:25%"><a href="dashboard_student.php"><i class="icon-chevron-right"></i><i class="icon-chevron-left"></i>&nbsp;Back</a></button>
        -->
                 <button style="width:25%; border-top-left-radius: 10px;"><a href="my_classmates.php<?php echo '?id='.$get_id; ?>"><i class="icon-chevron-right"></i><i class="icon-group"></i>&nbsp;My Classmates</a></button>

                 <button style="width:25%"><a href="progress.php<?php echo '?id='.$get_id; ?>"><i class="icon-chevron-right"></i><i class="icon-bar-chart"></i>&nbsp;My Progress</a></button>

                 <button style="width:25%"><a href="subject_overview_student.php<?php echo '?id='.$get_id; ?>"><i class="icon-chevron-right"></i><i class="icon-file"></i>&nbsp;Subject Overview</a></button>

                  <button style="width:25%; border-top-right-radius: 10px;"><a href="downloadable_student.php<?php echo '?id='.$get_id; ?>"><i class="icon-chevron-right"></i><i class="icon-download"></i>&nbsp;Downloadables</a></button>

                <button style="width:25%; border-bottom-left-radius: 10px;"><a href="assignment_student.php<?php echo '?id='.$get_id; ?>"><i class="icon-chevron-right"></i><i class="icon-book"></i>&nbsp;Assignments</a></button>

                 <button style="width:25%"><a href="announcements_student.php<?php echo '?id='.$get_id; ?>"><i class="icon-chevron-right"></i><i class="icon-info-sign"></i>&nbsp;Announcements</a></button>

                 <button style="width:25%"><a href="class_calendar_student.php<?php echo '?id='.$get_id; ?>"><i class="icon-chevron-right"></i><i class="icon-calendar"></i>&nbsp;Class Calendar</a></button>
                 <button style="width:25%; border-bottom-right-radius: 10px;"><a href="student_quiz_list.php<?php echo '?id='.$get_id; ?>"><i class="icon-chevron-right"></i><i class="icon-reorder"></i>&nbsp;Quiz</a></button>
       
    <?php /* include('search_other_class.php'); */ ?>   
</div>


<style type="text/css">

  .btn-group button {
  background-color: #6599FF; /* Green background */
  border: 1px solid #A8CAFF;
  color: white; /* White text */
  padding: 14px 14px; /* Some padding */
  cursor: pointer; /* Pointer/hand icon */
  float: left; /* Float the buttons side by side */
}

.btn-group button:not(:last-child) {
   
}

/* Clear floats (clearfix hack) */
.btn-group:after {
  content: "";
  clear: both;
  display: table;
}

/* Add a background color on hover */
.btn-group button:hover {
  background-color:#95BFFF;
}
</style>