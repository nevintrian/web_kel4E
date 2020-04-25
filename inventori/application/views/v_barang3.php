          <div class="col-xs-12 col-sm-9 content">
            <div class="panel panel-default">
              <div class="panel-heading">
                <h3 class="panel-title"><a href="javascript:void(0);" class="toggle-sidebar"><span class="fa fa-angle-double-left" data-toggle="offcanvas" title="Maximize Panel"></span></a>Data Barang</h3>
              </div>
              <div class="panel-body">
                <div class="content-row">
                  <h2 class="content-row-title">Data Barang Terhapus</h2>
                  <div class="row">

                <div class="card">
                  <div class="col-md-4">
                
                </div>
                <div class="col-md-4">
                </div>
                <div class="col-md-4 text-right">
                <form action="<?php echo site_url('barang1/index'); ?>" class="form-inline" method="get">
                    <div class="input-group">
                        <input type="text" class="form-control" placeholder="cari nama barang" name="q" value="<?php echo $q; ?>">
                        <span class="input-group-btn">
                            <?php 
                                if ($q <> '')
                                {
                                    ?>
                                    <a href="<?php echo site_url('barang1'); ?>" class="btn btn-default">Reset</a>
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
                    <table class="table table-bordered" style="margin-bottom: 10px">
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
        <?php 
					foreach ($barang_data1 as $barang1) {
                        ?>
                <tr>
            <td width="80px"><?php echo ++$per_page ?></td>
            <td><?php echo $barang1->nama_barang ?></td>
            <td><?php echo $barang1->jenis ?></td>
            <td><?php echo $barang1->kemasan ?></td>
            <td><?php echo $barang1->merk ?></td>
            <td><?php echo $barang1->stok ?></td>
            <td><?php echo $barang1->harga ?></td>
            <td><?php echo $barang1->nama_supplier ?></td>
            <td><?php echo $barang1->terjual ?></td>
            <td><img src="<?php echo base_url('image/barang/'.$barang1->foto_barang) ?>" width="64" /></td> <!-- menampilkan gambar  -->
            <td style="text-align:center" width="200px">
                <?php 
               
               echo '  '; 
               echo anchor(site_url('barang1/delete/'.$barang1->id_barang),'Hapus', 'class="btn btn-danger btn-sm", onclick="javasciprt: return confirm(\'Apa Anda Yakin?\')"'); 
                ?>
            </td>
        </tr>
                <?php
            }
            ?>
        </table>
        <div class="row">
            <div class="col-md-6">
                <a href="dashboard" class="btn btn-primary">Total Record : <?php echo $total_rows ?></a>
                
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
