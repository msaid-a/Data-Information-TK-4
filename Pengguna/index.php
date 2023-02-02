<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet"
    integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">

  <title>Pelanggan</title>
</head>

<body>
  <nav class="navbar navbar-expand-lg navbar-light bg-light px-4">
    <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNavAltMarkup"
      aria-controls="navbarNavAltMarkup" aria-expanded="false" aria-label="Toggle navigation">
      <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse" id="navbarNavAltMarkup">
      <div class="navbar-nav">
        <a class="nav-item nav-link" href="/">Barang</a>
        <a class="nav-item nav-link" href="/pembelian.php">Pembelian</a>
        <a class="nav-item nav-link" href="/penjualan.php">Penjualan</a>
        <a class="nav-item nav-link" href="/hakAksess.php">HakAksess</a>
        <a class="nav-item nav-link" href="/suplier.php">Suplier</a>
        <a class="nav-item nav-link" href="/pelanggan.php">Pelanggan</a>
        <a class="nav-item nav-link" href="/Pengguna/index.php">Pengguna</a>
        <a class="nav-item nav-link" href="/RekomendasiPaket.php">Rekomendasi</a>
      </div>
    </div>
  </nav>
  <div class="px-4 mt-5">
    <h2 class="text-center mb-4">Pengguna</h2>
    <div class="d-flex flex-row-reverse">
      <a href="../add.php" class="btn btn-danger">Tambah Pengguna</a>
    </div>
    <table class="table">
      <thead class="thead-dark">
        <tr>
          <th scope="col">Id Pengguna</th>
          <th scope="col">Nama Pengguna</th>
          <th scope="col">Alamat</th>
          <th scope="col">Hak Aksess</th>
          <th scope="col"></th>

        </tr>
      </thead>
      <tbody>
        <?php 
            require '../connection.php';
            $result = mysqli_query($conn, "SELECT idPengguna, NamaPengguna, Alamat, HakAksess.NamaAksess  from Pengguna left join HakAksess on Pengguna.idAksess  = HakAksess.idHakAksess;");

            if (mysqli_num_rows($result) > 0) {
                while ($row = mysqli_fetch_assoc($result)) {
                    $idPengguna = $row["idPengguna"];
                    $NamaPengguna = $row["NamaPengguna"];
                    $AlamatPengguna = $row["Alamat"];
                    $HakAksess = $row['NamaAksess'];
                    echo  "<tr>
                    <th>$idPengguna</th>
                    <td>$NamaPengguna</td>
                    <td>$AlamatPengguna</td>
                    <td>$HakAksess</td>
                    <td class='d-flex'>
                      <a class='btn btn-secondary' style='margin-right: 10px' href='/Pengguna/edit.php?q=$idPengguna'>Edit</a>
                      <form action='/Pengguna/delete.php' method='post'>
                        <input type='hidden' name='idPengguna' value='<?php echo $idPengguna; ?>'>
                        <button type='submit' class='btn btn-danger ml-2'>Delete</button>
                      </form>
                    </td>

                  </tr>";
                }
            }
        ?>
      </tbody>
    </table>
  </div>
</body>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"
  integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>

</html>