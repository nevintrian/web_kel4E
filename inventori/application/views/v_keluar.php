
          <div class="col-xs-12 col-sm-9 content">
            <div class="panel panel-default">
              <div class="panel-heading">
                <h3 class="panel-title"><a href="javascript:void(0);" class="toggle-sidebar"><span class="fa fa-angle-double-left" data-toggle="offcanvas" title="Maximize Panel"></span></a>Transaksi Barang Masuk</h3>
              </div>
              <div class="panel-body">
                <div class="content-row">
                  <h2 class="content-row-title">Transaksi Barang Keluar</h2>
<div class="row">
                <div class="col-md-4">
                <?php echo anchor(site_url('keluar/tambah'),'Tambah', 'class="btn btn-primary"'); ?>
                </div>
	<div class="col-md-4"></div>
	<div class="col-md-4"></div><br><br><br>
	<div class="col-md-12">
		<table class="table table-bordered" style="margin-bottom: 10px" id="example">
			<thead>
				<tr>
					<th>No.</th>
					<th>Kode Transaksi</th>
					<th>Tanggal Transaksi</th>
					<th>Total Bayar</th>
					<th>Nama Pelanggan</th>
					<th>Pilihan</th>
				</tr>
			</thead>
			<tbody>
				<?php 
				$id = $this->session->userdata('id_user');
				$sql = $this->db->query("SELECT * from transaksi inner join detail_transaksi on transaksi.id_transaksi=detail_transaksi.id_transaksi where detail_transaksi.status='keluar' group by transaksi.id_transaksi order by transaksi.id_transaksi");
				$no = 1;
				foreach ($sql->result() as $row) {
				 ?>
				<tr>
					<td><?php echo $no++; ?></td>
					<td><?php echo $row->id_transaksi; ?></td>
					
					<td><?php echo $row->tgl_transaksi; ?></td>
					<td><?php echo number_format($row->total_harga); ?></td>
					<td><?php echo $row->nama_pelanggan; ?></td>
					<td>
						<a href="keluar/detail_penjualan/<?php echo $row->id_transaksi ?>" class="btn btn-info btn-sm">detail</a>
						<a href="keluar/hapus_penjualan/<?php echo $row->id_transaksi ?>" class="btn btn-danger btn-sm" onclick="javasciprt: return confirm('Are You Sure ?')">hapus</a>
						<a href="keluar/cetak_penjualan/<?php echo $row->id_transaksi ?>" target="_blank" class="btn btn-success btn-sm">cetak</a>
					</td>
				</tr>
				<?php } ?>
			</tbody>
		</table>
	</div>
</div>