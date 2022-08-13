<?php

include "../connect/1.php";


$number = $_POST['number'];
$namemodul = $_POST['namemodul'];
$array = $_POST['array'];
$array1 = $_POST['array1'];
$minval = $_POST['minvalue'];
$maxval = $_POST['maxvalue'];
$typelesson = $_POST['typelesson'];
$note = $_POST['note'];

//print_r($_POST);

$Upfile = $_FILES["upfile"];


if (!is_dir('uploads')) {

    mkdir('uploads', 0777, true);
}


foreach ($array as $value){

    $mirrorarray  = $value;
    

}
foreach ($array1 as $value){

    $mirrorarray1  = $value;
   

}

/*if ($array[0] == 1) {
    $mirrorarray = 1;
} else if ($array[0] == 2) {
    $mirrorarray = 2;
} else if ($array[0] == 3) {
    $mirrorarray = 3;
} else if ($array[0] == 4) {
    $mirrorarray = 4;
} else if ($array[0] == 5) {
    $mirrorarray = 5;
} else if ($array[0] == 6) {
    $mirrorarray = 6;
} else if ($array[0] == 7) {
    $mirrorarray = 7;
} else if ($array[0] == 8) {
    $mirrorarray = 8;
}


if ($array1[0] == 1) {
    $mirrorarray1 = 1;
}else if ($array1[0] == 2){
    $mirrorarray1 = 2;
}else if ($array1[0] == 3){
    $mirrorarray1 = 3;
}else if ($array1[0] == 4){
    $mirrorarray1 = 4;
}else if ($array1[0] == 5){
    $mirrorarray1 = 5;
}else if ($array1[0] == 6){
    $mirrorarray1 = 6;
}else if ($array1[0] == 7){
    $mirrorarray1 = 7;
}else if ($array1[0] == 8){
    $mirrorarray1 = 8;
}
*/
if ($Upfile["type"] !== "application/pdf") {

    die('Incorrect file type');
}
else{
    $filename = time() . $Upfile["name"];


    move_uploaded_file($Upfile["tmp_name"], "../uploads/" . $filename);
    mysqli_query($link, "INSERT INTO `testmysql03`.`tablemodule` ( `id` , `id_module` , `module_name` , `id_categorieslistener` , `id_institute` , `minvalue` , `maxvalue` , `typelesson` , `text` , `infofile`) VALUES (NULL , '$number', '$namemodul', '$mirrorarray', '$mirrorarray1', '$minval', '$maxval', '$typelesson', '$note', '$filename')");
    
    header('Location: addpersonal.php');
}
