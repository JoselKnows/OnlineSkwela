<div class="sidebar-nav">
        
      <div class="logo">
            <a href="#">

                    <div style="margin-top: 70px; margin-left: 50px;">
                    <img id="avatar" class="img-polaroid" src="../Admin/<?php echo $row['location']; ?>"onerror=this.src="../Admin/images/avatar4.png">
                </div>
                    <?php $query= mysqli_query($conn,"select * from student where student_id = '$session_id'")or die(mysqli_error());
                                    $row = mysqli_fetch_array($query);
                            ?>

                            
                         
                                <span style="margin-left: 10%;">Hello, </span> <i class="icon-user icon-large"></i><?php echo $row['firstname']." ".$row['lastname'];  ?>!<i class="caret"></i></a>
                              
                                   
                </a> 

                <a href="#">
                   <!--  <img src="/OnlinEskwela2.0/images/logo.png" style="margin-left: -20px;"> -->
                </a>
        </div>

    

        <div class="side-nav">
        	<br> <br>
            <ul>
                <li>
                    <span><i class="fas fa-hand-point-left"></i></span>
                    <a href="StudentDashboard.php">Back</a>
                </li>
                
                <li>
                    <span><i class="fas fa-users"><a href="my_classmates.php<?php echo '?id='.$get_id; ?>"></i></span> My Classmates</a>
                </li>
                <li>
                    <span><i class="fas fa-chalkboard-teacher"></i></span>
                    <a href="my_classmates.php">Inside My class </a>
                </li>
               
                <li>
                    <span><i class="fas fa-sign-out-alt"></i></span>
                    <a href="../Student/logout.php">Log Out</a>
                </li>
                
            </ul>
        </div>    
    </div>


    

        <script src="manageprofileJQUERY.js"></script>

                <script>
                    $(document).ready(function(){
                        $(".bar").click(function(){
                        $(".sidebar-nav").toggleClass("hide")
                         $("header, .main_contant, .manageclassroom, .manageactivity, .myaccount, .studentmonitoring").toggleClass("slide-left") 
                    })
                    });
                </script>