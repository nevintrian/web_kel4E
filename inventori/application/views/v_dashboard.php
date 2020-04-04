<html>
<style>
  d {
	color: rgb(255,255,255)
}
  </style>



<div class="col-xs-12 col-sm-9 content">
            <div class="panel panel-default">
              <div class="panel-heading">
                <h3 class="panel-title"><a href="javascript:void(0);" class="toggle-sidebar"><span class="fa fa-angle-double-left" data-toggle="offcanvas" title="Maximize Panel"></span></a>Dashboard</h3>
              </div>
              <div class="panel-body">
                <div class="content-row">
                  <h2 class="content-row-title">Dashboard</h2>
                  <div class="col-md-12">
<div class="panel-heading">
    <div class="row">
      <div class="col-md-4">
            <div class="list-group">  
              <d style="text-align: center;background-color: #66b3ff;border-color: #d9d9d9" class="list-group-item"><i class="fa fa-folder"> </i> Karyawan</d>
              <a href="<?php echo site_url('user') ?>" class="list-group-item" style="text-align: center;background-color: light-blue;border-color: #d9d9d9">jumlah Karyawan : <?php echo $total_asset_karyawan; ?></a>  <!-- menampilkan jumlah user -->
            </div>
      </div>

      <div class="col-md-4">
            <div class="list-group">  
              <d style="text-align: center;background-color: #66b3ff;border-color: #d9d9d9" class="list-group-item"><i class="fa fa-folder"> </i> Pelanggan</d>
              <a href="<?php echo site_url('pelanggan') ?>" class="list-group-item" style="text-align: center;background-color: light-blue;border-color: #d9d9d9">jumlah Pelanggan : <?php echo $total_asset_pelanggan; ?></a>  <!-- menampilkan jumlah user -->
            </div>
      </div>
      
      <div class="col-md-4">
            <div class="list-group">  
              <d style="text-align: center;background-color: #66b3ff;border-color: #d9d9d9" class="list-group-item"><i class="fa fa-folder"> </i> Barang</d>
              <a href="<?php echo site_url('barang') ?>" class="list-group-item" style="text-align: center;background-color: light-blue;border-color: #d9d9d9">jumlah Barang : <?php echo $total_asset_barang; ?></a>  <!-- menampilkan jumlah user -->
            </div>
      </div>
      
      <div class="col-md-4">
            <div class="list-group">  
              <d style="text-align: center;background-color: #66b3ff;border-color: #d9d9d9" class="list-group-item"><i class="fa fa-folder"> </i> Transaksi Barang Masuk</d>
              <a href="<?php echo site_url('transaksi') ?>" class="list-group-item" style="text-align: center;background-color: light-blue;border-color: #d9d9d9">jumlah transaksi : <?php echo $total_asset_masuk; ?></a>  <!-- menampilkan jumlah user -->
            </div>
      </div>
      
      <div class="col-md-4">
            <div class="list-group">  
              <d style="text-align: center;background-color: #66b3ff;border-color: #d9d9d9" class="list-group-item"><i class="fa fa-folder"> </i> Transaksi Barang Keluar</d>
              <a href="<?php echo site_url('barang') ?>" class="list-group-item" style="text-align: center;background-color: light-blue;border-color: #d9d9d9">jumlah transaksi : <?php echo $total_asset_keluar; ?></a>  <!-- menampilkan jumlah user -->
            </div>
    	</div>

    </div>
    </div>
    </div>
                </div>
              </div>
            </div>
        </div>
      </div>
    </div>
