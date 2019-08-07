<?php

include("connect.php");


if (isset($_POST['submit']))
{
    $name=($_POST['name']);
    $phn=($_POST['phn']);
    $pass=($_POST['password']);
    $email=($_POST['email']);
    $type=2;
    $query=mysqli_query($conn,"SELECT email FROM user_info WHERE email='$email' ");
    $queryo=mysqli_query($conn,"SELECT name FROM user_info WHERE name='$name' ");



    if(mysqli_num_rows($query)>0)
    {
        echo"<script>alert('User Already Registered')</script>";
    }
    else if(mysqli_num_rows($queryo)>0)
    {
        echo"<script>alert('Choose another username')</script>";
    }
    else{
     mysqli_query($conn,"INSERT INTO user_info VALUES ('$name','$email','$phn',2,'$pass','')");
     header('Location:vendor-login.php');
    }
}



?>
<!doctype html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <title>Sign Up</title>
    <link rel="stylesheet" href="assets/vendor/bootstrap/css/bootstrap.min.css">
    <link href="assets/vendor/fonts/circular-std/style.css" rel="stylesheet">
    <link rel="stylesheet" href="assets/libs/css/style.css">
    <link rel="stylesheet" href="assets/vendor/fonts/fontawesome/css/fontawesome-all.css">
    <style>
    html,
    body {
        height: 100%;
    }

    body {
        display: -ms-flexbox;
        display: flex;
        -ms-flex-align: center;
        align-items: center;
        padding-top: 40px;
        padding-bottom: 40px;
    }
    </style>
</head>

<body>
    <form class="splash-container" method="post">
        <div class="card">
            <div class="card-header">
                <h3 class="mb-1">Registration Form</h3>
                <p>Please enter your user information.</p>
            </div>
            <div class="card-body">
                <div class="form-group">
                    <input class="form-control form-control-lg" type="text" name="name" required="" placeholder="Username" autocomplete="off">
                </div>
                <div class="form-group">
                    <input class="form-control form-control-lg" type="email" name="email" required="" placeholder="E-mail" autocomplete="off">
                </div>
                <div class="form-group">
                    <input class="form-control form-control-lg" type="number" name="phn" required="" placeholder="Phone Number" autocomplete="off">
                </div>
                <div class="form-group">
                    <input class="form-control form-control-lg" id="password" type="password" name="password" required="" placeholder="Password">
                </div>
                <div class="form-group">
                    <input class="form-control form-control-lg" id="confirmpassword" required="" placeholder="Confirm">
                </div>
                <div class="form-group pt-2">
                    <button class="btn btn-block btn-primary" type="submit" name="submit" id="btnSubmit" >Register My Account</button>
                </div>
                <div class="form-group">
                    <label class="custom-control custom-checkbox">
                        <input class="custom-control-input" type="checkbox"><span class="custom-control-label">By creating an account, you agree the <a href="#">terms and conditions</a></span>
                    </label>
                </div>

            </div>
            <div class="card-footer bg-white">
                <p>Already member? <a href="vendor-login.php" class="text-secondary">Login Here.</a></p>
            </div>
        </div>
    </form>
    <script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.8.3/jquery.min.js"></script>
<script type="text/javascript">
    $(function () {
        $("#btnSubmit").click(function () {
            var password = $("#password").val();
            var confirmPassword = $("#confirmpassword").val();
            if (password != confirmPassword) {
                alert("Passwords do not match.");
                return false;
            }
            return true;
        });
    });

</script>
<script
      src="http://code.jquery.com/jquery-3.1.1.js"
      integrity="sha256-16cdPddA6VdVInumRGo6IbivbERE8p7CQR3HzTBuELA="
      crossorigin="anonymous"></script>
</body>


</html>
