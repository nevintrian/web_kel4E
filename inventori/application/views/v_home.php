<!DOCTYPE html>
<html lang="en">
	<head>
	<link rel="stylesheet" href="assets/dist/css/site.min.css">
    <script type="text/javascript" src="assets/dist/js/site.min.js"></script>
	</head>

<style>
	.panel > .panel-body {
    background-image: none;
    background-color: #f1f2f6;


}


</style>
	<body>
	<div class="col-xs-12 col-sm-12 content">
      <div class="panel panel-default">
        <div class="panel-body">
	<form action="<?php echo site_url('home/index'); ?>" class="form-inline" method="get">
                    <div class="input-group">
                        <input type="text" class="form-control" placeholder="cari nama barang" name="q" value="<?php echo $q; ?>">
                        <span class="input-group-btn">
                            <?php 
                                if ($q <> '')
                                {
                                    ?>
                                    <a href="<?php echo site_url('home'); ?>" class="btn btn-default">Reset</a>
                                    <?php
                                }
                            ?>
                          <button class="btn btn-primary" type="submit">Search</button>
                        </span>
                    </div>
                </form>
</br>
		<div class="row">
		  <?php foreach($home_data as $home) : ?>
		  <div class="col-sm-2 col-md-2">
			<div class="thumbnail">
			  <?=img([
				'src'		=> 'image/barang/' . $home->foto_barang, 
				'style'		=> 'width: 200px; height:200px; ' 
			  ])?>
			  <div class="caption">
				<h3 style="min-height:20px;"><?=$home->nama_barang?></h3>
				
				<p class="badge badge-success">Harga : Rp<?=$home->harga?></p>
				<p>

				<?=anchor('detail/index/' . $home->id_barang, 'Lihat Barang' , [
						'class'	=> 'btn btn-primary',
						'role'	=> 'button'
					])?>


				<button type="button" class="btn btn-info" data-toggle="modal" data-target="#myModal<?php echo $home->id_barang; ?>">Beli</button>


				</p>
				
			</div>
			</div>
		  </div>

		  <div id="myModal<?php echo $home->id_barang; ?>" class="modal fade" role="dialog">
  <div class="modal-dialog">

    <!-- Modal content-->
    <form action="keranjang/simpan" method="POST">
    <div class="modal-content">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal">&times;</button>
        <h4 class="modal-title">Beli Barang</h4>
      </div>
      <div class="modal-body">
    <input type="hidden" name="id_barang" id="id_barang" value="<?php echo $home->id_barang ?>">
    <input type="hidden" name="harga" id="harga" value="<?php echo $home->harga ?>">
        <div class="form-group">
        	<label>Nama Barang</label><br>
			<input type="text" class="form-control" name="nama_barang" id="nama_barang" readonly value="<?php echo $home->nama_barang ?>"/>
	    </div>
	    <div class="form-group">
            <label>Stok tersedia</label>
            <input type="text" class="form-control" name="stok" id="stok" readonly value="<?php echo $home->stok ?>"/>
        </div>
        <div class="form-group">
            <label>Jumlah Beli </label>
            <input type="text" class="form-control" name="jumlah" id="jumlah"/>
            <input type="hidden" class="form-control" name="nabar" id="nabar" value="<?php echo $home->nama_barang ?>"/>
		</div>
		
      </div>
      <div class="modal-footer">
      <button type="button" class="btn btn-danger" data-dismiss="modal">Batal</button>
      	<button class="btn btn-info" type="submit">Beli</button>
        
      </div>
    </div>
    </form>

  </div>
</div>
		  <?php endforeach; ?>
		</div>

		<div class="row">
            <div class="col-md-12 text-right">
                <?php echo $pagination ?>
            </div>
        </div>
		</div>
		</div>
		</div>
		
		





	</body>

	
</html>
</section>