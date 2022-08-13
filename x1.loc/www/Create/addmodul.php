<?php
include "../connect/1.php";
?>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link rel="stylesheet" href="style.css">
</head>
<style>
    p,
    input {

        margin: 0px;
        padding-top: 10px;
    }

    select {
        width: 165px;
        height: 30px;
    }
</style>

<body>

    <form action="Create.php" method="post" enctype="multipart/form-data">
        <p class="text1">Код модуля</p>
        <input type="number" name="number">
        <p class="text1">Название модуля</p>
        <input type="text" name="namemodul"></input>
        <p class="text1">Категории слушателей</p>
        <p><select name="array[]">
                <?php
                $result = mysqli_query($link, "SELECT * FROM `tablelistener`");

                while ($goods = mysqli_fetch_assoc($result)) {
                ?>


                    <option value="<?= $goods['id_listener'] ?>"><?= $goods['categorialistener'] ?></option>

                <?php
                }
                ?>
            </select></p>
        <p class="text1">Учреждение ИРО</p>
        <p><select name="array1[]">
                <?php
                $result = mysqli_query($link, "SELECT * FROM `institute`");

                while ($goods = mysqli_fetch_assoc($result)) {
                ?>


                    <option value="<?= $goods['itsnitut_number'] ?>"><?= $goods['institute'] ?></option>

                <?php
                }
                ?>
            </select></p>
        <p class="text1">Минимальный объем</p>
        <input type="text" name="minvalue">
        <p class="text1">Дополнительный объем</p>
        <input type="text" name="maxvalue">
        <p class="text1">Виды занятий</p>
        <input type="text" name="typelesson">
        <p class="text1">Примечание</p>
        <textarea name="note"></textarea>
        <p class="text1">Выбирете файл для загрузки</p>
        <input type="file" name="upfile">
        <br>
        <br>
        <button type="submit">Добавить новый модуль</button>


    </form>


</body>

</html>