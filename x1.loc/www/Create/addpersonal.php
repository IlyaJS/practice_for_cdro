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
    <link rel="stylesheet" href="styleadd.css">
</head>

<body>

    <form action="Createpersonal.php" method="post">
        <p class="text1">Код модуля</p>
        <p><select name="array[]">
                <?php
                $result = mysqli_query($link, "SELECT * FROM `tablemodule`");

                while ($goods = mysqli_fetch_assoc($result)) {
                ?>


                    <option value="<?= $goods['id_module'] ?>"><?= $goods['id_module'] ?></option>

                <?php
                }
                ?>
            </select></p>
        <p class="text1">ФИО</p>
        <input type="text" name="fullname"></input>
        <p class="text1">Ученая степень звания</p>
        <input type="text" name="degre"></input>
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
        <p class="text1">Подразделение</p>
        <input type="text" name="unit"></input>
        <p class="text1">Должность</p>
        <input type="text" name="position"></input>
        <p class="text1">Телефон</p>
        <input type="text" name="phone"></input>
        <p class="text1">Email</p>
        <input type="text" name="email"></input>

        <br>
        <br>
        <button type="submit">Добавить новый модуль</button>


    </form>


</body>

</html>