<?php include("includes/init.php" );

    if(!$session->is_singed_in()){

redirect("includes/login.php");
}
    echo $database->open_db_connection();
?>
   
  <?php
  
  
  if(empty($_GET['id'])){


    redirect("photos.php");

  }

  $photo = Photo::find_by_id($_GET['id']);  
  
  if($photo){

    $photo->delete_photo();
    $session->message("The {$photo->filename} has been deleted");
    redirect("photos.php");

  } else{

    redirect("../photos.php");
  }
  
  
  
  
  
  ?> 