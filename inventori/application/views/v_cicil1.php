<head>
        <link rel="stylesheet" href="https://cdn.datatables.net/1.10.20/css/dataTables.bootstrap4.min.css" />
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
    <script src="https://cdn.datatables.net/1.10.19/js/jquery.dataTables.min.js"></script>
    <script src="https://cdn.datatables.net/1.10.19/js/dataTables.bootstrap4.min.js"></script>
    

</head> 
<style>
table.dataTable {
  margin-top:-1em !important;  
  margin-bottom:-1em !important;  
}  

div.dataTables_info {
    margin-bottom: -5em;
}
</style> 
          <div class="col-xs-12 col-sm-9 content">
            <div class="panel panel-default">
              <div class="panel-heading">
              <?php if ($this->session->userdata('level') == 'admin' or $this->session->userdata('level') == 'manajer') { ?>
                <h3 class="panel-title"><a href="javascript:void(0);" class="toggle-sidebar"><span class="fa fa-angle-double-left" data-toggle="offcanvas" title="Maximize Panel"></span></a>Data Transaksi</h3>
              </div>
              <div class="panel-body">
                <div class="content-row">
                  <h2 class="content-row-title">Transaksi Cicilan</h2>
                  <?php }else{?>
                    <h3 class="panel-title"><a href="javascript:void(0);" class="toggle-sidebar"><span class="fa fa-angle-double-left" data-toggle="offcanvas" title="Maximize Panel"></span></a>Data Transaksi</h3>
              </div>
              <div class="panel-body">
                <div class="content-row">
                  <h2 class="content-row-title">Transaksi Cicilan</h2>
                  <?php } ?>
                  <div class="row">
                  <?php if ($this->session->userdata('level') == 'admin' or $this->session->userdata('level') == 'manajer') { ?>
            <div class="card">
                <div class="col-md-6">
                <?php echo anchor(site_url('keluar/tambah'),'Tambah', 'class="btn btn-primary"'); ?>
              
                <a href="keluar" class="btn btn-info">Belum bayar</a>
                <a href="keluar2" class="btn btn-primary">Sudah bayar</a>
                <a href="cicil1/" class="btn btn-warning">Cicilan</a>
                <?php } ?>

                <?php if ($this->session->userdata('level') == 'sales' or $this->session->userdata('level') == 'customer') { ?>
            <div class="card">
                <div class="col-md-6">
                <a href="keluar" class="btn btn-info">Belum bayar</a>
                <a href="keluar2" class="btn btn-primary">Sudah bayar</a>
                <a href="cicil1/" class="btn btn-warning">Cicilan</a>
                <?php } ?>
                <?php if ( $this->session->userdata('level') == 'manajer') { ?>
                <a class ="btn btn-danger" href="cicil3"> <i class="glyphicon glyphicon-trash"></i> </a>
                <?php } ?>
                </div>
                <div class="col-md-4">
                
                </div>
                <div class="col-md-4 text-right">

                </div>
                </div>
             
                </br>
                </br></br>
                <div class="col-md-12">
		<table class="table table-bordered" style="margin-bottom: 10px" id="datatables">
    <thead>
				<tr>
					<th>No.</th>
					<th>Kode</th>
					<th>Tanggal Transaksi</th>
          <th>Nama</th>
					<th>Total</th>
					<th>Cicilan</th>
          <th>Periode</th>
          <th>Tagihan</th>
          <th>Foto</th>
					<th>Pilihan</th>
				</tr>
      </thead>
    <tbody>
      <?php 
      $no=1;
					foreach ($keluar_data as $keluar) {
                        ?>
                
				<tr>
          <td><?php echo $no++ ?></td>
					<td><?php echo $keluar->id_keluar; ?></td>
					<td><?php echo $keluar->tgl_cicil; ?></td>
          <td><?php echo $keluar->nama; ?></td>
					<td><?php echo number_format($keluar->total_keluar); ?></td>
          <td><?php echo $keluar->jumlah_cicil; ?></td>
          <td><?php echo $keluar->periode; ?></td>
          
          <td><?php echo number_format($keluar->total_keluar/$keluar->jumlah_cicil); ?></td>
          <td>
            <a data-fancybox="gallery" href="image/cicil/<?php echo $keluar->foto_cicil; ?>">
            <img src="<?php echo base_url('image/cicil/'.$keluar->foto_cicil) ?>" width="64" />
          </td> 

          <input type="hidden" name="id_keluar" value="<?php echo $keluar->id_keluar; ?>" /> 
					
					<td>
         <?php if ($this->session->userdata('level') == 'admin' or $this->session->userdata('level') == 'manajer') { ?>
          
          <a href="cicil1/hapus_penjualan/<?php echo $keluar->id_keluar ?>" class="btn btn-danger btn-sm" onclick="javasciprt: return confirm('Apa anda yakin ingin menghapus transaksi?')">hapus</a>
         <?php } ?>
         <?php if ($this->session->userdata('level') == 'sales' or $this->session->userdata('level') == 'customer') { ?>
          <button href="#" data-toggle="modal" data-target="#myModal<?php echo $keluar->id_cicil ?>" class="btn btn-warning btn-sm" >bayar</button>
         <?php } ?>
          <a href="keluar/detail_penjualan/<?php echo $keluar->id_keluar ?>" class="btn btn-info btn-sm">detail</a>
            <a href="keluar/cetak_penjualan/<?php echo $keluar->id_keluar ?>" target="_blank" class="btn btn-success btn-sm">cetak</a>
            
					</td>
				

        
        <div id="myModal<?php echo $keluar->id_cicil ?>" class="modal fade" role="dialog">
  <div class="modal-dialog">
  <form method="POST"  enctype="multipart/form-data" action="cicil1/simpancicil">
	  <div class="modal-content">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal">&times;</button>
        <h4 class="modal-title">Pilih metode pembayaran</h4>
      </div>
    <!-- Modal content-->
	<div class="modal-body">

  <input type="hidden" class="form-control" name="id_keluar" value="<?php echo $keluar->id_keluar; ?>"/>
  <input type="hidden" class="form-control" name="cicil" value="<?php echo $keluar->jumlah_cicil; ?>"/>

    <div class="form-group" id="form-transfer">
            <label >Periode</label><br>
           
            <input name="periode" class="form-control" readonly value="<?php echo $keluar->periode+1; ?>"></input>
     </div>

    <div class="form-group" id="form-transfer">
            <label >Jumlah Transfer</label><br>
           
            <input name="tahun" class="form-control" readonly value="Rp. <?php echo number_format($keluar->total_keluar/$keluar->jumlah_cicil); ?>"></input>
     </div>


   
     <div class="form-group" id="form-tahun">
            <label >Silahkan melakukan transfer ke nomor rekening berikut</label><br>
           
				<input name="tahun" class="form-control" readonly value="110293846328882191"></input>
			

    </div>
    <div class="form-group" id="form-bulan">
            <label for="file"> Masukkan bukti transfer </label>
            <input type="file" class="form-control" name="foto_cicil" />
        </div>
	
        <div class="modal-footer">
	
      	<button class="btn btn-info" type="submit">Simpan</button>
        <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
      </div>
        
            </form>
	
</div>
</div>
				<?php } ?>
        
      </tbody>
				</table>

        </tr>


    <div class="row">
            <div class="col-md-10">
            <a href="dashboard" class="btn btn-primary">Total Record : <?php echo $total_rows ?></a>
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
<script type="text/javascript">
    $(document).ready( function () 
    {
      $('#datatables').DataTable({
                "lengthMenu": [[5, 10, 25, 50, -1], [5, 10, 25, 50, "All"]],
                responsive: true
                });
      
    } );
    </script> 