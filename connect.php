<?php

$conn = mysqli_connect('localhost','ecom','password_123','sql_tutorial');

if(mysqli_connect_errno())
{
    echo 'Db connection error'.mysqli_connect_error();

}

?>
