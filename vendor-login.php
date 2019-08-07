<!doctype html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <title>Login</title>
    
    <link rel="stylesheet" href="assets/vendor/bootstrap/css/bootstrap.min.css">
    <link href="assets/vendor/fonts/circular-std/style.css" rel="stylesheet">
    <link rel="stylesheet" href="assets/libs/css/style.css">
    <link rel="stylesheet" href="assets/vendor/fonts/fontawesome/css/fontawesome-all.css">
    <link href="https://fonts.googleapis.com/css?family=Work+Sans" rel="stylesheet">
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
      <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
</head>

<body>
    <div class="splash-container">
        <div class="card ">
            <div class="card-header text-center"> <h2 style="font-family: 'Work Sans', sans-serif; text-shadow: 2px 2px #ff0000;"> LOGIN </h2> <span class="splash-description">Please enter your user information.</span></div>
            <div class="card-body">
                <form method="post" enctype="multipart/form-data">
                    <div class="form-group">
                        <input class="form-control form-control-lg" id="username" name="username" type="text" placeholder="Username" autocomplete="off">
                    </div>
                    <div class="form-group">
                        <input class="form-control form-control-lg" id="password" name="password" type="password" placeholder="Password">
                    </div>
                    <div class="form-group">
                        <label class="custom-control custom-checkbox">
                            <input class="custom-control-input" type="checkbox"><span class="custom-control-label">Remember Me</span>
                        </label>
                    </div>
                    <button type="button" id="btnSubmit" name="submit" onclick="verifyLogin()" class="btn btn-primary btn-lg btn-block">Sign in</button>
                </form>
            </div>
            <div class="card-footer bg-white p-0  ">
                <div class="card-footer-item card-footer-item-bordered">
                    <a href="vendor-sign-up.php" class="footer-link">Create An Account</a></div>
                <div class="card-footer-item card-footer-item-bordered">
                    <a href="" class="footer-link">Forgot Password</a>
                </div>
            </div>
        </div>
    </div>

    
    <script src="assets/vendor/bootstrap/js/bootstrap.bundle.js"></script>

    <script type="text/javascript">
    function verifyLogin(){
          var pass = $("#password").val();
          var name = $("#username").val();
          $.ajax({
              type: 'POST',
              url: 'vendor-api.php',
              data: {
                user_name : name,
                user_pass : pass
              },
              success: function(response){
                var str1 = JSON.parse(response);

            if( str1.localeCompare("Password is incorrect!") === 0){
                      alert("Password is incorrect!");
                    }
            else if( str1.localeCompare("Your account is not  registered with us or you have entered wrong Username!") ===   0)
              {
                alert("Your account is not  registered with us or you have entered wrong Username!");
              }

            else if(str1.localeCompare(name)==0){
            window.location.href = "vendor.php";
            }

              }
          });
        }
    </script>
</body>

</html>
