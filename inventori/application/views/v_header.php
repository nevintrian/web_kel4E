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

<script src='https://kit.fontawesome.com/a076d05399.js'></script>
  </head>
  <body>
    <nav role="navigation" class="navbar navbar-custom">
        <div class="container-fluid">
          <div class="navbar-header">
            <a  href="<?php echo base_url() ?>home" type="submit"><h5  style="color: lightblue">UD SRI REJEKI</h5> </a>
          </div>
          <div class="collapse navbar-collapse" id="bs-content-row-navbar-collapse-1">
                                <ul class="nav navbar-nav">
                                  <li class="active"><a href="home">Home</a></li>
                                  <!-- <li class="disabled"><a href="#">Link</a></li> -->
        

                                <li class="dropdown">
                                            <a href="#" class="dropdown-toggle" data-toggle="dropdown">Bantuan <b class="caret"></b></a>
                                            <ul class="dropdown-menu" role="menu">
                                            <li><a href="kontakkami">Kontak Kami</a></li>
                                            <li><a href="faq">FAQ</a></li>
                                            

                                </ul>
                                </li>
                                <li class="active"><a href="tentangkami">Tentang Kami</a></li>
                                </ul>
                               
          <?php 
                if ($this->session->userdata('level') != NULL) {
                 ?>
          <div id="navbar" class="navbar-collapse collapse">
            <div class="navbar-form navbar-right">
            <a href="<?php echo base_url() ?>keranjang" type="submit" class="btn btn-info"><i class='fas fa-shopping-cart' style='font-size:16px'></i> </a>

               <a href="<?php echo base_url() ?>dashboard" type="submit" class="btn btn-primary"><?php echo $this->session->userdata("username") ?> </a> <!-- session username -->
               <a href="<?php echo base_url() ?>login/logout" type="submit" class="btn btn-danger" onclick="javasciprt: return confirm('Apa Anda Yakin?')" >Logout </a> <!-- session username -->
            </div>
          </div>
              <?php }else{ ?>
                <div id="navbar" class="navbar-collapse collapse">
            <div class="navbar-form navbar-right">
            <a href="<?php echo base_url() ?>keranjang" type="submit" class="btn btn-info"><i class='fas fa-shopping-cart' style='font-size:16px'></i> </a>

               <a href="<?php echo base_url() ?>login" type="submit" class="btn btn-primary">login </a> <!-- session username -->
               <a href="<?php echo base_url() ?>daftar" type="submit" class="btn btn-primary">Register </a> <!-- session username -->
            </div>
          </div>
            <?php  } ?>
         </div>
         </div>
      </nav>
      <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>