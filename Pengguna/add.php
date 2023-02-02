<!DOCTYPE html>
<html lang="en">

<head>
    <title>Tambah Pengguna</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
</head>

<body>
    <h2 class="mt-5 mb-3 text-center">Tambah Pengguna</h2>
    <form action="add_data.php" method="post" class="px-4 w-50 mx-auto">
        <input class="form-control mt-3" type="text" name="name" placeholder="Name">
        <input class="form-control mt-3" type="password" name="password" placeholder="Password">
        <input class="form-control mt-3" type="text" name="firstname" placeholder="Nama Depan">
        <input class="form-control mt-3" type="text" name="lastname" placeholder="Nama Belakang">
        <input class="form-control mt-3" type="text" name="alamat" placeholder="Alamat">
        <select class="form-select mt-3" aria-label="Default select example" name="idAksess" placeholder="Hak Aksess">
            <option value="1">Read</option>
            <option value="2">Write</option>
        </select>
        <input type="submit" class="btn btn-primary mt-5" value="Submit">
    </form>
</body>

</html>