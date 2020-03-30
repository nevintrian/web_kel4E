<!DOCTYPE html>
<html>
  <head>
    <meta charset="utf-8">
    <title>UD SRI REJEKI</title>
    <meta name="viewport" content="initial-scale=1, maximum-scale=1, user-scalable=no">
    <base href="<?php echo base_url();?>">
    <link rel="shortcut icon" href="favicon_16.ico"/>
    <link rel="bookmark" href="favicon_16.ico"/>
    <link rel="stylesheet" href="assets/dist/css/site.min.css">
    <link href="http://fonts.googleapis.com/css?family=Open+Sans:400,300,600,800,700,400italic,600italic,700italic,800italic,300italic" rel="stylesheet" type="text/css">
    <link href="assets/bootstrap-datepicker.css" rel="stylesheet">
    <script type="text/javascript" src="assets/dist/js/site.min.js"></script>
    <script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
  </head>
  <body>
    <nav role="navigation" class="navbar navbar-custom">
        <div class="container-fluid">
          <div class="navbar-header">
            <a  href="<?php echo base_url() ?>home" type="submit"><h5  style="color: lightblue">UD SRI REJEKI</h5> </a>
          </div>

          <?php 
                if ($this->session->userdata('level') != NULL) {
                 ?>
          <div id="navbar" class="navbar-collapse collapse">
            <div class="navbar-form navbar-right">
               <a href="<?php echo base_url() ?>dashboard" type="submit" class="btn btn-primary"><?php echo $this->session->userdata("username") ?> </a> <!-- session username -->
               <a href="<?php echo base_url() ?>login/logout" type="submit" class="btn btn-primary">Logout </a> <!-- session username -->
            </div>
          </div>
              <?php }else{ ?>
                <div id="navbar" class="navbar-collapse collapse">
            <div class="navbar-form navbar-right">
               <a href="<?php echo base_url() ?>login" type="submit" class="btn btn-primary">login </a> <!-- session username -->
               <a href="<?php echo base_url() ?>daftar" type="submit" class="btn btn-primary">Register </a> <!-- session username -->
            </div>
          </div>
            <?php  } ?>
         </div>
      </nav>
