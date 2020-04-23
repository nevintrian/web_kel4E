





<!DOCTYPE html>

<html lang="en">
	<head>
	<link rel="stylesheet" href="assets/dist/css/site.min.css">
    <script type="text/javascript" src="assets/dist/js/site.min.js"></script>
	</head>


	<body>
  <div class="col-xs-12 col-sm-12 content">
      <div class="panel panel-default">
        <div class="panel-body">
  <div align="center" > <h4>Keranjang Barang</h4> </div>
  </br>
  <ul class="contact-info-list">
<div class="col-md-12">
<div class="row">
	<div class="col-md-12">
	<form action="keranjang/simpan_penjualan"  enctype="multipart/form-data" method="POST">

       
            <input type="hidden" class="form-control" name="kode_penjualan" id="kode_penjualan" value="<?php echo $kode; ?>" readonly/>
            <input type="hidden" class="form-control" name="id_user" id="id_user" value="<?php echo $this->session->userdata("id_user") ?> ?>" readonly/>
        <div class="table-resposive">
        <table class="table table-bordered">
        	<tr>
        		<th>No.</th>
        		<th>Nama Barang</th>
        		<th>Jumlah</th>
        		<th>Harga</th>
            <th>Subtotal</th>
            <th>Action</th>
       
        	</tr>
        	<tr>
        	<?php $i=1; $no=1;?>
            <?php foreach($this->cart->contents() as $item): ?>
        		<td><?php echo $no; ?></td>
            
                <td><?php echo $item['name']; ?></td>
                <td><?php echo $item['qty']; ?></td>
                <td>Rp. <?php echo number_format($item['price'], 0,',','.'); ?></td>
                <td>Rp. <?php echo number_format($item['subtotal'], 0,',','.'); ?></td>
                <td>
                    <a href="keranjang/hapus_cart/<?php echo $item['rowid'] ?>" class="btn btn-warning btn-sm">X</a>
                </td>
        	</tr>
        	<?php $i++; $no++;?>
            <?php endforeach; ?>
            <tr>
        		<th colspan="4">Total Harga</th>
        		<th colspan="2">Rp. <?php echo number_format($this->cart->total(), 0,',','.'); ?></th>
        	</tr>
        </table>
        </div>

        
        
        <div align="right" class="form-group">
        	<input type="hidden" name="total_keluar" value="<?php echo $this->cart->total() ?>">
        	<input type="hidden" name="tgl_penjualan" value="<?php echo date('Y-m-d') ?>">
        	<a href="home" class="btn btn-danger">Kembali</a>

            <button type="button" class="btn btn-info" data-toggle="modal" data-target="#myModal">Bayar</button>
            
            
        </div>

        <div id="myModal" class="modal fade" role="dialog">
  <div class="modal-dialog">
  <form method="POST"  enctype="multipart/form-data" action="keranjang/simpan_penjualan">
	  <div class="modal-content">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal">&times;</button>
        <h4 class="modal-title">Pilih metode pembayaran</h4>
      </div>
    <!-- Modal content-->
	<div class="modal-body">
	<div class="form-group">
  <input type="hidden" class="form-control" name="kode_penjualan" id="kode_penjualan" value="<?php echo $kode; ?>" readonly/>
        <label>Pilih Pembayaran</label><br>
        <select name="filter" id="filter" class="form-control" required>
            <option value="">--pilih--</option>
            <option value="1">Bayar di tempat</option>
            <option value="2">Bayar melalui transfer bank</option>
           
        </select>
		</div>

    <div class="form-group" id="form-tanggal">
            <label style="color:red">Silahkan melakukan pembayaran saat barang telah sampai</label><br>
            </div>    
     
        
        <div class="form-group" id="form-tahun">
            <label >Silahkan melakukan transfer ke nomor rekening berikut</label><br>
           
				<input name="tahun" class="form-control" readonly value="110293846328882191"></input>
			

    </div>
    <div class="form-group" id="form-bulan">
            <label for="file"> Masukkan bukti transfer </label>
            <input type="file" class="form-control" name="foto_keluar" />
        </div>
	
        <div class="modal-footer">
	
      	<button class="btn btn-info" type="submit">Simpan</button>
        <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
      </div>
        
            </form>
	
</div>
</div>
  </form>
  
<script src="<?php echo base_url('assets/jquery-ui/jquery-ui.min.js'); ?>"></script> <!-- Load file plugin js jquery-ui -->
    <script>
    $(document).ready(function(){ // Ketika halaman selesai di load

        $('#form-tanggal, #form-bulan, #form-tahun').hide(); // Sebagai default kita sembunyikan form filter tanggal, bulan & tahunnya
        $('#filter').change(function(){ // Ketika user memilih filter
            if($(this).val() == '1'){ // Jika filter nya 1 (per tanggal)
                $('#form-bulan, #form-tahun').hide(); // Sembunyikan form bulan dan tahun
                $('#form-tanggal').show(); // Tampilkan form tanggal
            }else if($(this).val() == '2'){ // Jika filter nya 2 (per bulan)
                $('#form-tanggal').hide(); // Sembunyikan form tanggal
                $('#form-bulan, #form-tahun').show(); // Tampilkan form bulan dan tahun

            }
            $('#form-tanggal input, #form-bulan select, #form-tahun select').val(''); // Clear data pada textbox tanggal, combobox bulan & tahun
        })
    })
    </script>
	</div>
</div>
  </ul>
  </div> 
  </div> 
  </div> 
  
	</body>
</html>
</section>
