<?php 
require "connection.php";

$database;

$sql = "INSERT INTO `articles`(`title`, `text`) VALUES ('abcd', 'abcdedfg')";

$database->query($sql);