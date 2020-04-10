
          <div class="col-xs-12 col-sm-9 content">
            <div class="panel panel-default">
              <div class="panel-heading">
                <h3 class="panel-title"><a href="javascript:void(0);" class="toggle-sidebar"><span class="fa fa-angle-double-left" data-toggle="offcanvas" title="Maximize Panel"></span></a>Transaksi Barang Masuk</h3>
              </div>
              <div class="panel-body">
                <div class="content-row">
                  <h2 class="content-row-title">Transaksi Barang Masuk</h2>
<div class="row">
                <div class="col-md-4">
                <?php echo anchor(site_url('masuk/tambah'),'Tambah', 'class="btn btn-primary"'); ?>
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
					<th>Nama Supplier</th>
					<th>Pilihan</th>
				</tr>
			</thead>
			<tbody>
				<?php 
				$id = $this->session->userdata('id_user');
				$sql = $this->db->query("SELECT * from masuk inner join detail_masuk on masuk.id_masuk=detail_masuk.id_masuk inner join supplier on masuk.id_supplier=supplier.id_supplier group by masuk.id_masuk order by masuk.id_masuk");
				$no = 1;
				foreach ($sql->result() as $row) {
				 ?>
				<tr>
					<td><?php echo $no++; ?></td>
					<td><?php echo $row->id_masuk; ?></td>
					
					<td><?php echo $row->tgl_masuk; ?></td>
					<td><?php echo number_format($row->total_masuk); ?></td>
					<td><?php echo $row->nama_supplier; ?></td>
					<td>
						<a href="masuk/detail_penjualan/<?php echo $row->id_masuk ?>" class="btn btn-info btn-sm">detail</a>
						<a href="masuk/hapus_penjualan/<?php echo $row->id_masuk ?>" class="btn btn-danger btn-sm" onclick="javasciprt: return confirm('Are You Sure ?')">hapus</a>
						<a href="masuk/cetak_penjualan/<?php echo $row->id_masuk ?>" target="_blank" class="btn btn-success btn-sm">cetak</a>
					</td>
				</tr>
				<?php } ?>
			</tbody>
		</table>
		</table>
<div class="row">
<div class="col-md-6">
    
    <a href="masuk/cetak_pdf" class="btn btn-info">Cetak Data Barang Masuk</a>
</div>
<div class="col-md-6 text-right">
</div>
</div>
	</div>
</div>