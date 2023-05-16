<?php
$host = "127.0.0.1";   // хост
$port = "3309";        // порт
$dbname = "homework1"; // название БД
$login = "root";       // пользователь
$password = "";        // пароль
$conn = "mysql:host={$host};port={$port};dbname={$dbname};";
$options = [
    PDO::ATTR_DEFAULT_FETCH_MODE => PDO::FETCH_ASSOC
];
$connect = new PDO($conn, $login, $password, $options);