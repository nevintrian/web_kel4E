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
        <div class="card">
                  <div class="col-md-4">
                
                </div>
                <div class="col-md-4">
                <center><h4> UD SRI REJEKI </h4> </center>
                </div>
                <div class="col-md-4 text-right">
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
                </div>
                </div>
</br>
	