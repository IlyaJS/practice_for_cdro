<?php
include "./connect/1.php";
/*$result = mysqli_query($link, "SELECT * FROM `tabletrainingmodules`");

while ($goods = mysqli_fetch_assoc($result)) {
    if ($goods['id_institute'] == 2) {
        $chislo = "институт 2";
        echo '<div class="pp2">' . $chislo . '</div>';
    } else if ($goods['id_institute'] == 4) {
        $chislo1 = "институт 4";
        echo '<div class="pp2">' . $chislo1 . '</div>';
    }
}*/
?>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link rel="stylesheet" href="style.css">
    <link rel="stylesheet" href="button.css">

</head>

<body>
    <div class="buttonaddmodul">
        <a href="./include/addmodul.php" class="buttonmodul">Добавить модуль</a>
    </div>
    <table>
        <tr>
            <th>Название модуля</th>
            <th>Контингент педагогических кадров</th>
            <th>Учреждение</th>
            <th>Файл описание для загрузки</th>
            <th>Карточка модуля</th>
        </tr>
        <?php
        $result = mysqli_query($link, "SELECT * FROM `tabletrainingmodules`");

        while ($goods = mysqli_fetch_assoc($result)) {

            if ($goods['id_institute'] == "1") {
                $goods['id_institute'] = "ГУО Брестский областной ИРО";
            } else if ($goods['id_institute'] == "2") {
                $goods['id_institute'] = "ГУО Витебский областной ИРО";
            } else if ($goods['id_institute'] == "3") {
                $goods['id_institute'] = "ГУО Гомельский областной ИРО";
            } else if ($goods['id_institute'] == "4") {
                $goods['id_institute'] = "ГУО Гродненский областной ИРО";
            } else if ($goods['id_institute'] == "5") {
                $goods['id_institute'] = "ГУО Минский областной ИРО";
            } else if ($goods['id_institute'] == "6") {
                $goods['id_institute'] = "УО Могилевский государственный областной ИРО";
            } else if ($goods['id_institute'] == "7") {
                $goods['id_institute'] = "ГУО Минский городской ИРО";
            } else if ($goods['id_institute'] == "8") {
                $goods['id_institute'] = "ГУО Академия последипломного образования";
            }

        ?>
            <tr>

                <td><a href="/Learning_modules/<?= $goods['number'] ?>" target="_blank"><?= $goods['modulename'] ?></a></td>
                <td><?= $goods['teachingstuff'] ?></td>
                <td><?= $goods['id_institute'] ?></td>
                <td class="cell-table"><a href="Learning_modules/<?= $goods['number'] ?>" download>Скачать файл</a></td>
                <td class="cell-table">Открыть</td>
            </tr>

        <?php


        }


        ?>
    </table>

</body>

</html>