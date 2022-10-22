<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Comptible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Add Data Vtuber</title>
    <link rel="stylesheet" href="styleAdd.css">
</head>
<body>
    <div class="form">
        <h3>TAMBAH DATA TALENT VTUBER</h3><br>
        <form action="" method="post">
            <label for="">Nama Vtuber</label><br>
            <input type="text" name="name" id=""> <br><br>
            <label for="">Nama Channel Mereka</label><br>
            <input type="text" name="ytname" id=""> <br><br>
            <label for="">AGENCY / INDIE</label> <br>
            <input type="text" name="status" id=""> <br><br>
            <button type="submit" name='submit' class="submit">TAMBAH</button>
        </form>
    </div>
</body>
</html>


<?php
    require 'config.php';
    if (isset($_POST['submit'])){
        $name = $_POST['name'];
        $ytname = $_POST['ytname'];
        $status = $_POST['status'];

        $result = mysqli_query($db, 
                "INSERT INTO agency (name,ytname,status) VALUES('$name','$ytname','$status')");
                if ($result) {
                    header("Location:talent.php");
                }
    }
?> 
 