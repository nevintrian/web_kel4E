<!DOCTYPE html>
<html lang="en">
	<head>
	<link rel="stylesheet" href="assets/dist/css/site.min.css">
    <script type="text/javascript" src="assets/dist/js/site.min.js"></script>
	</head>


	<body>
	<form action="<?php echo site_url('home/index'); ?>" class="form-inline" method="get">
                    <div class="input-group">
                        <input type="text" class="form-control" name="q" value="<?php echo $q; ?>">
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
				<p>stok : <?=$home->stok?></p>
				
				<p>harga : Rp<?=$home->harga?></p> 
				<p>
					<?=anchor('welcome/add_to_cart/' . $home->id_barang, 'Buy' , [
						'class'	=> 'btn btn-primary',
						'role'	=> 'button'
					])?>
				</p>
			</div>
			</div>
		  </div>
		  <?php endforeach; ?>
		</div>

		<div class="row">
            <div class="col-md-12 text-right">
                <?php echo $pagination ?>
            </div>s
        </div>
		
	</body>
</html>
</section>