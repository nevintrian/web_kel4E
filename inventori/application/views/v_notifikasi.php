<!DOCTYPE html>
<html lang="en">
	<head>
	<link rel="stylesheet" href="assets/dist/css/site.min.css">
    <script type="text/javascript" src="assets/dist/js/site.min.js"></script>
	</head>


	<body>

    <!-- Contact -->
    <div class="col-xs-12 col-sm-12 content">
      <div class="panel panel-default">
        <div class="panel-body">
        <div align="center" > <h3>Notifikasi</h3> </div>
</br>
    <section class="section-wrap contact">
      <div class="container">
        <div class="row">
          <div class="col-md-4 mb-40 mt-mdm-40 contact-info">

          <div class="col-md-12">
            </div>
               <div class="col-md-12">
                  <table class="table table-bordered">

              
				<tr>
					<th>No.</th>
					<th>Nama</th>
					<th>Tanggal Transaksi</th>
					<th>Pilihan</th>
				</tr>

      




<?php 
				$id = $this->session->userdata('id_user');
				$sql = $this->db->query("select distinct keluar.id_keluar, keluar.tgl_keluar, keluar.total_keluar, user.nama, user.alamat, user.no_telp from keluar inner join detail_keluar on detail_keluar.id_keluar=keluar.id_keluar inner join user on user.id_user=keluar.id_user where detail_keluar.status='0'");
				$no = 1;
				foreach ($sql->result() as $row) {
				 ?>
				<tr>
					<td><?php echo $no++; ?></td>
					<td><?php echo $row->nama; ?></td>
					
					<td><?php echo $row->tgl_keluar; ?></td>


				</tr>
				<?php } ?>

            

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
	</body>
</html>
</section>