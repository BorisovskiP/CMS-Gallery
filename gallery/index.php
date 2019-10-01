<?php require_once("admin/includes/init.php");?>
<!DOCTYPE html>
<html lang="en">

<head>

    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>Blog Home - Start Bootstrap Template</title>

    <!-- Bootstrap Core CSS -->
    <link href="css/bootstrap.min.css" rel="stylesheet">

    <!-- Custom CSS -->
    <link href="css/blog-home.css" rel="stylesheet">

    <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
        <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
        <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->
    <link href="css/styles.css" rel="stylesheet">


</head>

<body>

   <?php include "includes/navigation.php"; ?>

        <?php

        $page = !empty($_GET['page']) ? (int)$_GET['page'] : 1;

        $items_per_page = 4;

        $items_total_count = Photo::count_all();

        $paginate = new Paginate($page, $items_per_page, $items_total_count);

        $sql = "SELECT * FROM photos ";
        $sql .= "LIMIT {$items_per_page} ";
        $sql .= "OFFSET {$paginate->offset()}";
        $photos = Photo::find_by_query($sql);
        
    
        
        
        ?>

    <!-- Page Content -->
    <div class="container">

    <div class="thumbnails row">
        <div class="row">

            <!-- Blog Entries Column -->
            <div class="col-md-12">

            
            
            <?php  foreach ($photos as $photo): ?>




            
            
            <div class="col-xs-6 col-md-3">
            
            <a class="thumbnail" href="photo.php?id=<?php echo $photo->id; ?>">
            
            <img class="home_page_photo" src="admin/<?php echo $photo->picture_path(); ?>" alt="">
            
            
            </a>
            
            
            </div>
            
        


                
            <?php endforeach; ?>
            
            </div>

            <div class="row">
            
            <ul class="pager">

                <?php 
                if($paginate->page_total() > 1){

                 if($paginate->has_next()) {

               
                echo "<li class ='next'><a href='index.php?page={$paginate->next()}'>Next</a></li>";

                 }  
                    

                    for($i=1; $i<=$paginate->page_total(); $i++){

                        if($i == $paginate->current_page){

                            echo "<li class ='active'><a href='index.php?page={$i}'>{$i}</li>" ;


                        } else {

                           echo "<li>{$i}</li>" ;


                        }

                    }                 
                 

                 
                 if($paginate->has_previous()) {

               
                    echo "<li class ='previous'><a href='index.php?page={$paginate->previous()}'>Previous</a></li>";
    


                }
            }
                
                ?>

            
            </ul>

            
            </div>


            </div>
                
            

        </div>
               
               

          
        <hr>

        <!-- Footer -->
        <footer>
            <div class="row">
                <div class="col-lg-12">
                    <p>Copyright &copy; Your Website 2014</p>
                </div>
                <!-- /.col-lg-12 -->
            </div>
            <!-- /.row -->
        </footer>

    </div>
    <!-- /.container -->

    <!-- jQuery -->
    <script src="js/jquery.js"></script>
   

    <!-- Bootstrap Core JavaScript -->
    <script src="js/bootstrap.min.js"></script>

</body>

</html>
