
<div class="col-xs-12 col-sm-9 content">

            <div class="panel panel-default">
              <div class="panel-heading">
                <h3 class="panel-title"><a href="javascript:void(0);" class="toggle-sidebar"><span class="fa fa-angle-double-left" data-toggle="offcanvas" title="Maximize Panel"></span></a>Data User</h3>
              </div>
              <div class="panel-body">
                <div class="content-row">
                  <h2 class="content-row-title">Data Pegawai</h2>

                  <div class="row" style="margin-bottom: 10px">

                  <div class="card">
                  <div class="col-md-4">
                <?php echo anchor(site_url('user/create'),'Tambah', 'class="btn btn-primary"'); ?>
                </div>
                <div class="col-md-5">
                </div>
                <div class="col-md-3 text-right">
                <form action="<?php echo site_url('user/index'); ?>" class="form-inline" method="get">
                    <div class="input-group">
                        <input type="text" class="form-control" name="q" value="<?php echo $q; ?>">
                        <span class="input-group-btn">
                            <?php 
                                if ($q <> '')
                                {
                                    ?>
                                    <a href="<?php echo site_url('user'); ?>" class="btn btn-default">Reset</a>
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
        <th>Email</th>
        <th>Username</th>
        
        <th>Level</th>
        <th>Nama User</th>
        <th>Tanggal Lahir</th>
        <th>Jenis Kelamin</th>
        <th>Alamat</th>
        <th>No Telepon</th> 
        <th>Foto</th>
        <th>Action</th>
        </tr>
            <?php 
					foreach ($user_data as $user) {
                        ?>
					 
                <tr>
            <td width="80px"><?php echo ++$per_page ?></td>
            <td><?php echo $user->email ?></td>
            <td><?php echo $user->username ?></td>
            
            <td><?php echo $user->level ?></td>
            <td><?php echo $user->nama ?></td>
            <td><?php echo $user->tgl_lahir ?></td>
            <td><?php echo $user->jenis_kelamin ?></td>
            <td><?php echo $user->alamat ?></td>
            <td><?php echo $user->no_telp ?></td>
            <td><img src="<?php echo base_url('image/user/'.$user->foto) ?>" width="64" /></td> <!-- menampilkan gambar  -->
            <td style="text-align:center" width="200px">
                <?php 
                
                echo anchor(site_url('user/update/'.$user->id_user),'Ubah', 'class="btn btn-info btn-sm"'); 
                echo '  '; 
                echo anchor(site_url('user/delete/'.$user->id_user),'Hapus','class="btn btn-danger btn-sm"','onclick="javasciprt: return confirm(\'Apa Anda Yakin?\')"'); 
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
                <?php echo $pagination; ?>
            </div>
        </div>

                    </div>
                  </div>
                </div>
              </div>
            </div>
        </div>
  
