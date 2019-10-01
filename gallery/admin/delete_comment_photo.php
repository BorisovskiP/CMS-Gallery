<?php include("includes/init.php" );

    if(!$session->is_singed_in()){

redirect("includes/login.php");
}
    echo $database->open_db_connection();
?>
   
  <?php
  
  
  if(empty($_GET['id'])){


    redirect("comments.php");

  }

  $comment = Comment::find_by_id($_GET['id']);  
  
  if($comment){

    $comment->delete();
    $session->message("The comment with {$comment->id} has been deleted");
    redirect("comment_photo.php?id={$comment->photo_id}");

  } else{

    redirect("comment_photo.php?id={$comment->photo_id}");
  }
  
  
  
  
  
  ?> 