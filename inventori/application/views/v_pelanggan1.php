<div class="col-xs-12 col-sm-9 content">
            <div class="panel panel-default">
              <div class="panel-heading">
                <h3 class="panel-title"><a href="javascript:void(0);" class="toggle-sidebar"><span class="fa fa-angle-double-left" data-toggle="offcanvas" title="Maximize Panel"></span></a>Data Barang</h3>
              </div>
              <div class="panel-body">
                <div class="content-row">
                  <h2 class="content-row-title">Tambah Pelanggan</h2>

<form action="<?php echo $action; ?>" method="post" enctype="multipart/form-data">
        <div class="form-group">
            <label for="varchar">Email</label>
            <input type="text" class="form-control" required name="email" id="email" placeholder="Email" value="<?php echo $email; ?>" />
        </div>
        <div class="form-group">
            <label for="varchar">Username</label>
            <input type="text" class="form-control" required name="username" id="username" placeholder="Username" value="<?php echo $username; ?>" />
        </div>
        <div class="form-group">
            <label for="varchar">Password </label>
            <input type="password" class="form-control" required name="password" id="password" placeholder="Password" value="<?php echo $password; ?>" />
        </div>
        <div class="form-group">
            <label for="varchar">Level </label>
            <select name="level"  readonly class="form-control">
                <option value="customer">customer</option>

            </select>
        </div>
        <div class="form-group">
            <label for="varchar">Nama User</label>
            <input type="text" class="form-control" required name="nama" id="nama" placeholder="Nama User" value="<?php echo $nama; ?>" />
        </div>
        <div class="form-group">
            <label for="varchar">Tanggal Lahir</label>
            <input type="date" class="form-control" required name="tgl_lahir" id="tgl_lahir" placeholder="tgl_lahir" value="<?php echo $tgl_lahir; ?>" />
        </div>
        <div class="form-group">
            <label for="varchar">Jenis Kelamin </label>
            <!-- <input type="text" class="form-control" name="level" id="level" placeholder="Level" value="<?php echo $jenis_kelamin; ?>" /> -->
            <select name="jenis_kelamin"  required class="form-control">
                <option value="<?php echo $jenis_kelamin ?>"><?php echo $jenis_kelamin ?></option>
                <option value="laki-laiki">laki-laki</option>
                <option value="perempuan">perempuan</option>
                <!-- <option value="supplier">supplier</option> -->
            </select>
        </div>
        <div class="form-group">
            <label for="varchar">Alamat</label>
            <input type="text" class="form-control" required name="alamat" id="alamat" placeholder="Alamat" value="<?php echo $alamat; ?>" />
        </div>
        <div class="form-group">
            <label for="varchar">No Telepon</label>
            <input type="text" class="form-control" required name="no_telp" id="no_telp" placeholder="No telepon" value="<?php echo $no_telp; ?>" />
        </div>
        <div class="form-group">
            <label for="file">Foto </label>
            <input type="file" class="form-control" name="foto" />
        </div>
        <input type="hidden" name="id_user" value="<?php echo $id_user; ?>" /> 
        <button type="submit" class="btn btn-primary"><?php echo $button ?></button> 
        <a href="<?php echo site_url('user') ?>" class="btn btn-default">Cancel</a>
    </form>