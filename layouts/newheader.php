<?php $user = current_user(); ?>
<html>
    <head>
    <title>ShopStock</title>
        <link rel="website icon" type="png" href="img/logoss.png">
        <link rel="stylesheet" type="text/css" href="css/newstylesheet.css">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.4/css/bootstrap.min.css"/>
    </head>
    <body>
    <?php  if ($session->isUserLoggedIn(true)): ?>
        <header>
    <div class="header">
        <h1>ShopStock</h1>
        <a href="logout.php">Log Out
            <i class="glyphicon glyphicon-off"></i>
        </a>
        <a href="low_stock.php">Stock
            <i class="glyphicon glyphicon-alert"></i>
        </a>
    </div>
    </header>
    <div class="sidebar">
      <?php if($user['user_level'] === '1'): ?>
      <?php include_once('admin_menu.php');?>

      <?php elseif($user['user_level'] === '2'): ?>
      <?php include_once('user_menu.php');?>

      <?php endif;?>

   </div>
    <?php endif;?>
    <div class="page">