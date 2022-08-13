<?php

include "../connect/1.php";

$array = $_POST['array'];
$fullname = $_POST['fullname'];
$degre = $_POST['degre'];
$array1 = $_POST['array1'];
$unit = $_POST['unit'];
$position = $_POST['position'];
$phone = $_POST['phone'];
$email = $_POST['email'];

$mirrorarray;
$mirrorarray1;

foreach ($array as $value){

    $mirrorarray  =$value;
   

}
foreach ($array1 as $value){

    $mirrorarray1  =$value;
   

}


mysqli_query($link, "INSERT INTO `testmysql03`.`tablepersonalities` (
    `id_personal` ,
    `id_module` ,
    `fullname` ,
    `degree` ,
    `id_institute` ,
    `unit` ,
    `position` ,
    `phone` ,
    `email`
    )
    VALUES (
    NULL , '$mirrorarray', '$fullname', '$degre', '$mirrorarray1', '$unit', '$position', '$phone', '$email'
    )");
    
    header('Location: ../index.php');



?>