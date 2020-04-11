        <div class="container-fluid">
        <div class="row row-offcanvas row-offcanvas-left">
            <div class="col-xs-6 col-sm-3 sidebar-offcanvas" role="navigation">
            <ul class="list-group panel">
                <li class="list-group-item"><i class="glyphicon glyphicon-align-justify"></i> <b>MENU UTAMA</b></li>
                <li class="list-group-item"><a href="<?php echo base_url()?>dashboard"><i class="glyphicon glyphicon-home"></i>Dashboard </a></li>
                <li class="list-group-item"><a href="<?php echo base_url()?>profil"><i class="glyphicon glyphicon-user"></i>Profil</a></li>
                
                <?php 
                if ($this->session->userdata('level') == 'admin') {
                 ?>
               
                <li>
                  <a href="#demo4" class="list-group-item " data-toggle="collapse"><i class="glyphicon glyphicon-th-large"></i>Data Master  <span class="glyphicon glyphicon-chevron-right"></span></a>
                    <li class="collapse" id="demo4">
                      <a href="barang" class="list-group-item"> Data Barang</a>
                      <a href="user" class="list-group-item"> Data Pegawai</a>
                      <a href="pelanggan" class="list-group-item"> Data Pelanggan</a>
                      <a href="supplier" class="list-group-item"> Data Supplier</a>
                  
                    </li>
                </li>
                <li>
                  <a href="#demo5" class="list-group-item " data-toggle="collapse"><i class="glyphicon glyphicon-folder-open"></i>Data Transaksi  <span class="glyphicon glyphicon-chevron-right"></span></a>
                    <li class="collapse" id="demo5">
                      <a href="masuk" class="list-group-item">Transaksi Barang Masuk</a>
                      <a href="keluar" class="list-group-item">Transaksi Barang Keluar</a>
                      
                    </li>
                </li>
               
                <li class="list-group-item"><a href="<?php echo base_url()?>login/logout"><i class="glyphicon glyphicon-share"></i>Logout </a></li>

                <?php 
                } elseif ($this->session->userdata('level') == 'manajer') {
                 ?>

                <li>
                  <a href="#demo4" class="list-group-item " data-toggle="collapse"><i class="glyphicon glyphicon-th-large"></i>Data Master  <span class="glyphicon glyphicon-chevron-right"></span></a>
                    <li class="collapse" id="demo4">
                    <a href="barang" class="list-group-item"> Data Barang</a>
                      <a href="user" class="list-group-item"> Data Pegawai</a>
                      <a href="pelanggan" class="list-group-item"> Data Pelanggan</a>
                      <a href="supplier" class="list-group-item"> Data Supplier</a>
                      
                    </li>
                </li>
                <li>
                  <a href="#demo5" class="list-group-item " data-toggle="collapse"><i class="glyphicon glyphicon-folder-open"></i>Data Transaksi  <span class="glyphicon glyphicon-chevron-right"></span></a>
                    <li class="collapse" id="demo5">
                    <a href="masuk" class="list-group-item">Transaksi Barang Masuk</a>
                      <a href="keluar" class="list-group-item">Transaksi Barang Keluar</a>
                      
                    </li>
                </li>
        
                <li class="list-group-item"><a href="<?php echo base_url()?>app/logout"><i class="glyphicon glyphicon-share"></i>Logout </a></li>

                <?php 
                } elseif ($this->session->userdata('level') == 'sales') {
                 ?>

                <li>
                  <a href="#demo5" class="list-group-item " data-toggle="collapse"><i class="glyphicon glyphicon-folder-open"></i>Fitur Sales  <span class="glyphicon glyphicon-chevron-right"></span></a>
                    <li class="collapse" id="demo5">
                    <a href="barang" class="list-group-item"> Data Barang</a>
                      <a href="pelanggan" class="list-group-item"> Data Pelanggan</a> 
                    </li>
                </li>
                <li class="list-group-item"><a href="<?php echo base_url()?>app/logout"><i class="glyphicon glyphicon-share"></i>Logout </a></li>
                  
                <?php 
                } elseif ($this->session->userdata('level') == 'customer') {
                 ?>

                <li>
                  <a href="#demo5" class="list-group-item " data-toggle="collapse"><i class="glyphicon glyphicon-folder-open"></i>Fitur  <span class="glyphicon glyphicon-chevron-right"></span></a>
                    <li class="collapse" id="demo5">
                    <a href="barang" class="list-group-item"> Data Barang</a>
                    </li>
                </li>
                <li class="list-group-item"><a href="<?php echo base_url()?>app/logout"><i class="glyphicon glyphicon-share"></i>Logout </a></li>

                <?php 
                } elseif ($this->session->userdata('level') == 'supplier') {
                 ?>



                <li class="list-group-item"><a href="app/pemesanan_supplier"><i class="glyphicon glyphicon-tasks"></i>Daftar Pesanan Barang </a></li>
                <li class="list-group-item"><a href="<?php echo base_url()?>app/logout"><i class="glyphicon glyphicon-share"></i>Logout </a></li>

             
                <?php 
                } elseif ($this->session->userdata('level') == 'user') {
                 ?>



                <li class="list-group-item"><a href="app/pemesanan_supplier"><i class="glyphicon glyphicon-tasks"></i>Daftar Pesanan Barang </a></li>
                <li class="list-group-item"><a href="<?php echo base_url()?>app/logout"><i class="glyphicon glyphicon-share"></i>Logout </a></li>

                <?php } ?>

              </ul>
          </div>