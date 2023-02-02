<!DOCTYPE html>
<html lang="en">

<head>
    <title>Edit Pengguna</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
</head>

<body>
    <?php 
        require ('../connection.php');
        $idPengguna = $_GET['q'];
        $query = mysqli_query($conn, "SELECT * from Pengguna WHERE idPengguna=$idPengguna;");

        while ($row = mysqli_fetch_assoc($query)) {
            $NamaPengguna = $row["NamaPengguna"];
            $AlamatPengguna = $row["Alamat"];
            $HakAksess = $row['NamaAksess'];
            $Password = $row['Password'];
            $Alamat = $row['Alamat'];
            $idAksess = $row['idAksess'];
            $firstname = $row['NamaDepan'];
            $lastname = $row['NamaBelakang'];
        }
        
    ?>
    <h2 class="mt-5 mb-3 text-center">Edit Pengguna</h2>
    <form action="edit_data.php" method="post" class="px-4 w-50 mx-auto">
        <input class="form-control mt-3" type="hidden" name="id" value="<?php echo $idPengguna ?>">

        <input class="form-control mt-3" type="text" name="name" placeholder="Name" value="<?php echo $NamaPengguna ?>">
        <input class="form-control mt-3" type="password" name="password" placeholder="Password"
            value="<?php echo $Password ?>">
        <input class="form-control mt-3" type="text" name="firstname" placeholder="Nama Depan"
            value="<?php echo $firstname ?>">
        <input class="form-control mt-3" type="text" name="lastname" placeholder="Nama Belakang"
            value="<?php echo $lastname ?>">
        <input class="form-control mt-3" type="text" name="alamat" placeholder="Alamat" value="<?php echo $Alamat ?>">
        <select class="form-select mt-3" aria-label="Default select example" name="idAksess" placeholder="Hak Aksess"
            value="<?php echo $idAksess ?>">
            <option value="1">Read</option>
            <option value="2">Write</option>
        </select>
        <input type="submit" class="btn btn-primary mt-5" value="Submit">
    </form>
</body>

</html>