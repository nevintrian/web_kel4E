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
    /* background: url('image/carousel/kokola10.jpg'); */
    

}


</style>
	<body>
    
	<div class="col-xs-12 col-sm-12 content">
      <div class="panel panel-default">
        <div class="panel-body">
        <div class="card">
        <div class="col-md-2 text-right">
        <!-- <div class="col-md-3 text-left"> -->
                <form action="<?php echo site_url('home/index'); ?>" class="form-inline" method="get">
                    <div class="input-group">
                       
                        <select name="q" class="form-control" > 
                                <option value="">pilih jenis</option>
                                <?php 
                                $sql = $this->db->query("select distinct jenis from barang");
                                foreach ($sql->result() as $row) {
                                ?>
                                <option value="<?php echo $row->jenis ?>"><?php echo $row->jenis ?></option>
                                <?php } ?>
                                </select>
                        <span class="input-group-btn">
                            <?php 
                                if ($q <> '')
                                {
                                    ?>
                                    
                                    <?php
                                }
                            ?>
                          <button class="btn btn-primary" type="submit"><i class='fas fa-search' style='font-size:16px'></i></button>
                        </span>
                    </div>
                </form>

                </div>
                
                </div>
                <div class="col-md-3 text-left">
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
                <div class="col-md-2 text-center">
                <h5  style="color: grey">UD SRI REJEKI</h5>
               </div>
                </div>
            
                
                </div>
</br>
	