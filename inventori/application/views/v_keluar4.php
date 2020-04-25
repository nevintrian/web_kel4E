
       <script type="text/javascript" src="assets/dist/js/site.min.js"></script>
    <script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>

       <div class="col-xs-12 col-sm-9 content">
            <div class="panel panel-default">
              <div class="panel-heading">
              <?php if ($this->session->userdata('level') == 'admin' or $this->session->userdata('level') == 'manajer') { ?>
                <h3 class="panel-title"><a href="javascript:void(0);" class="toggle-sidebar"><span class="fa fa-angle-double-left" data-toggle="offcanvas" title="Maximize Panel"></span></a>Data Barang Keluar</h3>
              </div>
              <div class="panel-body">
                <div class="content-row">
                  <h2 class="content-row-title">Data Barang Keluar</h2>
                  <?php }else{?>
                    <h3 class="panel-title"><a href="javascript:void(0);" class="toggle-sidebar"><span class="fa fa-angle-double-left" data-toggle="offcanvas" title="Maximize Panel"></span></a>Transaksi Telah Dikonfirmasi</h3>
              </div>
              <div class="panel-body">
                <div class="content-row">
                  <h2 class="content-row-title">Transaksi Telah di Konfirmasi</h2>
                  <?php } ?>
                  <div class="row">
                  <?php if ($this->session->userdata('level') == 'admin' or $this->session->userdata('level') == 'manajer') { ?>
            <div class="card">
                <div class="col-md-4">
               
          
                </div>
                <div class="col-md-4">
                </div>
                <div class="col-md-4 text-right">
                <form action="<?php echo site_url('keluar/index'); ?>" class="form-inline" method="get">
                    <div class="input-group">
                        <input type="text" class="form-control" name="q" placeholder="cari nama pelanggan" value="<?php echo $q; ?>">
                        <span class="input-group-btn">
                            <?php 
                                if ($q <> '')
                                {
                                    ?>
                                    <a href="<?php echo site_url('keluar'); ?>" class="btn btn-default">Reset</a>
                                    <?php
                                }
                            ?>
                          <button class="btn btn-primary" type="submit">Search</button>
                        </span>
                    </div>
                </form>     
                </div>
                </div>
                <?php } ?>
                <div class="col-md-12">
		<table class="table table-bordered" style="margin-bottom: 10px" id="example">

				<tr>
					<th>No.</th>
					<th>Kode Transaksi</th>
					<th>Tanggal Transaksi</th>
					<th>Total Bayar</th>
					<th>Nama Pelanggan</th>
          <th>Alamat</th>
          <th>No Telepon</th>
					<th>Pilihan</th>
				</tr>


      <?php 
					foreach ($keluar_data as $keluar) {
                        ?>
                <tr>
				<tr>
          <td width="80px"><?php echo ++$per_page ?></td>
					<td><?php echo $keluar->id_keluar; ?></td>
					<td><?php echo $keluar->tgl_keluar; ?></td>
					<td><?php echo number_format($keluar->total_keluar); ?></td>
					<td><?php echo $keluar->nama; ?></td>
          <td><?php echo $keluar->alamat; ?></td>
          <td><?php echo $keluar->no_telp; ?></td>
					
					<td>
						
          <a href="keluar1/restore/<?php echo $keluar->id_keluar ?>" class="btn btn-warning btn-sm" onclick="javasciprt: return confirm('Apa anda yakin ingin merestore data?')">restore</a>
           
            <a href="keluar1/hapus_penjualan/<?php echo $keluar->id_keluar ?>" class="btn btn-danger btn-sm" onclick="javasciprt: return confirm('Apa anda yakin ingin menghapus data?')">hapus</a>
                     
            
             
                               
          </td>
         

  

        </tr>

			  <?php } ?>    	
				</table>







        <div class="row">
            <div class="col-md-10">
            <a href="dashboard" class="btn btn-primary btn-sm">Total Record : <?php echo $total_rows ?></a>
    
    
        </div>
            <div class="col-md-2 text-right">
                <?php echo $pagination ?>
            </div>
        </div>






</div>
    

                    </div>
    


  </div>
</div>
</div>
</div>
</div>
</div>
</div>

<div class="col-md-6 text-right">
</div>
</div>
	</div>
</div>

