<div class="col-xs-12 col-sm-9 content">
            <div class="panel panel-default">
              <div class="panel-heading">
                <h3 class="panel-title"><a href="javascript:void(0);" class="toggle-sidebar"><span class="fa fa-angle-double-left" data-toggle="offcanvas" title="Maximize Panel"></span></a>Edit gambar</h3>
              </div>
              <div class="panel-body">
                <div class="content-row">
                  <h2 class="content-row-title">Edit Gambar</h2>
                  <div class="row">

                <div class="card">
                  <div class="col-md-4">
                <?php echo anchor(site_url('carousel/create'),'Tambah', 'class="btn btn-primary"'); ?>
                <?php if ( $this->session->userdata('level') == 'manajer') { ?>
                
                <?php } ?>
                </div>
                <div class="col-md-4">
               
                </div>
                <div class="col-md-4 text-right">
               <!-- search -->
                </div>
                </div>

                    <div class="col-md-12">
                    <table class="table table-bordered" style="margin-bottom: 10px">
        <tr>
        <th>No</th>
        <th>Judul</th>
        <th>Isi</th>
        <th>Foto</th>
        <th>Action</th>
        </tr>
        <?php 
					foreach ($carousel_data as $carousel) {
                        ?>
                <tr>
            <td width="80px"><?php echo ++$per_page ?></td>
            <td><?php echo $carousel->judul ?></td>
            <td><?php echo $carousel->isi ?></td>
            <td><img src="<?php echo base_url('image/barang/'.$carousel->foto) ?>" width="64" /></td> <!-- menampilkan gambar  -->
            <td style="text-align:center" width="200px">
                <?php 
               echo anchor(site_url('carousel/update/'.$carousel->id),'Ubah', 'class="btn btn-info btn-sm"'); 
               echo '  '; 
               echo anchor(site_url('carousel/delete/'.$carousel->id),'Hapus', 'class="btn btn-danger btn-sm", onclick="javasciprt: return confirm(\'Apa Anda Yakin?\')"'); 
                ?>
            </td>
        </tr>
                <?php
            }
            ?>
        </table>
        <div class="row">
            <div class="col-md-6">
              
                
        </div>
            <div class="col-md-6 text-right">
               
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
