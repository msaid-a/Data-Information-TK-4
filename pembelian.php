<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet"
    integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">

  <title>Pembelian</title>
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
        <a class="nav-item nav-link" href="/RekomendasiPaket.php">Rekomendasi</a> </div>
    </div>
  </nav>
  <div class="px-4 mt-5">
    <h2 class="text-center mb-4">Pembelian</h2>
    <table class="table">
      <thead class="thead-dark">
        <tr>
          <th scope="col">Id Pembelian</th>
          <th scope="col">Nama Barang</th>
          <th scope="col">JumlahPembelian</th>
          <th scope="col">HargaBeli</th>
          <th scope="col">Pembeli Barang</th>
          <th scope="col">Supplier</th>
        </tr>
      </thead>
      <tbody>

        <?php 
            require 'connection.php';
            $result = mysqli_query($conn, "SELECT idPembelian, JumlahPembelian, HargaBeli, Barang.NamaBarang  ,Pengguna.NamaPengguna, Supplier.NamaSupplier  from Pembelian 
            left join Pengguna on Pembelian.idPengguna  =  Pengguna.idPengguna
            LEFT join Barang on Pembelian.idBarang  = Barang.idBarang 
            left join Supplier on Pembelian.idSupiler  = Supplier.idSupplier
            GROUP by idPembelian ;");

            if (mysqli_num_rows($result) > 0) {
                while ($row = mysqli_fetch_assoc($result)) {
                    $idPembelian = $row["idPembelian"];
                    $NamaBarang = $row["NamaBarang"];
                    $HargaBeli = $row["HargaBeli"];
                    $JumlahPembelian = $row["JumlahPembelian"];
                    $NamaPengguna = $row['NamaPengguna'];
                    $NamaSupplier = $row["NamaSupplier"];
                    echo  "<tr>
                    <th>$idPembelian</th>
                    <td>$NamaBarang</td>
                    <td>$JumlahPembelian</td>
                    <td>$HargaBeli</td>
                    <td>$NamaPengguna</td>
                    <td>$NamaSupplier</td>
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