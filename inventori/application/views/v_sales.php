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
                <h3 class="panel-title"><a href="javascript:void(0);" class="toggle-sidebar"><span class="fa fa-angle-double-left" data-toggle="offcanvas" title="Maximize Panel"></span></a>Data Pegawai</h3>
              </div>
              <div class="panel-body">
                <div class="content-row">
                  <h2 class="content-row-title">Data Sales</h2>

                  <div class="row" style="margin-bottom: 10px">

                  <div class="card">
                  <div class="col-md-4">
                <?php echo anchor(site_url('sales/create'),'Tambah', 'class="btn btn-primary"'); ?>
            
                </div>
                <div class="col-md-4">
                </div>
                <div class="col-md-4 text-right">
                <?php if ( $this->session->userdata('level') == 'manajer') { ?>
                <a class ="btn btn-danger" href="sales1"> <i class="glyphicon glyphicon-trash"></i> </a>
                <?php } ?>
                </div>
                </div>
                </br>
                </br></br>
                    <div class="col-md-12">
                    <table class="table table-bordered" style="margin-bottom: 10px" id="datatables">
        <thead>
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
        </thead>
        <tbody>
            <?php 
            $no=1;
					foreach ($user_data as $user) {
                        ?>
					 
                <tr>
            <td width="80px"><?php echo $no++?></td>
            <td><?php echo $user->email ?></td>
            <td><?php echo $user->username ?></td>
            
            <td><?php echo $user->level ?></td>
            <td><?php echo $user->nama ?></td>
            <td><?php echo $user->tgl_lahir ?></td>
            <td><?php echo $user->jenis_kelamin ?></td>
            <td><?php echo $user->alamat ?></td>
            <td><?php echo $user->no_telp ?></td>
            <td>
            <a data-fancybox="gallery" href="image/user/<?php echo $user->foto; ?>">
            <img src="<?php echo base_url('image/user/'.$user->foto) ?>" width="64" />
            </td> 
            <!-- menampilkan gambar  -->
            <td style="text-align:center" width="200px">
                <?php 
                
                echo anchor(site_url('sales/update/'.$user->id_user),'Ubah', 'class="btn btn-info btn-sm"'); 
                echo '  '; 
                echo anchor(site_url('sales/delete/'.$user->id_user),'Hapus', 'class="btn btn-danger btn-sm", onclick="javasciprt: return confirm(\'Apa Anda Yakin?\')"'); 
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
                <a href="sales/cetak_pdf" class="btn btn-info">Cetak Data Sales</a>
        </div>
            
        </div>

                    </div>
                  </div>
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
