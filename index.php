<?php 
//if (isset($_GET['number1']) && isset($_GET['number2']) && isset($_GET['operator']) && $_GET['operator']=='+') {
//        $result = $_GET['number1'] + $_GET['number2'];
//} 
//elseif (isset($_GET['number1']) && isset($_GET['number2']) && isset($_GET['operator']) && $_GET['operator']=='-') {
//        $result = $_GET['number1'] - $_GET['number2'];
//        }
//elseif (isset($_GET['number1']) && isset($_GET['number2']) && isset($_GET['operator']) && $_GET['operator']=='*') {
//        $result = $_GET['number1'] * $_GET['number2'];
//       }
// elseif (isset($_GET['number1']) && isset($_GET['number2']) && isset($_GET['operator']) && $_GET['operator']=='/') {
  //      $result = $_GET['number1'] / $_GET['number2'];
  //      }`

  if(isset($_GET['number1'])) {
    $number1 = $_GET['number1'];
    $number2 = $_GET['number2'];
  }
  if(isset($_GET['number1'])) {
    $array = explode(',', $number1);
    $array2 = explode(',', $number2);
    $array3 = implode(',' , $array2,);
  }


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
   <div class="calculator">
    <div class="mb-3">
        <label for="number1" class="number1">number1</label>
        <textarea type="number" name="number1" class="form-control"><?= $_GET['number1'] ?? ''?></textarea>
    </div>
    <!--<div class="mb-3">
        <label for="operator" class="operator">operator</label>
        <select name="operator" class="form-select">
            <option value="+">+</option>
            <option>-</option>
            <option name="operator3" selected>*</option>
            <option name="operator4">/</option>
        </select>
    </div>-->
    <div class="mb-3">
        <label for="number2" class="number2">number2</label>
        <textarea type="number" name="number2"  class="form-control"><?= $_GET['number2'] ?? ''?></textarea>
    </div>
        <div class="button mb-3">
            <button class="btn btn-primary">RESULT</button>
        </div>
        <!--<?php if(isset($result)) : ?>
        <textarea type="number" class="form-control"><?= $result?></textarea>
        <?php endif; ?>
        -->
    </div>
    <?php
    
    ?>
</form>
</body>
</html>