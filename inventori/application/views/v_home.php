<!DOCTYPE html>
<html lang="en">
	<head>
	<link rel="stylesheet" href="assets/dist/css/site.min.css">
    <script type="text/javascript" src="assets/dist/js/site.min.js"></script>
	</head>

<style>
	.panel > .panel-body {
    background-image: none;
    background-color: #ffffff;
    /* background: url('image/carousel/kokola10.jpg'); */
    

}


</style>
	<body>
    
	<div class="col-xs-12 col-sm-12 content">
      <div class="panel panel-default">
        <div class="panel-body">
        <div class="card">
        <div class="col-md-7 text-left">
        <a href="<?php echo base_url() ?>home" type="submit" class="btn btn-primary" >All </a> 
        <a href="<?php echo base_url() ?>home/makanan" type="submit" class="btn btn-info" >Makanan </a> 
        <a href="<?php echo base_url() ?>home/minuman" type="submit" class="btn btn-success" >Minuman </a> 
        <a href="<?php echo base_url() ?>home/mamel" type="submit" class="btn btn-secondary" >Sempak mamel</a>
        <a href="<?php echo base_url() ?>home/bocor" type="submit" class="btn btn-warning" >Kondom anti bocor</a> 
        <a href="<?php echo base_url() ?>home/meledak" type="submit" class="btn btn-primary" >Bijimu meledak</a> 
        <!-- <div class="col-md-3 text-left"> -->

                
                </div>
          
                <div class="col-md-5 text-right">
                <div class="home-category-list__category-grid"></div>
                <form action="<?php echo site_url('home/index'); ?>" class="form-inline" method="get">
                    <div class="input-group">
                        <input type="text" class="form-control" placeholder="cari nama barang" name="q">
                        <span class="input-group-btn">
                            <?php 
                                if ($q <> '')
                                {
                                    ?>
                                   
                                    <?php
                                }
                            ?>
                          <button class="btn btn-primary" type="submit">Search</button>
                        </span>
                    </div>
                    </div>
                </form>

                </div>
            
                
                </div>
</br>
	