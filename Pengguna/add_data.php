<?php
    require ('../connection.php');
    $name = $_POST["name"];
    $password = $_POST["password"];
    $firstname = $_POST["firstname"];
    $lastname = $_POST["lastname"];
    $alamat = $_POST["alamat"];
    $idAksess = $_POST["idAksess"];

    $sql = "INSERT INTO Pengguna (NamaPengguna, Password, NamaDepan, NamaBelakang, Alamat, idAksess) VALUES ('$name', '$password', '$firstname', '$lastname', '$alamat', '$idAksess')";

    if (mysqli_query($conn, $sql)) {
        echo "Data added successfully";
    } else {
        echo "Error: " . $sql . "<br>" . mysqli_error($conn);
    }
    

?>