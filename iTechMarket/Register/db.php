<?php

$servername = "localhost";
$username = "root";
$password = "";
$bdname = "iTech";

$conn = mysqli_connect($servername, $username, $password, $bdname);

if(!$conn){
    die("Connection Failed". mysqli_connect_error());
}
else{
    ("Успех");
}
?>