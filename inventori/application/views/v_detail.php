<!DOCTYPE html>
<html lang="en">
	<head>
	<link rel="stylesheet" href="assets/dist/css/site.min.css">
    <script type="text/javascript" src="assets/dist/js/site.min.js"></script>
	</head>
    
<div class="col-xs-12 col-sm-9 content">
            <div class="panel panel-default">
              <div class="panel-heading">
                <h3 class="panel-title"><a href="javascript:void(0);" class="toggle-sidebar"><span class="fa fa-angle-double-left" data-toggle="offcanvas" title="Maximize Panel"></span></a>Data Barang</h3>
              </div>
              <div class="panel-body">
                <div class="content-row">
                  <h2 class="content-row-title">Detail Barang</h2>
<form action="<?php echo $action; ?>" method="get" enctype="multipart/form-data">
        <div class="form-group">
        <img src="image/barang/" name="foto_barang" id="foto_barang" value="<?php echo $foto_barang; ?>" height="100px" width="100px" >
        </div>
        <div class="form-group">
            <label for="varchar">Nama Barang</label>
            <input type="text" class="form-control" required name="nama_barang" id="nama_barang" placeholder="Nama Barang" value="<?php echo $nama_barang; ?>" />
        </div>

        <div class="form-group">
            <label for="varchar">Jenis </label>
            <input type="text" class="form-control" required name="jenis" id="jenis" placeholder="Jenis" value="<?php echo $jenis; ?>" />
        </div>
        <div class="form-group">
            <label for="varchar">Kemasan</label>
            <input type="text" class="form-control" required name="kemasan" id="kemasan" placeholder="Kemasan" value="<?php echo $kemasan; ?>" />
        </div>
        <div class="form-group">
            <label for="varchar">Merk</label>
            <input type="text" class="form-control" required name="merk" id="merk" placeholder="Merk" value="<?php echo $merk; ?>" />
        </div>
        <div class="form-group">
            <label for="int">Stok </label>
            <input type="number" min="0"  title="Masukkan data angka saja" class="form-control" required name="stok" id="stok" placeholder="Stok" value="<?php echo $stok; ?>" />
        </div>
        <div class="form-group">
            <label for="int">Harga</label>
            <input type="number" min="1"  title="Masukkan data angka saja" class="form-control" required name="harga" id="harga" placeholder="Harga" value="<?php echo $harga; ?>" />
        </div>

        <div class="form-group">
            <label for="int">Supplier </label>
            <input type="text" class="form-control" required name="id_supplier" id="id_supplier" placeholder="Merk" value="<?php echo $id_supplier; ?>" />
        </div>
       
        <input type="hidden" name="id_barang" value="<?php echo $id_barang; ?>" /> 
        
        <a href="<?php echo site_url('home') ?>" class="btn btn-default">Cancel</a>
    </form>

                </div>
                </div>
                </div>
                </div>
           
                </body>
</html>
</section>
