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
	<form action="keranjang/simpan_penjualan" method="POST">

       
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
            <button type="submit" class="btn btn-info" onclick="javasciprt: return confirm('Apa anda yakin ingin membeli barang ini?')">Bayar</button>

            
            
        </div>
	</form>
	</div>
</div>
  </ul>
  </div> 
  </div> 
  </div> 
  
	</body>
</html>
</section>