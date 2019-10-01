<?php include("includes/init.php" );

    if(!$session->is_singed_in()){

redirect("includes/login.php");
}
    echo $database->open_db_connection();
?>
   
  <?php
  
  
  if(empty($_GET['id'])){


    redirect("users.php");

  }

  $user = User::find_by_id($_GET['id']);  
  
  if($user){

    $session->message("User {$user->username}  has been deleted");

    $user->delete_photo();
    redirect("users.php");

  } else{

    redirect("users.php");
  }
  
  
  
  
  
  ?> 