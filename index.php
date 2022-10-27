<?php require 'process/login.php';?>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <title>Login</title>

   <link rel="icon" href="dist/img/logo.png" type="image/x-icon" />
  <!-- Google Font: Source Sans Pro -->
  <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,400i,700&display=fallback">
  <!-- Font Awesome -->
  <link rel="stylesheet" href="plugins/fontawesome-free/css/all.min.css">
  <!-- icheck bootstrap -->
  <link rel="stylesheet" href="plugins/icheck-bootstrap/icheck-bootstrap.min.css">
  <!-- Theme style -->
  <link rel="stylesheet" href="dist/css/adminlte.min.css">
  <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.7.1/css/all.css">
</head>
<body class="hold-transition login-page" style="background-image: url('dist/img/bg.png'); background-repeat: no-repeat; background-size: 100% 100%;">
<div class="login-box">
  
  <!-- /.login-logo -->
  <div class="card">
    <div class="card-body login-card-body">
       <div class="login-logo">
          <h2><b>STI <br><h4><b>(Pasay-Edsa)</b></h4>Library<br>Management System</b></h2>
       </div>
      <p class="login-box-msg"><b>Sign in to start your session</b></p>

      <form action="" method="POST" id="login_form">
        <div class="input-group mb-3">
          <input type="text" class="form-control" id="username"  name="username" placeholder="Username" autocomplete="off">
          <div class="input-group-append">
            <div class="input-group-text">
              <span class="fas fa-user"></span>
            </div>
          </div>
        </div>
        <div class="input-group mb-3">
          <input type="password" class="form-control"  id="password" name="password" placeholder="Password" autocomplete="off">
          <div class="input-group-append">
            <div class="input-group-text">
              <span class="fas fa-lock"></span>
            </div>
          </div>
        </div>
        
         <!--  <div class="input-group mb-3">
      <select  id="role"  name="role" class="form-control">
                    <option value="">Select User Type </option>
                    <option value="student">Student</option>
                     <option value="admin">Admin</option>
               
                </select>
          <div class="input-group-append">
            <div class="input-group-text">
              <span class="fas fa-tasks"></span>
            </div>
          </div>
        </div> -->

          <!-- /.col -->
          <div class="input-group mb-3">
            <button type="submit" class="btn btn-primary btn-block" name="login_btn" value="login">Sign In</button>

          </div>
      
          <!-- /.col -->
        </div>
      </form>

<!-- jQuery -->
<script src="plugins/jquery/jquery.min.js"></script>
<!-- Bootstrap 4 -->
<script src="plugins/bootstrap/js/bootstrap.bundle.min.js"></script>
<!-- AdminLTE App -->
<script src="dist/js/adminlte.min.js"></script>
</body>
</html>
