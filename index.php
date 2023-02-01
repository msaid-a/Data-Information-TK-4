<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
    
    <title>Document</title>
</head>
<body>
<nav class="navbar navbar-expand-lg navbar-light bg-light px-4">
  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNavAltMarkup" aria-controls="navbarNavAltMarkup" aria-expanded="false" aria-label="Toggle navigation">
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
    </div>
  </div>
</nav>
    <div class="px-4 mt-5">
        <h2 class="text-center mb-4">Barang</h2>
    <table class="table">
    <thead class="thead-dark">
    <tr>
      <th scope="col">Id Barang</th>
      <th scope="col">Nama Barang</th>
      <th scope="col">Keterangan</th>
      <th scope="col">Stock</th>
      <th scope="col">Pembeli Barang</th>
    </tr>
  </thead>
  <tbody>

        <?php 
            require 'connection.php';
            $result = mysqli_query($conn, "SELECT Barang.idBarang, Barang.NamaBarang, Barang.Keterangan, IFNULL( sum(Pembelian.JumlahPembelian), 0 ) - IFNULL( sum(Penjualan.JumlahPenjualan),0) as Stock, Pengguna.NamaPengguna as Pembeli
            FROM Barang
            left join Pembelian on Barang.idBarang = Pembelian.idBarang
            left join Penjualan on Barang.idBarang = Penjualan.idBarang
            left join Pengguna on Barang.idPengguna =  Pengguna.idPengguna
            GROUP by Barang.idBarang;");

            if (mysqli_num_rows($result) > 0) {
                while ($row = mysqli_fetch_assoc($result)) {
                    $idBarang = $row["idBarang"];
                    $NamaBarang = $row["NamaBarang"];
                    $Stock = $row["Stock"];
                    $keterangan = $row['Keterangan'];
                    $pengguna = $row['Pembeli'];
                    echo  "<tr>
                    <th>$idBarang</th>
                    <td>$NamaBarang</td>
                    <td>$keterangan</td>
                    <td>$Stock</td>
                    <td>$pengguna</td>
                  </tr>";
                }
            }
        ?>
        </tbody>
        </table>
    </div>
</body>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>

</html>
