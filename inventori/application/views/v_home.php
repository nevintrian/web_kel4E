<!DOCTYPE html>
<html lang="en">
	<head>
	<link rel="stylesheet" href="assets/dist/css/site.min.css">
    <script type="text/javascript" src="assets/dist/js/site.min.js"></script>
	</head>
	<body>
	
		
		<div class="row">
		  <?php foreach($barang as $b) : ?>
		  <div class="col-sm-2 col-md-2">
			<div class="thumbnail">
			  <?=img([
				'src'		=> 'image/barang/' . $b->foto_barang, 
				'style'		=> 'width: 200px; height:200px; ' 
			  ])?>
			  <div class="caption">
				<h3 style="min-height:20px;"><?=$b->nama_barang?></h3>
				<p>stok : <?=$b->stok?></p>
				
				<p>harga : Rp<?=$b->harga?></p> 
				<p>
					<?=anchor('welcome/add_to_cart/' . $b->id_barang, 'Buy' , [
						'class'	=> 'btn btn-primary',
						'role'	=> 'button'
					])?>
				</p>
			</div>
			</div>
		  </div>
		  <?php endforeach; ?>
		</div>
		
	</body>
</html>
</section>