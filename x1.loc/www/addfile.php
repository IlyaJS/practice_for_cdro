<?php

$Upfile = $_FILES["upfile"];

if ($Upfile["type"] !=="application/pdf") {

    die('Incorrect file type');
    
}





?>


<pre>
<?php
print_r($Upfile);
?>

</pre>
<?php

if (!is_dir('uploads')) {

    mkdir('uploads', 0777, true);
}

$filename = time() . $Upfile["name"];


move_uploaded_file($Upfile["tmp_name"], "uploads/" . $filename);

?>

