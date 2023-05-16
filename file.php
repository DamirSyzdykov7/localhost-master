<?php 
if(isset($_POST['coment']) && ($_POST['name'])){
    $coment = $_POST['coment'];
    $name = $_POST['name'];
    if(file_get_contents('coments.txt')) {
        $coment = "|||" . $coment;
    }
    file_put_contents('coments.txt', $coment , FILE_APPEND);
}

$text = file_get_contents('coments.txt'); 
$coments = explode("|||" ,$text);

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
   
<form action="" method="post">
    <div class="calculator">
    <div class="mb-3">
        <label for="name" class="name">name</label>
        <textarea name="name"  class="form-control"><?= $_POST['name'] ?? ''?></textarea>
    </div>
    <div class="mb-3">
        <label for="coment" class="coment">coment</label>
        <textarea name="coment"  class="form-control"><?= $_POST['coment'] ?? ''?></textarea>
    </div>
        <div class="button mb-3">
            <button class="btn btn-primary">RESULT</button>
        </div>
        <?php foreach($coments as $coment): ?>
            <?php if($coment): ?>
                <div class="alert alert-success">
                    <br><?=$name?></br>
                    <??>
                    <?=$coment?>
                </div>
        <?php endif; ?>
        <?php endforeach;?>
    </div>

    <p>сейчас: <?= date("d.m.Y H:i:s")?></p>

</form>
</body>
</html>