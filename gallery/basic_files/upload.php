<?php 


if(isset($_POST['submit'])){



$temp_name = $_FILES['file_upload']['tmp_name'];

$the_file = $_FILES['file_upload']['name'];

$directory = "uploads";

if(move_uploaded_file($temp_name, $directory . "/" . $the_file)){

   $the_message ="File uploaded.";


}else {

$the_error = $_FILES['file_upload']['error'];

$the_message = $upload_errors[$the_error];


}




}

?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Document</title>
</head>
<body>


<!-- Form for uploading files -->
<form action="upload.php" enctype="multipart/form-data" method="post">

<h2>
<?php 

if(!empty($upload_errors)){

    echo $the_message;

}

?>

</h2>

<input type="file" name="file_upload"><br>

<input type="submit" name="submit">

</form>



    
</body>
</html>