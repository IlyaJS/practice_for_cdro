<?php 
$server = "127.0.0.1";
$login = "root";
$pass = "";
$name_db = "testmysql03";

$link = mysqli_connect($server, $login, $pass, $name_db);
$link->set_charset("utf8");

if ($link == False)
echo "Соединения не удалось";

header('Content-Type: text/html; charset=UTF-8');

mb_internal_encoding('UTF-8');
mb_http_output('UTF-8');
mb_http_input('UTF-8');
mb_regex_encoding('UTF-8');


?>