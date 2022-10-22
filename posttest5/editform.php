<?php
    require 'config.php';
    if (isset($_GET['id'])) {
        $id = $_GET['id'];
    }
    $result = mysqli_query($db, "SELECT * FROM agency WHERE id = '$id' ");
    $row = mysqli_fetch_array($result);

    if (isset($_POST['submit'])) {
        $name = $_POST['name'];
        $ytname = $_POST['ytname'];
        $status = $_POST['status'];

        $update = mysqli_query($db, "UPDATE agency SET name='$name', ytname='$ytname', status='$status' WHERE id='$id' ");
        if ($update) {
            header("Location:talent.php");
        }
    }
?>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Comptible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Edit Data Vtuber</title>
    <link rel="stylesheet" href="styleAdd.css">
</head>

<body>
    <div class="form">
        <h3>TAMBAH DATA TALENT VTUBER</h3><br>
        <form action="" method="post">
            <label for="">Nama Vtuber</label><br>
            <input type="text" name="name" value=<?=$row['name'];?>> <br><br>
            <label for="">Nama Channel Mereka</label><br>
            <input type="text" name="ytname" value=<?=$row['ytname'];?>> <br><br>
            <label for="">AGENCY / INDIE</label> <br>
            <input type="text" name="status" value=<?=$row['status'];?>> <br><br>
            <button type="submit" name='submit' class="submit">EDIT</button>
        </form>
    </div>
</body>

</html>