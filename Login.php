<?php
  ob_start();
  require_once('includes/load.php');
  if($session->isUserLoggedIn(true)) {
     redirect('home.php', false);
    }
?>
<?php include_once('layouts/newheader.php'); ?>
<div class="login">
    <h2 ><img src="img/r.png" alt="Paris" ></h2>
    <div class="sublogin">
        <h2>Log In</h2>
        <img src="img/logoss.png" alt="">
        <p>Welcome to ShopStock</p>
        <?php echo display_msg($msg); ?>
        <form method="post" action="newAuth.php" class="custom-form">
            <label for="username">Username</label><br>
            <input type="text" class="form-control" name="username"><br>
            <label for="password">Password</label><br>
            <input type="password" class="form-control" name="password"><br>
            <button type="submit" name="submit"><span>Login</span></button>
            <a href="index.php" style="float:right; margin:10; text-decoration: none; color:red">Cancel</a>
        </form>
    </div>
</div>
<?php include_once('layouts/newfooter.php'); ?>
