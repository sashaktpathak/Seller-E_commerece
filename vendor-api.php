
   <?php

   session_start();
   session_id();

          include_once('connect.php');



          $username = $_POST['user_name'];
          $password = $_POST['user_pass'];
          $query=mysqli_query($conn,"SELECT * FROM user_info WHERE name='$username'");
          if(mysqli_num_rows($query)>0)
          { $result=mysqli_fetch_assoc($query);
            if($result['pass']==$password)
            {
                $_SESSION['username']=$username;
              echo json_encode($username);

            }
            else{
                echo json_encode("Password is incorrect!");
            }
          }
          else{
            echo json_encode("Your account is not  registered with us or you have entered wrong Username!");
          }

   ?>
