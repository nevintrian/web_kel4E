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
                  <h2 class="content-row-title">Data Terhapus</h2>
                  <div class="col-md-12">
<div class="panel-heading">
    <div class="row">

    <?php if ($this->session->userdata('level') == 'admin' or $this->session->userdata('level') == 'manajer') { ?>
      <div class="col-md-4">
            <div class="list-group">  
              <d style="text-align: center;background-color: #FF0000;border-color: #d9d9d9" class="list-group-item"><i class="fa fa-folder"> </i> Pegawai</d>
              <a href="<?php echo site_url('user_restore') ?>" class="list-group-item" style="text-align: center;background-color: light-blue;border-color: #d9d9d9">jumlah terhapus Pegawai : <?php echo $total_asset_karyawan; ?></a>  <!-- menampilkan jumlah user -->
            </div>
      </div>

      <div class="col-md-4">
            <div class="list-group">  
              <d style="text-align: center;background-color: #FF0000;border-color: #d9d9d9" class="list-group-item"><i class="fa fa-folder"> </i> Pelanggan</d>
              <a href="<?php echo site_url('pelanggan_restore') ?>" class="list-group-item" style="text-align: center;background-color: light-blue;border-color: #d9d9d9">jumlah terhapus Pelanggan : <?php echo $total_asset_pelanggan; ?></a>  <!-- menampilkan jumlah user -->
            </div>
      </div>

      <div class="col-md-4">
            <div class="list-group">  
              <d style="text-align: center;background-color: #FF0000;border-color: #d9d9d9" class="list-group-item"><i class="fa fa-folder"> </i> Supplier</d>
              <a href="<?php echo site_url('supplier_restore') ?>" class="list-group-item" style="text-align: center;background-color: light-blue;border-color: #d9d9d9">jumlah terhapus Supplier : <?php echo $total_asset_supplier; ?></a>  <!-- menampilkan jumlah user -->
            </div>
      </div>
      
      <div class="col-md-4">
            <div class="list-group">  
              <d style="text-align: center;background-color: #FF0000;border-color: #d9d9d9" class="list-group-item"><i class="fa fa-folder"> </i> Barang</d>
              <a href="<?php echo site_url('barang1') ?>" class="list-group-item" style="text-align: center;background-color: light-blue;border-color: #d9d9d9">jumlah terhapus Barang </a>  <!-- menampilkan jumlah user -->
            </div>
      </div>
      
      <div class="col-md-4">
            <div class="list-group">  
              <d style="text-align: center;background-color: #FF0000;border-color: #d9d9d9" class="list-group-item"><i class="fa fa-folder"> </i> Transaksi Barang Masuk</d>
              <a href="<?php echo site_url('masuk1') ?>" class="list-group-item" style="text-align: center;background-color: light-blue;border-color: #d9d9d9">jumlah terhapus barang masuk </a>  <!-- menampilkan jumlah user -->
            </div>
      </div>
      
      <div class="col-md-4">
            <div class="list-group">  
              <d style="text-align: center;background-color: #FF0000;border-color: #d9d9d9" class="list-group-item"><i class="fa fa-folder"> </i> Transaksi Barang Keluar</d>
              <a href="<?php echo site_url('keluar') ?>" class="list-group-item" style="text-align: center;background-color: light-blue;border-color: #d9d9d9">jumlah terhapus barang keluar </a>  <!-- menampilkan jumlah user -->
            </div>
    	</div>

      <div class="col-md-4">
            <div class="list-group">  
              <d style="text-align: center;background-color: #FF0000;border-color: #d9d9d9" class="list-group-item"><i class="fa fa-folder"> </i> Konfirmasi Pembayaran</d>
              <a href="<?php echo site_url('konfirmasi') ?>" class="list-group-item" style="text-align: center;background-color: light-blue;border-color: #d9d9d9">jumlah terhapus konfirmasi pembayaran : <?php echo $total_asset_konfirmasi; ?></a>  <!-- menampilkan jumlah user -->
            </div>
    	</div>
    <?php }else if ($this->session->userdata('level') == 'customer' or $this->session->userdata('level') == 'sales') { ?>
      <div class="col-md-4">
            <div class="list-group">  
              <d style="text-align: center;background-color: #FF0000;border-color: #d9d9d9" class="list-group-item"><i class="fa fa-folder"> </i> Transaksi Menunggu Konfirmasi</d>
              <a href="<?php echo site_url('konfirmasi') ?>" class="list-group-item" style="text-align: center;background-color: light-blue;border-color: #d9d9d9">jumlah terhapus transaksi menunggu konfirmasi : <?php echo $total_asset_konfirmasi; ?></a>  <!-- menampilkan jumlah user -->
            </div>
    	</div>
      <div class="col-md-4">
            <div class="list-group">  
              <d style="text-align: center;background-color: #FF0000;border-color: #d9d9d9" class="list-group-item"><i class="fa fa-folder"> </i> Transaksi Telah Dikonfirmasi</d>
              <a href="<?php echo site_url('keluar') ?>" class="list-group-item" style="text-align: center;background-color: light-blue;border-color: #d9d9d9">jumlah terhapus transaksi telah di konfirmasi: <?php echo $total_asset_keluar; ?></a>  <!-- menampilkan jumlah user -->
            </div>
      </div>

    <?php }?>

    </div>
    </div>
    </div>
                </div>
              </div>
            </div>
        </div>
      </div>
    </div>
