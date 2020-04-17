
          <div class="col-xs-12 col-sm-9 content">
            <div class="panel panel-default">
              <div class="panel-heading">
                <h3 class="panel-title"><a href="javascript:void(0);" class="toggle-sidebar"><span class="fa fa-angle-double-left" data-toggle="offcanvas" title="Maximize Panel"></span></a>Konfirmasi Pembayaran</h3>
              </div>
              <div class="panel-body">
                <div class="content-row">
                  <h2 class="content-row-title">Konfirmasi Pembayaran</h2>
                  <div class="row">
            <div class="card">
                <div class="col-md-4">
                
                </div>
                <div class="col-md-4">
                </div>
                <div class="col-md-4 text-right">
                <form action="<?php echo site_url('konfirmasi/index'); ?>" class="form-inline" method="get">
                    <div class="input-group">
                        <input type="text" class="form-control" name="q" placeholder="cari nama pelanggan" value="<?php echo $q; ?>">
                        <span class="input-group-btn">
                            <?php 
                                if ($q <> '')
                                {
                                    ?>
                                    <a href="<?php echo site_url('konfirmasi'); ?>" class="btn btn-default">Reset</a>
                                    <?php
                                }
                            ?>
                          <button class="btn btn-primary" type="submit">Search</button>
                        </span>
                    </div>
                </form>     
                </div>
                </div>
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
          <a href="#" class="btn btn-warning btn-sm">Konfirmasi</a>
          <a href="keluar/detail_penjualan/<?php echo $keluar->id_keluar ?>" class="btn btn-info btn-sm">detail</a>
            <a href="keluar/cetak_penjualan/<?php echo $keluar->id_keluar ?>" target="_blank" class="btn btn-success btn-sm">cetak</a>
            <a href="konfirmasi/hapus_penjualan/<?php echo $keluar->id_keluar ?>" class="btn btn-danger btn-sm" onclick="javasciprt: return confirm('Are You Sure ?')">hapus</a>
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





<div id="myModal" class="modal fade" role="dialog">
  <div class="modal-dialog">
  <form method="GET" action="keluar/cetak_pdf4">
	  <div class="modal-content">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal">&times;</button>
        <h4 class="modal-title">Cetak Data Custom</h4>
      </div>
    <!-- Modal content-->
	<div class="modal-body">
	<div class="form-group">
        <label>Filter Berdasarkan</label><br>
        <select name="filter" id="filter" class="form-control">
            <option value="">--Pilih filter--</option>
            <option value="1">Per Tanggal</option>
            <option value="2">Per Bulan</option>
            <option value="3">Per Tahun</option>
        </select>
		</div>
        <div class="form-group" id="form-tanggal">
            <label>Tanggal</label><br>
            <input type="date"  dateFormat: 'yyyy-mm-dd' name="tanggal" class="form-control" />
        </div>
        <div class="form-group" id="form-bulan">
            <label>Bulan</label><br>
            <select name="bulan" class="form-control">
                <option value="">--Pilih Bulan--</option>
                <option value="1">Januari</option>
                <option value="2">Februari</option>
                <option value="3">Maret</option>
                <option value="4">April</option>
                <option value="5">Mei</option>
                <option value="6">Juni</option>
                <option value="7">Juli</option>
                <option value="8">Agustus</option>
                <option value="9">September</option>
                <option value="10">Oktober</option>
                <option value="11">November</option>
                <option value="12">Desember</option>
            </select>

        </div>
        <div class="form-group" id="form-tahun">
            <label>Tahun</label><br>
            <select name="tahun" class="form-control">
				<option value="">--Pilih Tahun--</option>
				<option value="2020">2020</option>
                <option value="2021">2021</option>
                <option value="2022">2022</option>
                <option value="2023">2023</option>
                <option value="2024">2024</option>
                <?php
                foreach($option_tahun as $data){ // Ambil data tahun dari model yang dikirim dari controller
                    echo '<option value="'.$data->tahun.'">'.$data->tahun.'</option>';
                }
                ?>
            </select>
		</div>
		</div>
        <div class="modal-footer">
	
      	<button class="btn btn-info" type="submit">Simpan</button>
        <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
      </div>
        
    </form>
	
</div>
</div>
</div>
    

                    </div>
    <script src="<?php echo base_url('assets/jquery-ui/jquery-ui.min.js'); ?>"></script> <!-- Load file plugin js jquery-ui -->
    <script>
    $(document).ready(function(){ // Ketika halaman selesai di load

        $('#form-tanggal, #form-bulan, #form-tahun').hide(); // Sebagai default kita sembunyikan form filter tanggal, bulan & tahunnya
        $('#filter').change(function(){ // Ketika user memilih filter
            if($(this).val() == '1'){ // Jika filter nya 1 (per tanggal)
                $('#form-bulan, #form-tahun').hide(); // Sembunyikan form bulan dan tahun
                $('#form-tanggal').show(); // Tampilkan form tanggal
            }else if($(this).val() == '2'){ // Jika filter nya 2 (per bulan)
                $('#form-tanggal').hide(); // Sembunyikan form tanggal
                $('#form-bulan, #form-tahun').show(); // Tampilkan form bulan dan tahun
            }else{ // Jika filternya 3 (per tahun)
                $('#form-tanggal, #form-bulan').hide(); // Sembunyikan form tanggal dan bulan
                $('#form-tahun').show(); // Tampilkan form tahun
            }
            $('#form-tanggal input, #form-bulan select, #form-tahun select').val(''); // Clear data pada textbox tanggal, combobox bulan & tahun
        })
    })
    </script>
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