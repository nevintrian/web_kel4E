<!DOCTYPE html>
<html>
  <head>
    <meta charset="utf-8">
    <title>UD SRI REJEKI</title>
    <meta name="viewport" content="initial-scale=1, maximum-scale=1, user-scalable=no">
    <link rel="shortcut icon" href="favicon_16.ico"/>
    <link rel="bookmark" href="favicon_16.ico"/>
    <link rel="stylesheet" href="assets/dist/css/site.min.css">
    <script type="text/javascript" src="assets/dist/js/site.min.js"></script>
  </head>
  <body>
    <div class="container">
    <form class="form-signin" role="form" action="daftar/simpan_daftar" method="post">
        <center><h3 class="form-signin-heading">Halaman Registrasi</h3> </center>
        </br>
        
        <div class="form-group">
            <label for="varchar">Email</label>
            <input type="text" class="form-control" required name="email" id="email" placeholder="Email" />
        </div>
        <div class="form-group">
            <label for="varchar">Username</label>
            <input type="text" class="form-control" required name="username" id="username" placeholder="Username"  />
        </div>
        <div class="form-group">
            <label for="varchar">Password </label>
            <input type="password" class="form-control" required name="password" id="password" placeholder="Password"? />
        </div>
        <div class="form-group">
            <label for="varchar">Ulangi Password </label>
            <input type="password" class="form-control" required name="password1" id="password1" placeholder="Ulangi Password"? />
        </div>
        <div class="form-group">
            <label for="varchar">Level </label>
            <select name="level"  required class="form-control">
                <option value="petugas gudang">gudang</option>
                <option value="admin">admin</option>
                <option value="manajer">manajer</option>
                <option value="manajer">customer</option>
                <option value="manajer">supplier</option>
            </select>
        </div>
        <div class="form-group">
            <label for="varchar">Nama User</label>
            <input type="text" class="form-control" required name="nama" id="nama" placeholder="Nama"  />
        </div>
        <div class="form-group">
            <label for="varchar">Tanggal Lahir</label>
            <input type="date" class="form-control" required name="tgl_lahir" id="tgl_lahir" placeholder="tgl_lahir" />
        </div>
        <div class="form-group">
            <label for="varchar">Jenis Kelamin </label>
            <select name="jenis_kelamin"  required class="form-control">
                <option value="laki-laiki">laki-laki</option>
                <option value="perempuan">perempuan</option>
            </select>
        </div>
        </br>
        <button class="btn btn-lg btn-primary btn-block" type="submit">Register</button>
        <br>
        <center> <a href="login">Login Disini</a> </center>
        
      </form>

    </div>
    <div class="clearfix"></div>
    <br><br>


  </body>
</html>
