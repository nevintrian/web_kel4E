
          
          <div class="col-xs-12 col-sm-9 content">
            <div class="panel panel-default">
              <div class="panel-heading">
                <h3 class="panel-title"><a href="javascript:void(0);" class="toggle-sidebar"><span class="fa fa-angle-double-left" data-toggle="offcanvas" title="Maximize Panel"></span></a>Data Barang</h3>
              </div>
              <div class="panel-body">
                <div class="content-row">
                  <h2 class="content-row-title">Data Barang</h2>
                  <div class="row">

                <div class="card">
                  <div class="col-md-4">
                <?php echo anchor(site_url('barang/create'),'Tambah', 'class="btn btn-primary"'); ?>
                <?php if ( $this->session->userdata('level') == 'manajer') { ?>
                <a class ="btn btn-danger" href="barang1"> <i class="glyphicon glyphicon-trash"></i> </a>
                <?php } ?>
              </div>
                <div class="col-md-4">
               
                </div>
                <div class="col-md-4 text-right">
               
                </div>
                </div>

              <div class="col-md-12">
                    <table class="table table-bordered" style="margin-bottom: 10px" id="datatables">
        <thead>
        <tr>
        <th>No</th>
        <th>Nama Barang</th>
        <th>Jenis</th>
        <th>Kemasan</th>
        <th>Merk</th>
        <th>Stok</th>
        <th>Harga</th>
        <th>Nama Supplier</th>
        <th>Terjual</th>
        <th>Foto Barang</th>
        <th>Action</th>
        </tr>
        </thead>
      <tbody>
        <?php 
					foreach ($barang_data as $barang) {
                        ?>
                <tr>
            <td width="80px"><?php echo ++$per_page ?></td>
            <td><?php echo $barang->nama_barang ?></td>
            <td><?php echo $barang->jenis ?></td>
            <td><?php echo $barang->kemasan ?></td>
            <td><?php echo $barang->merk ?></td>
            <td><?php echo $barang->stok ?></td>
            <td><?php echo $barang->harga ?></td>
            <td><?php echo $barang->nama_supplier ?></td>
            <td><?php echo $barang->terjual ?></td>
            <td><img src="<?php echo base_url('image/barang/'.$barang->foto_barang) ?>" width="64" /></td> <!-- menampilkan gambar  -->
            <td style="text-align:center" width="200px">
                <?php 
               echo anchor(site_url('barang/update/'.$barang->id_barang),'Ubah', 'class="btn btn-info btn-sm"'); 
               echo '  '; 
               echo anchor(site_url('barang/delete/'.$barang->id_barang),'Hapus', 'class="btn btn-danger btn-sm", onclick="javasciprt: return confirm(\'Apa Anda Yakin?\')"'); 
                ?>
            </td>
        </tr>
                <?php
            }
            ?>
      </tbody>
        </table>
        <div class="row">
            <div class="col-md-6">
                <a href="dashboard" class="btn btn-primary">Total Record : <?php echo $total_rows ?></a>
                <a href="barang/cetak_pdf" class="btn btn-info">Cetak Data Barang</a>
        </div>
            <div class="col-md-6 text-right">
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
    