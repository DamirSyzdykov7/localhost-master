<?php 
require ('connection.php');
  $query = $database->query("SELECT * FROM articles");
//   print_r($query->fetch());
//   print_r($query->fetch());
//   print_r($query->fetch());
//   print_r($query->fetch());
//   print_r($query->fetch());
  //echo "<pre>";

//   $articles = [];
//   foreach ($query as $row) {
    // $articles[] = $row;
    // echo $i;
    // print_r($row);
    // $i++;
//  }
$articles = $query->fetchAll();
 // echo "</pre>";
?>
<!DOCTYPE html>
<html lang='ru'>
<head>
    <meta charset='utf-8'>
    <meta name='viewport' content='width=device-width, initial-scale=1, shrink-to-fit=no'>
    <link href="data:image/x-icon;base64,iVBORw0KGgoAAAANSUhEUgAAABAAAAAQEAYAAABPYyMiAAAABmJLR0T///////8JWPfcAAAACXBIWXMAAABIAAAASABGyWs+AAAAF0lEQVRIx2NgGAWjYBSMglEwCkbBSAcACBAAAeaR9cIAAAAASUVORK5CYII=" rel="icon" type="image/x-icon">
    <title>Добро пожаловать!</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-GLhlTQ8iRABdZLl6O3oVMWSktQOp6b7In1Zl3/Jr59b6EGGoI1aFkw7cmDA6j6gD" crossorigin="anonymous">
</head>
<body>
   
<form action="">
    <div class="container mt-3">
        <div class="row">
            <?php foreach($articles as $row): ?>
            <DIV class="col-12 mb-3">
                <div class="card">
                    <div class="card-body">
                        <h5 class="card-title"><?= $row['title'] ?></h5>
                        <p class="card-text"><? echo $row['text'] ?></p>
                    </div>
                </div>
            </DIV>
            <?php endforeach;?>
        </div>
    </div>
</form>
</body>
</html>