<?php
    require ('../connection.php');
    $id = $_POST["id"];
    $name = $_POST["name"];
    $password = $_POST["password"];
    $firstname = $_POST["firstname"];
    $lastname = $_POST["lastname"];
    $alamat = $_POST["alamat"];
    $idAksess = $_POST["idAksess"];

    $sql = "UPDATE Pengguna
    SET NamaPengguna = '$name', 
        Password = '$password', 
        NamaDepan = '$firstname', 
        NamaBelakang = '$lastname', 
        Alamat = '$alamat', 
        idAksess = $idAksess
    WHERE idPengguna = 4;";

    if (mysqli_query($conn, $sql)) {
        echo "Data edit successfully";
    } else {
        echo "Error: " . $sql . "<br>" . mysqli_error($conn);
    }
    

?>