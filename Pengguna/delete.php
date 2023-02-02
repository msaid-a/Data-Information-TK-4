<?php
    require ('../connection.php');
    $id = $_POST["id"];
    $sql = "DELETE FROM Barang WHERE idPengguna = $id";
    
    if (mysqli_query($conn, $sql)) {
        echo "Data Barang delete successfully";
        $sqlPengguna = "DELETE FROM Pengguna WHERE idPengguna = $id";

        if(mysqli_query($conn, $sqlPengguna)) {
            echo "Data delete successfully";
        }

    } else {
        echo "Error: " . $sql . "<br>" . mysqli_error($conn);
    }
    

?>